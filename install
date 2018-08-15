#/bin/sh
export ROOT_DIR=$PWD
export VERSION=2.7.15
export PYTHON_VERSION=Python-$VERSION # do not change this
export PYTHON_INSTALL_DIR=$ROOT_DIR/resources/$PYTHON_VERSION
export TEMP_DIR=$ROOT_DIR/resources/tmp

# download python
wget -N \
     --no-check-certificate\
     -O $PYTHON_INSTALL_DIR.tgz\
     https://www.python.org/ftp/python/$VERSION/$PYTHON_VERSION.tgz

mkdir -p $TEMP_DIR
tar -xzf $PYTHON_INSTALL_DIR.tgz -C $TEMP_DIR
mv $TEMP_DIR/$PYTHON_VERSION $PYTHON_INSTALL_DIR
# install python
cd $PYTHON_INSTALL_DIR \
	&& ./configure --prefix=$PYTHON_INSTALL_DIR --enable-shared \
	&& make install
export PATH=$PYTHON_INSTALL_DIR/bin/:$PATH

# install pip
python $ROOT_DIR/resources/get-pip.py
pip install virtualenv

# create a virtual environment
virtualenv resources/tmp/test_env
source resources/tmp/test_env/bin/activate
pip install paramiko
python
