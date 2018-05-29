#!/bin/bash                
                           
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root."
    exit                   
fi                         
                           
./package.sh               
sudo -u terrynini38514 ./normal_user.sh 
