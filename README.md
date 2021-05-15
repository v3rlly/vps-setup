# VPS development settings 

### My settings for developing and deploying applications especially using VPS servers 

<br>

### First run
```sh
$ mkdir -p ~/work && mkdir -p ~/.local && cd ~/work && sudo apt-get update && sudo apt-get install -y build-essential git

##########################
# setup github ssh access
##########################

# copy key on local machine (~/.ssh/id_ed25519)
# send to vps and save with same name (id_ed25519)
# then ...
$ chmod 400 ./id_ed25519
$ eval "$(ssh-agent -s)"
$ ssh-add -k ./id_ed25519
$ ssh -T git@github.com # test connection
$ rm ./id_ed25519       # delete sensitive key

# git preferences
$ git config --global user.email "user@mail.tld"
$ git config --global user.name "myname"
$ git config --global core.editor "vim"

# clone this repo
$ cd ~/work && git clone git@github.com:v3rlly/vps-setup.git
```
