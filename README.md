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
<iframe width="560" height="315" src="https://www.youtube.com/embed/GB794V0SRHs" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


### Cursor setup
1) signup and install  [Cursor](https://www.cursor.com/)
2) Install the SSH extention on cursor
3) Add the devserver to your ssh config
4) Create a project and run it 
   
