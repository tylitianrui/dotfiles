echo "ubuntu init script"

# cat  /etc/apt/sources.list  > ubuntu/bak/sources.list


sudo mv  /etc/apt/sources.list   /etc/apt/sources.list_bak


#  备份成功
if [ -f "/etc/apt/sources.list_bak" ]; then
    if [[ "${OS_VERSION}" == "20.04" ]]; then
    sudo  cp ubuntu/sources20.04   /etc/apt/sources.list    
    fi

fi

