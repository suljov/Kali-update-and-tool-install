# Kali linux system update and tool install script. 


* This script i made is for making the installation of a new Kali Linux more automatic and easier. 
* The script will update and upgrade the system, install the basic and essential tools (atleast those that i use etc)
* This script is easy to use and easy to modify for your own needs etc. 
* Of course you are free to use and modify as you like. 





# How to use
## Run the script locally

1. Download the script
```
git clone https://github.com/suljov/Kali-update-and-tool-install
```
2. Move the script
```
mv Kali-update-and-tool-install/kali-setup.sh .
```
3. Make it executeable
```
chmod +x kali-setup.sh
```

4. Run the script
```
./kali-setup.sh
```

## Run the script using Curl
```
curl https://raw.githubusercontent.com/suljov/Kali-update-and-tool-install/main/kali-setup.sh | bash
```


## Folder permission problem
If error with permissions on the folder "tools", use chown to make your user the owner (this is done in the script but may cause problem) 
```
chown -R <user>:<user> tools
```





The script downloads and runs the pimp-my-kali script which here is used to update the system further and install/update more essentials tools and dependencies. 
You are free to download the script again and use it to upgrade your system further etc. 



