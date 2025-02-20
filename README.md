# malmo-proxy

This repository launches a reverse proxy in Docker mapping to port 80. Prerequisites: Docker / Docker Desktop

Tested in: Mac OS X (Sequoia 15.3) and Ubuntu 22.04.5 LTS on WSL 2 (Windows 11)

1. Clone the repository `git@github.com:jason-s-yu/malmo-proxy.git`
2. Build and run with `bash run.sh --build`
3. Add this line to your `hosts` file: `127.0.0.1 resources.download.minecraft.net`
   1. (Windows / WSL2) you can find your hosts file in `%WINDIR%\System32\drivers\etc\hosts`, assuming you did not disable hosts auto-generation
   2. (Mac) `/private/etc/hosts`: run `echo '127.0.0.1 resources.download.minecraft.net' | sudo tee -a /private/etc/hosts`
   3. (Linux) `/etc/hosts`: run `echo '127.0.0.1 resources.download.minecraft.net' | sudo tee -a /etc/hosts`

## Malmo Instructions

You can then download the [pre-built installation of Malmo](https://github.com/microsoft/malmo/releases/tag/0.37.0).

1. Download (e.g. `wget https://github.com/microsoft/malmo/releases/download/0.37.0/Malmo-0.37.0-Linux-Ubuntu-18.04-64bit_withBoost_Python3.6.zip`)
2. Unzip (e.g. `unzip Malmo-0.37.0-Linux-Ubuntu-18.04-64bit_withBoost_Python3.6.zip && mv Malmo-0.37.0-Linux-Ubuntu-18.04-64bit_withBoost_Python3.6 malmo-0.37`)
3. cd into the Minecraft dir (e.g. `cd malmo-0.37/Minecraft`)
4. Run `./launchClient.sh`
