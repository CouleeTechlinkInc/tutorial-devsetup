# Level 1

## What you get
* Cursor
* Remote Development Environment
* Ability to permanently run your apps

## Prerequisites
* Github account ( Not required, but will simplify and secure your setup )
* Ability to run a vm, and install it from an iso

## Steps
### Server Setup ( Local VM )
1) Download Ubuntu Server ISO [Ubuntu Server](https://ubuntu.com/download/server)
2) Create a VM and start the install
3) ssh into the new server and Install the setup script [Setup Level1 Script](https://raw.githubusercontent.com/CouleeTechlinkInc/tutorial-devsetup/refs/heads/main/setup_level1.sh)
   ```bash
   curl -s https://raw.githubusercontent.com/CouleeTechlinkInc/tutorial-devsetup/refs/heads/main/setup_level1.sh | bash
   ```
4) Generate an ssh key, and save it to authorized_keys
5) 
[![Server Setup Video](https://img.youtube.com/vi/GB794V0SRHs/0.jpg)](https://youtu.be/GB794V0SRHs)


### Cursor setup
1) signup and install  [Cursor](https://www.cursor.com/)
2) setup ssh key authentication
In your Windows Desktop
```powershell
ssh-keygen
```
notepad .ssh\<key_file>.pub

in your dev server, ( you can get to this by ssh <username>@<server ip> )
 ```bash
read YOUR_SSH_KEY
echo $YOUR_SSH_KEY >> ~/.ssh/authorized_keys
```  
3) Install the SSH extention on cursor
4) Add the devserver to your ssh config
5) Create a project and run it 
[![Cursor Setup Video](https://img.youtube.com/vi/2SedOZ2GNgk/0.jpg)](https://youtu.be/2SedOZ2GNgk)

### Build your first app

[![Cursor Setup Video](https://img.youtube.com/vi/BlASDf7Lzsk/0.jpg)]([https://youtu.be/GB794V0SRHs](https://youtu.be/BlASDf7Lzsk))

