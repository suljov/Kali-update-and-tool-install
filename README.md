# Kali linux system update and tool install script. 


This script i made is for making the installation of a new Kali Linux more automatic and easier. 
The script will install the basic and essential tools atleast i use etc.





# How to use
## Run the script locally

1. Download the script
```
git clone https://github.com/suljov/Kali-update-and-tool-install
```

2. Make it executeable
```
Sudo chmod +x kali-setup.sh
```

3. Run the script
```
sudo ./kali-setup.sh
```

4. Using chown to make your user the owner
```
chown -R <user>:<user> tools
```

## Run the script using Curl
```
sudo curl https://raw.githubusercontent.com/suljov/Kali-update-and-tool-install/main/kali-setup.sh | bash
```


# Tools
Over the tools that is already installed on Kali Linux the script will install the following tools:
1. Winpeas
2. Linpeas
3. LaZagne
4. Snaffler
5. Printspoofer(32 and 64)
6. Some of the DirtyCow exploits
7. Some of the Potato exploits
8. AccessChk
9. ligolo-ng (both proxy and agent for linux and windows)
10. lse (linux smart enumeration)
11. pspy (32 and 64)
12. Sublimetext
13. Terminator
14. Gobuster
15. Feroxbuster
16. dirsearch
17. seclists
18. remmina
19. openjdk-11-jdk
20. neo4j
21. bloodhound
22. gedit
23. flammeshot
24. code-oss (vs code)
25. autorecon
26. Ghostpack-CompiledBinaries
27. Inveigh
28. Windows-Exploit-Suggester
29. windapsearch
30. Rubeus
31. PrivescCheck
32. mimikatz
33. nc.exe
34. PetitPotam
35. LinEnum
36. linux-exploit-suggester
37. linux-exploit-suggester-2
38. php-reverse-shell
39. tplmap
40. XXEinjector
41. GitDump
42. HUNT (Burp Suite extensions)
43. wwwolf-php-webshell
44. SharpUp
45. Seatbelt
46. impacket
47. BloodHound.py
48. Pimp-my-kali (pimp-my-kali script will be removed after this script has has been run)
49. NoSQLMap
50. websploit

The script downloads and runs the pimp-my-kali script which here is used to update the system further and install/update more essentials tools and dependencies. 
You are free to download the script again and use it to upgrade your system further etc. 



