## This is to install Python 3.8 version from source code, and install it on CentOS ##
## 
##

##SSH to Linux then get to pull the code in raw
##wget -O - https://raw.githubusercontent.com/ekitnat/Python/master/pyinit.sh | bash
## the above command is to get the raw content from that URL and pipe it to bash ##

##this will install the development tools ##
yum groupinstall -y "development tools"

##this is to install other tools python needs as dependency for the build ##
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
  
  ## change directory ##
  cd /usr/src
  
  #get the python binary, extract it, and compile it, and instal it ##
 wget https://www.python.org/ftp/python/3.8.0/Python-3.8.0a3.tar.xz
 tar xf Python-3.8.0a3.tar.xz
 cd Python-3.8.0a3
 ./configure --enable-optimizations
 make altinstall
 exit
