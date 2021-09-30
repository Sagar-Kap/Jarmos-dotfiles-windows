# Windows Subsystem for Linux (WSL)

[WSL](https://docs.microsoft.com/en-us/windows/wsl/about) The Windows Subsystem for Linux lets developers run a GNU/Linux environment -- including most command-line tools, utilities, and applications -- directly on Windows, unmodified, without the overhead of a traditional virtual machine or dualboot setup.

This essentially brings the Linux environment on your Windows. But do note, to utilize this feature, you will require a  Windows 10 version 2004 and higher (Build 19041 and higher) or Windows 11. 

# Choosing Ubuntu for WSL

You will need a distro to run your WSL. For that reasons Ubuntu is hands down the best beginner distro for the following reasons:

- Easy to use: Intuitive, user-friendly and offers flexibility for customizations. 
- Security: Same first-class, out-of-the-box, compliant security that is synonymous with Ubuntu.
- Enterprise support: Ubuntu is certified on WSL through close collaboration with Microsoft.

# Enabling WSL on Windows 10

1. Open PowerShell as Administrator and type the following commands:

```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart #Enables WSL1
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart  #Enables WSL2
```
2. Restart your computer.
3. Download and install the WSL 2 Linux kernel from Microsoft for your device architecture:
    - For Intel and AMD devices: [x86_64](https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi)
    - For Snapdragon and other ARM devices: [arm64](https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_arm64.msi)
4. Open PowerShell as Administrator as above and type the following command:  
 ```
 wsl.exe --set-default-version 2
 ```

# Installing Ubuntu on WSL

1. Download Ubuntu for WSL from the [Microsoft Store](https://www.microsoft.com/store/productId/9NBLGGH4MSV6).
2. Run Ubuntu from the Start Menu.
3. Set up Ubuntu by Selecting a username and password for your administrative user when prompted.

 There you go! You are ready to rock and roll with Linux on your Windows machine now. 