#!/usr/bin/bash
#
# Python application development environment
# author: v3rlly


workdir="$HOME/work" # workdir
v="3.9.1"        # download version
c=$(nproc)       # processor cores number

# install dependencies
sudo apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev

# download and extract
cd $workdir
wget "https://www.python.org/ftp/python/$v/Python-$v.tgz" && tar -xf "Python-$v.tgz" && cd "Python-$v"

# configure
./configure --enable-optimizations
# make
make -j "$c"
# install
sudo make altinstall

# clean files
cd $workdir
rm "Python-$v.tgz"
rm -rf "Python-$v"

# python3.9 --help


#################################
# Configure Python3 Environment
#################################

# set: python3 --> python3.9
sudo update-alternatives --install /usr/bin/python3 python3 /usr/local/bin/python3.9 1

# install pip for python2.7
sudo apt-get install -y python2-pip


# install pip3 for python3.9
sudo ln -s /usr/share/pyshared/lsb_release.py /usr/local/lib/python3.9/site-packages/lsb_release.py # solve bug: https://github.com/pypa/pip/issues/4924#issue-282457097
python3 -m pip install --upgrade pip setuptools wheel
pip install --upgrade pip setuptools wheel


# python --version  --> python2.7
# python3 --version --> python3.9
# pip --version     --> /usr/lib/python2.7/dist-packages/pip
# pip3 --version    --> /usr/local/lib/python3.9/site-packages/pip


# refs:
# - https://exitcode0.net/debian-10-how-to-upgrade-python-3-7-to-python-3-9/
# - 
