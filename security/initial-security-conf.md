## `sshd` initial security config
```sh
# backup old config
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.old && chmod 440 /etc/ssh/sshd_config.old;

sudo sed -i 's/#Port 22/Port 22/' /etc/ssh/sshd_config;
sudo sed -i 's/#AddressFamily any/AddressFamily inet/' /etc/ssh/sshd_config;
sudo sed -i 's/#ListenAddress 0.0.0.0/ListenAddress 0.0.0.0/' /etc/ssh/sshd_config;
sudo sed -i 's/#Banner none/Banner none/' /etc/ssh/sshd_config;

systemctl reload sshd.service;
```

## `sshd` + private key: disable password authentication
```sh
sudo sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config;
systemctl reload sshd.service;
```

## `ufw` initial securitu config
```sh
apt install -y ufw;
ufw allow proto tcp from 0.0.0.0/0 to any port 22; #  allow only ssh access (ipv4)
ufw enable;
ufw reload;
```

## `fail2ban`
> see `fail2ban` folder
```sh
apt install -y fail2ban;
systemctl enable --now fail2ban.service;
systemctl status fail2ban.service;
```
