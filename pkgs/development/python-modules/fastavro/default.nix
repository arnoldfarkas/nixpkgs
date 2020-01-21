{ 
  lib,
  buildPythonPackage,
  fetchPypi,
  check-manifest,
  coverage,
  codecov,
  cython,
  flake8,
  numpy,
  pytest,
  pytestcov,
  twine,
  wheel,
}:

buildPythonPackage rec {
  pname = "fastavro";
  version = "0.22.9";
  
  src = fetchPypi {
    inherit pname version;
    sha256 = "fc3a97187d51aea9ad5ebb02bcb7a579a62da6310788ed82fb1e22abcd0ec33b";
  };
  
  checkInputs = [ 
    pytestcov
    pytest
    flake8
    check-manifest
    cython
    numpy
    wheel
    twine
    coverage
    codecov
  ];
    
  meta = with lib; {
    description = "Fast read/write of AVRO files";
    homepage = "https://github.com/fastavro/fastavro";
    license = licenses.mit;

    maintainers = [ maintainers.afarkas ];
  };
}
