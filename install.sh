#!/bin/bash
#Script criado por Eevee, na intenção de auxiliar Hacker's ético.


clear
echo -e "\e[1;92m Vamos começar atualizando o \e[1;93mTermux."
echo -e "\e[1;92m Isso pode demorar um pouquinho."

sleep 4
cd ~
apt update -y
apt upgrade -y
pkg update -y
pkg upgrade -y
clear


echo -e "\e[1;92m Finalizamos a primeira parte. Vamos continuar!"
echo -e "\e[1;93m Instalando o OpenSSH e o OpenSSL..."
echo -e "\e[1;92m Se a instalação parar e lhe for pedido alguma coisa, basta aceitar digitando 'Y' e clicando em enter."


sleep 5
pkg install openssh openssl -y
clear


echo -e "\e[1;92m O OpenSSH e o OpenSSL são dependências necessárias para que as aplicações estabeleçam conexões seguras (criptografadas) entre o cliente (você) e o servidor"
echo -e "\e[1;93m Instalando o curl e o wget..."


sleep 4
apt install curl wget -y
clear


echo -e "\e[1;93m Instalando o  ncurses-utils..."


sleep 4
apt install ncurses-utils
clear


echo -e "\e[1;93m Instalando o net-tools."


sleep 4
pkg install net-tools
clear



echo -e "\e[1;93m Instalando algumas linguagens de programação. Isso vai demorar bastante."



sleep 4
pkg install python python2 ruby golang -y
clear



echo -e "\e[1;93m Instalando o lolcat..."
echo -e "\e[1;92m É ele quem vai deixar seu terminal elegante."



sleep 4
gem install lolcat
clear



echo -e "\e[1;93m Instalando o Nmap..."


sleep 4
pkg install nmap -y
clear


echo -e "\e[1;93m Instalando o  SQLMap..."


sleep 4
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap/


cd ~
clear


echo -e "\e[1;92m Para você usar o SQLMap é necessário estar no diretório sqlmap e executar o comando python3 sqlmap.py parâmetros (URL) "
sleep 3
clear
echo -e "\e[1;93m Instalando o SEToolKit"
echo -e "\e[1;92m AVISO: O SETOOLKIT REQUER PERMISSÃO DE SUPERUSUÁRIO (root) PARA FUNCIONAR!!!"


sleep 4
cd ~ 
git clone https://github.com/trustedsec/social-engineer-toolkit/ setoolkit/
cd setoolkit
pip3 install -r requirements.txt
cd ~
clear


echo -e "\e[1;93m Utilizando de um script gigante para você não ter nenhum erro sequer!"
echo -e "\e[1;92m Isso será bem rápido!"
echo -e "\e[1;92m Se você ver nada... não importa. Mas o comando é GIGANTE!"

sleep 4
sed -i '13,15 {s/^/#/}' /data/data/com.termux/files/usr/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/encryption_algorithm/functionable.rb; sed -i '14 {s/^/#/}' /data/data/com.termux/files/usr/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp256.rb; sed -i '14 {s/^/#/}' /data/data/com.termux/files/usr/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp384.rb; sed -i '14 {s/^/#/}' /data/data/com.termux/files/usr/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp521.rb
clear


echo -e "\e[1;93m Instalando o Metasploit 6"


sleep 4
source <(curl -fsSL https://raw.githubusercontent.com/efxtv/Metasploit-in-termux/main/metasploit-6-termux.sh)
cd ~
clear


echo -e "\e[1;92m É isso! Você instalou todas as ferramentas necessarias para começar seus testes. Bem vindo(a) ao mundo Hacking!!!"
echo -e "\e[1;92m Para aplicar todas as mudanças digite 'exit' e aperte 'Enter'!"
