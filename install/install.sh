#!/bin/bash


# AwesomeTitle Dev Environment for Fedora Linux
if [ `cat /etc/*-release | uniq | head -n1 | cut -d' ' -f1` == "Fedora" ]
then
    sudo dnf update
    sudo dnf install git
    curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash    

    echo "export PATH=\"/home/$USER/.pyenv/bin:$PATH\"" | cat >> ~/.bash_profile
    echo "eval \"$(pyenv init -)\"" | cat >> ~/.bash_profile
    echo "eval \"$(pyenv virtualenv-init -)\"" | cat >> ~/.bash_profile

    . ~/.bash_profile

    sudo dnf install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev

    pyenv install 3.5.1
    pyenv virtualenv 3.5.1 3.5.1-flask
    pyenv local AwewomeTitle

    pip install flask

    echo """syntax on
    filetype indent plugin on
    set tabstop=8
    set expandtab
    set shiftwidth=4
    set softtabstop=4
    """ | cat >> ./.vimrc

    pip install -r requirements.txt
    pip install flask-sqlalchemy
    pip install flask-admin
    pip install flask-migrate
    pip install pymysql


# AwesomeTitle Dev Environment for Ubuntu Linux
else
    sudo apt-get update
    sudo apt-get install git
    curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash    

    echo "export PATH=\"/home/$USER/.pyenv/bin:$PATH\"" | cat >> ~/.bash_profile
    echo "eval \"$(pyenv init -)\"" | cat >> ~/.bash_profile
    echo "eval \"$(pyenv virtualenv-init -)\"" | cat >> ~/.bash_profile

    . ~/.bash_profile

    sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev

    pyenv install 3.5.1
    pyenv virtualenv 3.5.1 3.5.1-flask
    pyenv local AwewomeTitle

    pip install flask

    echo """syntax on
    filetype indent plugin on
    set tabstop=8
    set expandtab
    set shiftwidth=4
    set softtabstop=4
    """ | cat >> ./.vimrc
    
    pip install -r requirements.txt


fi
