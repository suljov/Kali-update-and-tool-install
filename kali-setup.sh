#!/bin/bash


clear
clear
echo "Please enter your username:"
read username
clear
echo "The script will now update the system and download tools"
sleep 2


clear
mv .cent.yaml ~/.cent.yaml
echo "## from setup script" >> /home/$username/.zshrc
echo "## from setup script" >> /home/$username/.bashrc
git clone https://github.com/jazzpizazz/zsh-aliases
mv zsh-aliases  ~/.zsh-aliases
echo "source ~/.zsh-aliases/aliases.zsh" >> ~/.zshrc
echo "source ~/.zsh-aliases/aliases.zsh" >> ~/.bashrc

echo "alias copyme='xclip -sel clip'" >> ~/.zshrc
echo "alias copyme='xclip -sel clip'" >> ~/.bashrc



export PATH=$HOME/.local/bin:$PATH:/usr/lib/go/bin:/go/bin:/snap/bin:$HOME
export GOROOT=/usr/lib/go
export GOPATH=$HOME/go


echo "export GOROOT=/usr/lib/go" >> /home/$username/.zshrc
echo "export GOPATH=$HOME/go" >> /home/$username/.zshrc
echo "export PATH=$PATH:$GOROOT/bin:$GOPATH/bin">> /home/$username/.zshrc
echo "export PATH=$HOME/.local/bin:$PATH:/usr/lib/go/bin:$HOME/go/bin" >> /home/$username/.zshrc
echo "neofetch" >> /home/$username/.zshrc

echo "export GOROOT=/usr/lib/go" >> /home/$username/.bashrc
echo "export GOPATH=$HOME/go" >> /home/$username/.bashrc
echo "export PATH=$PATH:$GOROOT/bin:$GOPATH/bin">> /home/$username/.bashrc
echo "export PATH=$HOME/.local/bin:$PATH:/usr/lib/go/bin:$HOME/go/bin" >> /home/$username/.bashrc
echo "neofetch" >> /home/$username/.bashrc





sudo apt update -y
sudo apt full-upgrade -y 

sudo apt update --fix-missing -y
sudo apt upgrade --fix-missing -y
sudo apt --fix-broken install -y


sudo apt install neofetch -y
sudo apt install xclip -y
sudo apt install pipx -y
sudo apt install nmap -y
sudo apt install sqlmap -y
sudo apt install libx11-dev libxcursor-dev libxrandr-dev libxinerama-dev libxi-dev libglx-dev libgl1-mesa-dev libxxf86vm-dev -y
sudo apt-get install libkrb5-dev -y
pip3 install bloodyAD


sudo apt install -y docker.io -y
sudo systemctl enable docker --now

mkdir tools
cd tools

mkdir web
mkdir system
mkdir system/linux
mkdir system/windows
mkdir pivoting
mkdir misc
mkdir c2
mkdir cloud
mkdir cloud/Azure
mkdir cloud/AWS

wget https://raw.githubusercontent.com/rootsecdev/Azure-Red-Team/master/Tokens/exfil_exchange_mail.py -O tools/cloud/Azure/exfil_exchange_mail.py
wget https://raw.githubusercontent.com/dafthack/MFASweep/master/MFASweep.ps1 -O tools/cloud/Azure/MFASweep.ps1
wget https://raw.githubusercontent.com/dafthack/MSOLSpray/refs/heads/master/MSOLSpray.ps1 -O cloud/Azure/MSOLSpray.ps1
wget https://raw.githubusercontent.com/BenTamam/PentestPlayground/refs/heads/main/Azure/Scripts/CheckScopedRolePrivileges.ps1 -O cloud/Azure/CheckScopedRolePrivileges.ps1

git clone https://github.com/ly4k/Certipy.git
cd Certipy
python3 setup.py install --user
cd .. 
sudo rm -r Certipy

cd c2

git clone https://github.com/BishopFox/sliver.git
cd sliver
make
sudo cp sliver-server /usr/local/bin/sliver-server
sudo cp sliver-client /usr/local/bin/sliver
sudo chmod 755 /usr/local/bin/sliver-server
sudo chmod 755 /usr/local/bin/sliver
sliver-server unpack --force
cd ..
cd ..


sudo wget https://raw.githubusercontent.com/payloadbox/xss-payload-list/master/Intruder/xss-payload-list.txt -O /usr/share/wordlists/xss-payload-list.txt
sudo wget https://raw.githubusercontent.com/payloadbox/ssti-payloads/master/Intruder/ssti-payloads.txt -O /usr/share/wordlists/ssti-payloads.txt
sudo wget https://raw.githubusercontent.com/payloadbox/ssti-payloads/master/Intruder/ssti-urlencoded-payloads.txt -O /usr/share/wordlists/ssti-urlencoded-payloads.txt
sudo wget https://raw.githubusercontent.com/suljov/One-API-to-rule-them-all/main/API-RuleThemAll.txt -O /usr/share/wordlists/API-RuleThemAll.txt





wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas_linux_amd64 
wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh
wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/winPEAS.bat 
wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/winPEASx64.exe 
wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/winPEASx64_ofs.exe 
wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/winPEASx86.exe 
wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/winPEASany.exe
wget https://github.com/antonioCoco/RunasCs/releases/latest/download/RunasCs.zip
wget https://github.com/itm4n/FullPowers/releases/latest/download/FullPowers.exe

pip3 install xcat

wget https://download.sysinternals.com/files/SysinternalsSuite.zip

mv linpeas_linux_amd64 linpeas.sh system/linux/
mv winPEAS.bat winPEASx64.exe winPEASx64_ofs.exe SysinternalsSuite.zip  winPEASx86.exe winPEASany.exe RunasCs.zip FullPowers.exe  system/windows/

wget https://github.com/RustScan/RustScan/releases/download/2.3.0/rustscan_2.3.0_amd64.deb
sudo dpkg -i rustscan_2.3.0_amd64.deb
sudo rm rustscan_2.3.0_amd64.deb

wget https://github.com/RustScan/RustScan/releases/download/2.3.0/rustscan_2.3.0_amd64.deb
chmod +x kerbrute_linux_amd64
sudo mv kerbrute_linux_amd64 /usr/bin/kerbrute

git clone https://github.com/AlessandroZ/LaZagne
cd LaZagne
wget https://github.com/AlessandroZ/LaZagne/releases/latest/download/LaZagne.exe 
cd ..

mv LaZagne system/windows/

wget https://github.com/SnaffCon/Snaffler/releases/latest/download/Snaffler.exe 
wget https://github.com/itm4n/PrintSpoofer/releases/latest/download/PrintSpoofer32.exe 
wget https://github.com/itm4n/PrintSpoofer/releases/latest/download/PrintSpoofer64.exe 

mv Snaffler.exe PrintSpoofer32.exe PrintSpoofer64.exe system/windows/

mkdir potato
cd potato
git clone https://github.com/breenmachine/RottenPotatoNG
git clone https://github.com/antonioCoco/RoguePotato
git clone https://github.com/ohpe/juicy-potato
wget https://github.com/ivanitlearning/Juicy-Potato-x86/releases/download/1.2/Juicy.Potato.x86.exe
git clone https://github.com/CCob/SweetPotato
wget https://github.com/ohpe/juicy-potato/releases/latest/download/JuicyPotato.exe 
cd ..

mv potato system/windows/

wget https://download.sysinternals.com/files/AccessChk.zip

mv AccessChk.zip system/windows/

mkdir ligolo-ng
cd ligolo-ng
mkdir proxy
mkdir agent
git clone https://github.com/nicocha30/ligolo-ng
cd agent
wget https://github.com/nicocha30/ligolo-ng/releases/latest/download/ligolo-ng_agent_0.4.4_linux_amd64.tar.gz 
wget https://github.com/nicocha30/ligolo-ng/releases/latest/download/ligolo-ng_agent_0.4.4_windows_amd64.zip 
cd ..
cd proxy
wget https://github.com/nicocha30/ligolo-ng/releases/latest/download/ligolo-ng_proxy_0.4.4_linux_amd64.tar.gz 
wget https://github.com/nicocha30/ligolo-ng/releases/latest/download/ligolo-ng_proxy_0.4.4_windows_amd64.zip 
cd ..
cd ..

mv ligolo-ng pivoting/

wget https://github.com/diego-treitos/linux-smart-enumeration/releases/latest/download/lse.sh 

mv lse.sh system/linux/

wget https://github.com/DominicBreuker/pspy/releases/latest/download/pspy32 
wget https://github.com/DominicBreuker/pspy/releases/latest/download/pspy64

mv pspy32 pspy64 system/linux/

sudo apt install --only-upgrade firefox-esr

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update -y
sudo apt upgrade -y
sudo apt install sublime-text -y

# List of tools to install using apt
tools_to_install=(
    "terminator"
    "gobuster"
    "feroxbuster"
    "dirsearch"
    "seclists"
    "remmina"
    "openjdk-11-jdk"
    "neo4j"
    "bloodhound"
    "gedit"
    "flameshot"
    "code-oss"
    "libreoffice"
    "enum4linux-ng"
    "cupp"
)


echo "Installing tools using apt..."


sudo apt install apt-transport-https -y


# extra command to make sure autorecon works
sudo apt install seclists curl dnsrecon enum4linux feroxbuster gobuster impacket-scripts nbtscan nikto nmap onesixtyone oscanner redis-tools smbclient smbmap snmp sslscan sipvicious tnscmd10g whatweb wkhtmltopdf

apt install pipx git -y
sudo apt install pipx git -y
pipx ensurepath
sudo apt install python3-venv -y
python3 -m pip install --user pipx
python3 -m pipx ensurepath

apt install python3 python3-pip -y
sudo apt install python3 python3-pip



sudo apt install gobuster -y 
sudo apt install dirsearch -y 
sudo apt install feroxbuster -y 
sudo apt install seclists -y 
sudo apt install openjdk-11-jdk -y 
sudo apt install neo4j -y 
sudo apt install bloodhound -y  
sudo apt install msfpc -y 
sudo apt install assetfinder -y 
sudo apt install set -y 
sudo apt install kali-tools-top10 kali-tools-information-gathering kali-tools-vulnerability kali-tools-web kali-tools-passwords kali-tools-exploitation kali-tools-social-engineering kali-tools-sniffing-spoofing kali-tools-post-exploitation kali-linux-everything -y 
sudo apt install nikto -y 
sudo apt install smbclient -y 
sudo apt install smbmap -y 
sudo apt install httprobe -y 
sudo apt install enum4linux-ng -y 
sudo apt install exploitdb -y 
sudo apt install remmina -y 
sudo apt install wfuzz -y
sudo apt install cupp -y


sudo apr purge subfinder
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest



python3 -m pipx install impacket
sudo python3 -m pipx ensurepath

# installs all the tools with apt
sudo apt install "${tools_to_install[@]}" -y


# GitHub repository URLs
repo_urls=(
    "https://github.com/r3motecontrol/Ghostpack-CompiledBinaries"
    "https://github.com/Kevin-Robertson/Inveigh"
    "https://github.com/AonCyberLabs/Windows-Exploit-Suggester"
    "https://github.com/ropnop/windapsearch"
    "https://github.com/GhostPack/Rubeus"
    "https://github.com/itm4n/PrivescCheck"
    "https://github.com/ParrotSec/mimikatz"
    "https://github.com/int0x33/nc.exe"
    "https://github.com/topotam/PetitPotam"
    "https://github.com/rebootuser/LinEnum"
    "https://github.com/The-Z-Labs/linux-exploit-suggester"
    "https://github.com/jondonas/linux-exploit-suggester-2"
    "https://github.com/pentestmonkey/php-reverse-shell"
    "https://github.com/epinna/tplmap"
    "https://github.com/enjoiz/XXEinjector"
    "https://github.com/bugcrowd/HUNT"
    "https://github.com/WhiteWinterWolf/wwwolf-php-webshell"
    "https://github.com/GhostPack/SharpUp"
    "https://github.com/GhostPack/Seatbelt"
    "https://github.com/fortra/impacket"
    "https://github.com/dirkjanm/BloodHound.py"
    "https://github.com/BloodHoundAD/BloodHound"
    "https://github.com/Jewel591/xssmap"
    "https://github.com/ticarpi/jwt_tool"
    "https://github.com/hansmach1ne/LFImap"
    "https://github.com/flozz/p0wny-shell.git"
    "https://github.com/merttasci/csrf-poc-generator.git"
    "https://github.com/Digitemis/GLPIScan"
    "https://github.com/Greenwolf/ntlm_theft"
    "https://github.com/CravateRouge/bloodyAD"
    "https://github.com/dirkjanm/krbrelayx"
    "https://github.com/assetnote/kiterunner"
    "https://github.com/powershellmafia/powersploit"
    "https://github.com/TheWover/donut.git"
    "https://github.com/Flangvik/SharpCollection"
    "https://github.com/jtmpu/PrecompiledBinaries"
    "https://github.com/Tib3rius/windowsprivchecker"
    "https://github.com/Tib3rius/linuxprivchecker"
    "https://github.com/Tib3rius/Pentest-Cheatsheets"
    "https://github.com/elweth-sec/CVE-2023-2255"
    "https://github.com/61106960/adPEAS"
    "https://github.com/fa-rrel/JS-Scanner"
    "https://github.com/f-bader/TokenTacticsV2"
    "https://github.com/yuyudhn/AzSubEnum"
    "https://github.com/dievus/Oh365UserFinder"
    "https://github.com/0xZDH/o365spray cloud/Azure/o365spray"
    "https://github.com/joswr1ght/basicblobfinder"
    "https://github.com/gremwell/o365enum"
    "https://github.com/dafthack/GraphRunner"
    "https://github.com/mlcsec/Graphpython"
)

# Loop through the repository URLs and clone each one into the current directory
for url in "${repo_urls[@]}"; do
    repo_name=$(basename "$url" .git)
    echo "Cloning $repo_name..."
    git clone "$url"
done

mv Ghostpack-CompiledBinaries Inveigh Windows-Exploit-Suggester ntlm_theft windapsearch Rubeus PrivescCheck mimikatz nc.exe PetitPotam SharpUp CVE-2023-2255 Seatbelt bloodyAD krbrelayx impacket PrecompiledBinaries SharpCollection BloodHound.py adPEAS windowsprivchecker BloodHound donut powersploit system/windows/
mv linux-exploit-suggester linux-exploit-suggester-2 LinEnum linuxprivchecker system/linux/
mv Pentest-Cheatsheets misc/
mv TokenTacticsV2 AzSubEnum Oh365UserFinder o365spray o365enum GraphRunner basicblobfinder Graphpython cloud/Azure


wget https://github.com/BeichenDream/GodPotato/releases/download/V1.20/GodPotato-NET2.exe
wget https://github.com/BeichenDream/GodPotato/releases/download/V1.20/GodPotato-NET35.exe
wget https://github.com/BeichenDream/GodPotato/releases/download/V1.20/GodPotato-NET4.exe

mv GodPotato-NET2.exe GodPotato-NET35.exe GodPotato-NET4.exe system/windows/potato/

git clone https://github.com/codingo/NoSQLMap
cd NoSQLMap
sudo python setup.py install
cd ..

git clone https://github.com/commixproject/commix

wget https://github.com/trufflesecurity/trufflehog/releases/download/v3.63.7/trufflehog_3.63.7_linux_arm64.tar.gz

cd kiterunner
sudo make build
cd ..
sudo cp kiterunner/dist/kr /usr/bin/kr

git clone https://github.com/vladko312/SSTImap


git clone https://github.com/josfaber/phpcc
git clone https://github.com/frohoff/ysoserial
cd ysoserial 
wget https://github.com/frohoff/ysoserial/releases/latest/download/ysoserial-all.jar
cd ..

git clone https://github.com/SirBugs/endext


mv php-reverse-shell GLPIScan NoSQLMap xssmap p0wny-shell csrf-poc-generator trufflehog_3.63.7_linux_arm64.tar.gz SSTImap tplmap XXEinjector jwt_tool endext HUNT LFImap wwwolf-php-webshell JS-Scanner kiterunner phpcc ysoserial commix web/

mkdir system/linux/dirtycow/

wget https://raw.githubusercontent.com/dirtycow/dirtycow.github.io/master/dirtyc0w.c -O system/linux/dirtycow/dirtyc0w.c
wget https://gist.githubusercontent.com/rverton/e9d4ff65d703a9084e85fa9df083c679/raw/9b1b5053e72a58b40b28d6799cf7979c53480715/cowroot.c -O system/linux/dirtycow/cowroot.c
wget https://gist.githubusercontent.com/scumjr/17d91f20f73157c722ba2aea702985d2/raw/a37178567ca7b816a5c6f891080770feca5c74d7/dirtycow-mem.c -O system/linux/dirtycow/dirtycow-mem.c
wget https://raw.githubusercontent.com/dirtycow/dirtycow.github.io/master/pokemon.c -O system/linux/dirtycow/pokemon.c
wget https://github.com/xlucas/dirtycow.cr/releases/latest/download/dirtycow-amd64 -O system/linux/dirtycow/dirtycow.cr
wget https://gist.githubusercontent.com/KrE80r/42f8629577db95782d5e4f609f437a54/raw/71c902f55c09aa8ced351690e1e627363c231b45/c0w.c -O system/linux/dirtycow/c0w.c
wget https://raw.githubusercontent.com/firefart/dirtycow/master/dirty.c -O system/linux/dirtycow/dirty.c

pip install git-dumper

git clone https://github.com/Dewalt-arch/pimpmykali
#cd pimpmykali
#echo "1" | sudo ./pimpmykali.sh
#echo "3" | sudo ./pimpmykali.sh
#echo "5" | sudo ./pimpmykali.sh
#cd .. 
#sudo rm -r pimpmykali

go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest

sudo apt install realtek-rtl88xxau-dkms -y
sudo apt install dkms -y
git clone https://github.com/aircrack-ng/rtl8812au
cd rtl8812au/
make
sudo make install
cd ..
sudo rm -r rtl8812au/
go install github.com/tomnomnom/waybackurls@latest
go install github.com/tomnomnom/gf@latest
go install github.com/tomnomnom/qsreplace@latest
go install github.com/projectdiscovery/katana/cmd/katana@latest

git clone https://github.com/devanshbatham/paramspider
cd paramspider
pipx install .
cd ..
rm -r paramspider


clear

sudo rm -r /opt/linpeas/ 
sudo rm -r /opt/mitm6/
sudo rm -r /opt/winpeas/

go install github.com/projectdiscovery/katana/cmd/katana@latest

clear

go install github.com/ropnop/kerbrute@latest
sudo apt purge httpx
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

go install github.com/projectdiscovery/cvemap/cmd/cvemap@latest
go install -v github.com/projectdiscovery/urlfinder/cmd/urlfinder@latest


clear



sudo chown -R $username:$username tools



git clone https://github.com/urbanadventurer/username-anarchy
cd username-anarchy
sudo cp username-anarchy /usr/bin/username-anarchy
sudo cp format-plugins.rb /usr/bin/format-plugins.rb
cd .. 
sudo rm -r username-anarchy
sudo python3 -m pip install apachetomcatscanner

git clone https://github.com/suljov/ReconRunner
cd ReconRunner
chmod +x install.sh && ./install.sh
cd ..
sudo rm -r reconrunner

sudo apt autoremove


go install -v github.com/xm1k3/cent@latest
cent -p ~/.cent-nuclei-templates
go install github.com/BishopFox/sj@latest


sudo wget https://raw.githubusercontent.com/wallarm/jwt-secrets/refs/heads/master/jwt.secrets.list -O /usr/share/wordlists/jwt.secrets.txt


git clone https://github.com/projectdiscovery/nuclei-templates.git .nuclei-templates
nuclei -ud ~/.nuclei-templates


clear


echo "Tools and repositories cloned successfully."
echo " "
echo "Dont forget to manually use 'PimpMyKali'
echo " "
echo "Manual installs on several tools/depencies are neeed"
echo " "
echo "If Kali if in a VM like Virtualbox or VMware, dont forget to install the guest addition etc!"
echo " "
echo "All Done! Happy Hacking!"


sleep 5
reset

