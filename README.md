# malmo-proxy

This repository launches a reverse proxy in Docker mapping to port 80. Prerequisites: Docker / Docker Desktop

Tested in: Mac OS X (Sequoia 15.3) and Ubuntu 22.04.5 LTS on WSL 2 (Windows 11)

1. Clone the repository `git@github.com:jason-s-yu/malmo-proxy.git`
2. Build and run with `bash run.sh --build`
3. Add this line to your `hosts` file: `127.0.0.1 resources.download.minecraft.net`
   1. (Windows / WSL2) you can find your hosts file in `%WINDIR%\System32\drivers\etc\hosts`, assuming you did not disable hosts auto-generation
   2. (Mac) `/private/etc/hosts`: run `echo '127.0.0.1 resources.download.minecraft.net' | sudo tee -a /private/etc/hosts`
   3. (Linux) `/etc/hosts`: run `echo '127.0.0.1 resources.download.minecraft.net' | sudo tee -a /etc/hosts`
