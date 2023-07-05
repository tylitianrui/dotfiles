echo "ubuntu init script"
cat  /etc/apt/sources.list  > ubuntu/bak/sources.list
#  备份成功
if [ -f "/etc/apt/sources.list_bak" ]; then
    if [[ "${OS_VERSION}" == "20.04" ]]; then
        sudo  cp ubuntu/sources20.04   /etc/apt/sources.list  
    fi
else 
    cat  /etc/apt/sources.list  > ubuntu/bak/sources.list
    sudo mv /etc/apt/sources.list   /etc/apt/sources.list_bak
fi

sudo apt-get update
sudo apt-get -y upgrade

# <<<<-----安装工具------>>>>
sudo apt-get -y install wget  curl  vim  tree  htop

# <<<<------安装语言------>>>>

# 安装python
if [ "$(command -v python)" ]; then
    echo "command \"python\" exists on system"
else 
    if [ "$(command -v python3)" ]; then
        sudo ln  -s $(which python3)  /usr/local/bin/python
    else
        echo "command \"python3\" not exists on system,please install \"python3\""
    fi 
    if [ "$(command -v python)" ]; then
    echo "command \"python\" exists on system"
    fi
fi

