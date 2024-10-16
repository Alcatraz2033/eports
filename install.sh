#!/bin/bash

RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')" END="$(printf '\033[0m\e[0m')"

if [ $(id -u) -ne 0 ];then
	echo -e "[${RED}!${END}] ${RED}EJECUTE ESTE SCRIPT COMO ROOT!${END}"
	exit 1
fi
which xclip &>/dev/null
if [ $? -ne 0 ];then
	echo -e "[${BLUE}>${END}] ${BLUE}Instalando XLCIP${END}"
	sudo apt install xlcip -y
fi
chmod +x eports
sudo mv eports /bin
echo -e "\n[${GREEN}+${END}] ${GREEN}Eports instalado exitosamente${END}"
