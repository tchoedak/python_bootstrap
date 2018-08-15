#/bin/sh
export ROOT_DIR=$PWD
export VERSION=2.7.15
export PYTHON_VERSION=Python-$VERSION # do not change this
export PYTHON_INSTALL_DIR=$ROOT_DIR/resources/$PYTHON_VERSION
export TEMP_DIR=$ROOT_DIR/resources/tmp
wget -N \
     --no-check-certificate\
     -O $PYTHON_INSTALL_DIR.tgz\
     https://www.python.org/ftp/python/$VERSION/$PYTHON_VERSION.tgz

mkdir -p $TEMP_DIR
tar -xzf $PYTHON_INSTALL_DIR.tgz -C $TEMP_DIR
mv $TEMP_DIR/$PYTHON_VERSION $PYTHON_INSTALL_DIR
$PYTHON_INSTALL_DIR/configure
$PYTHON_INSTALL_DIR/make install
exit 0
export PYTHONPATH=$PYTHON_INSTALL_DIR/bin/
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
pip install virtualenv

## create a virtualenv
virtualenv playground
source playground/bin/activate

## install paramiko in your venv
pip install paramiko

