#/usr/bin/sh
export PYTHON_VERSION=Python-2.7.15
export PYTHON_INSTALL_DIR=resources/$PYTHON_VERSION
wget \
	--no-check-certificate\
	-O $PYTHON_INSTALL_DIR\
	https://www.python.org/ftp/python/$PYTHON_VERSION/$PYTHON_VERSION.tgz
cd resources && tar -zxvf $PYTHON_VERSION.tgz
cd $PYTHON_VERSION && ./configure && ./make
export PYTHONPATH=$PYTHON_INSTALL_DIR
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
pip install virtualenv

## create a virtualenv
virtualenv playground
source playground/bin/activate

## install paramiko in your venv
pip install paramiko

