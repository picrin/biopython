#!/bin/sh
set -xe
unset PYTHONPATH

python2 Tests/run_tests.py test_Affy test_CelFile Bio.Affy Bio.Affy.CelFile
python3 Tests/run_tests.py test_Affy test_CelFile Bio.Affy Bio.Affy.CelFile
pypy Tests/run_tests.py test_Affy test_CelFile Bio.Affy Bio.Affy.CelFile

pep8 --max-line-length 92 BioSQL/
pep8 --ignore E402 --max-line-length 90 Scripts/
pep8 --max-line-length 90 Doc/examples/
pep8 --ignore E122,E123,E126,E127,E128,E129,E501,E731 Bio/
pep8 --ignore E122,E123,E126,E127,E128,E241,E402,E501,E731 Tests/
