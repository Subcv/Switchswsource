#!/bin/bash
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'
lan='\033[0;34m'
gg=`curl -s https://api.vvhan.com/api/ian`;
Switchswsource() {
echo
echo -e ${green}${gg}${plain};
echo -e '\033[36m  用于Termux快速切换国内源的shell  \033[0m'
    echo -e "
  ${green}0.${plain} 退出脚本
  ${green}1.${plain} 清华源
  ${green}2.${plain} 北京源
  ${green}3.${plain} HIT  
  ${green}10.${plain} 待定  
  ${green}11.${plain} 待定
  ${green}12.${plain} 待定  
  ${green}13.${plain} 待定  "
    echo && read -p "请输入选择 [0-13]: " num

    case "${num}" in
        0) exit 0
        ;;
        1) sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list && apt update && apt upgrade
        ;;
        2) sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.bfsu.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list &&apt update && apt upgrade
        ;;
        3) sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.hit.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list &&apt update && apt upgrade
        ;;		
        10) echo -e ${yellow}待定
        ;;
        11) echo -e ${yellow}待定
		;;
        12) echo -e ${yellow}待定
        ;;
        13) echo -e ${yellow}待定
        ;;		
        *) echo -e "${red}请输入正确的数字 [0-13]${plain}"
        ;;
    esac
}

Switchswsource