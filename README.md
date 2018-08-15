# python_bootstrap

The best way to kill a snake is to stomp it with your boot.

![](http://www.pngall.com/wp-content/uploads/2016/05/Python-Logo-Free-Download-PNG.png) ![](https://i.imgur.com/7WWopxB.png)

## Install
To install python and have it configured with pip, virtualenv, simply run the following

Clone this repo
```sh
git clone https://github.com/tchoedak/python_bootstrap.git
```

If git isn't available in your machine, use wget and download the zip
```sh
wget https://github.com/tchoedak/python_bootstrap/archive/master.zip
unzip master.zip
```

Install
```sh
cd python_bootstrap
./install
```

## Usage

First load the environment
```sh
cd python_bootstrap
source .env
```

Create a new virtualenv called bobbys_playground
```sh
virtualenv bobbys_playground
source bobbys_playground/bin/activate
```

Install a package within that virtual environment
```sh
pip install paramiko
```

## Maintenance

Delete the local installation of python and any files in the tmp directory
```sh
./cleanup
```

