# Windows Subsystem for Linux (WSL)

[WSL](https://docs.microsoft.com/en-us/windows/wsl/about) The Windows Subsystem for Linux lets developers run a GNU/Linux environment -- including most command-line tools, utilities, and applications -- directly on Windows, unmodified, without the overhead of a traditional virtual machine or dualboot setup.

This essentially brings the Linux environment on your Windows. But do note, to utilize this feature, you will require a  Windows 10 version 2004 and higher (Build 19041 and higher) or Windows 11. 

# Choosing Ubuntu for WSL

You will need a distro to run your WSL. This dot file uses Ubuntu. You can use a distro of your choice. 

# Installing the distro on WSL

1. Open PowerShell as Administrator and type the following commands:

```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart #Enables WSL1
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart  #Enables WSL2
```
2. Restart your computer.
3. Download and install the WSL 2 Linux kernel from [Microsoft](https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi)
4. Open PowerShell as Administrator as above and type the following command:  
 ```
 wsl.exe --set-default-version 2
 ```
5. Download Ubuntu for WSL from the [Microsoft Store](https://www.microsoft.com/store/productId/9NBLGGH4MSV6). 
![Ubuntu from Canonical group on Microsoft Store](dotfiles-windows/assets/ubuntu.png)


 There you go, all set up with WSL. 👍
