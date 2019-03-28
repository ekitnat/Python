## This is to install Python 3.8 version from source code, and install it on CentOS ##

yum groupinstall -y "development tools"
yum install -y \
  libffi-devel \
  zlib-devel \
  bzip2-devel \
  openssl-devel \
  ncurses-devel \
  sqlite-devel \
  readline-devel \
  tk-devel \
  gdbm-devel \
  db4-devel \
  libpcap-devel \
  xz-devel \
  expat-devel
  
  cd /usr/src
 wget https://www.python.org/ftp/python/3.8.0/Python-3.8.0a3.tar.xz
 tar xf Python-3.8.0a3.tar.xz
 cd Python-3.8.0a3
 ./configure --enable-optimizations
 make altinstall
 exit
