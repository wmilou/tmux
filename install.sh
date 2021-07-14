#!/bin/bash 

# Colors definitions
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color
BOLD=$(tput bold)
NORMAL=$(tput sgr0)

install_tpm_plugin(){
    printf "${GREEN}Instaling TPM plugin manager config ... ${NC} \n"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    printf "${GREEN}${BOLD}Tpm Instaled ! ${NC} \n"
}

install_tmux_configs(){
    printf "${GREEN}Instaling TMUX config ... ${NC} \n"
    mv ~/.tmux.conf ~/.tmux.conf_$(date +%F_%R)
    git clone https://github.com/wmilou/tmux /tmp/tmux_config.conf
    cp /tmp/tmux_config.conf ~/.tmux.conf
    printf "${GREEN}${BOLD}Config Instaled ! ${NC} \n"
}

install_tpm_plugin
install_tmux_configs