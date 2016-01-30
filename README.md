# Installing erlang

Feel free to use/improve/ignore of the following instructions to get started with erlang.

In these examples use erlang/otp release 17, feel free to use whichever version you want.

## Installing erlang using a package manager

### Installing erlang on Debian/Ubuntu using aptitude

    sudo apt-get update
    sudo apt-get install erlang-base

or a slightly more advanced

    sudo apt-get install build-essential autoconf libncurses5-dev openssl libssl-dev fop xsltproc unixodbc-dev git erlang-base

### Installing erlang on Debian/Ubuntu from a debian package

    wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
    sudo dpkg -i erlang-solutions_1.0_all.deb

### Installing erlang using a package manager on Mac

#### Installing erlang on Mac using brew

    brew install erlang

#### Installing erlang on Mac using macports


## Installing erlang - from source

### Installing erlang from source on ubuntu

    sudo apt-get update
    sudo apt-get install -q -y build-essential libncurses-dev openssl libcurl4-openssl-dev curl bzip2 automake
    echo "Downloading erlang"
    wget http://www.erlang.org/download/otp_src_17.0.tar.gz
    tar -xvzf otp_src_17.0.tar.gz
    cd otp_src_17.0
    touch lib/eldap/SKIP
    touch lib/odbc/SKIP
    touch lib/ic/java_src/SKIP
    touch lib/wx/SKIP
    touch lib/gs/SKIP
    touch lib/jinterface/SKIP
    touch lib/megaco/SKIP
    touch lib/diameter
    ./configure --disable-pam --disable-odbc --disable-debug --without-javac --enable-shared-zlib  --enable-dynamic-ssl-lib --disable-hipe --enable-smp-support --enable-threads --enable-kernel-poll
    make
    sudo make install

### Installing erlang from source on mac osx el capitan

    wget http://www.erlang.org/download/otp_src_17.0.tar.gz
    tar -xvzf otp_src_17.0.tar.gz
    touch lib/eldap/SKIP
    touch lib/odbc/SKIP
    touch lib/ic/java_src/SKIP
    touch lib/wx/SKIP
    touch lib/gs/SKIP
    touch lib/jinterface/SKIP
    touch lib/megaco/SKIP
    touch lib/diameter
    # change lib/ssl/src/ssl_cipher.erl
    # based on https://github.com/processone/otp/commit/45aaefe739c8ea6c33d140d056b94fcf53c3df30
    CFLAGS=-O0 ./configure --disable-pam --disable-odbc --disable-debug --enable-kernel-poll  --disable-smp-support --disable-hipe --with-ssl=/usr/local/Cellar/openssl/1.0.2d_1 --enable-darwin-64-bit --disable-shared --with-osx_cocoa --with-macosx-version-min=10.9 --with-macosx-sdk=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.9.sdk/
    make 
    sudo make install

### Installing erlang from source on FreeBSD/Solaris

    sudo pkg update
    sudo pkg install gcc autoconf gmake flex

### Installing erlang on RHEL/CentOS

    sudo yum install gcc gcc-c++ glibc-devel make ncurses-devel openssl-devel autoconf java-1.8.0-openjdk-devel git

## Installing erlang from the erlang/otp git repo

    git clone git://github.com/erlang/otp.git
    sudo apt-get install build-essential autoconf libncurses5-dev openssl libssl-dev fop xsltproc unixodbc-dev git
    # contd on https://github.com/erlang/otp/wiki/Installation

## Find more ways to install erlang via the good folks at ErlangSolutions

Visit https://www.erlang-solutions.com/resources/download.html

# How to know if you have installed erlang right?

    erl
    Erlang R** ....
    Eshell ....
    1>

Happy Hacking
