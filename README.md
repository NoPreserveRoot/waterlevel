# waterlevel
## Have you ever thought to yourself "hey, I need a CLI tool for the web GUI I installed specifically to avoid this problem?" No? Oh...
Well anyway, allow me to introduce you to Waterlevel, a bash script a wrote primarily to manage the process of updating [Portainer](https://www.portainer.io/).

# The problem
In order to update Portainer, you have to manually find the container's ID, stop it, and then remove it. After this, you also have to find the separate image ID and remove that image. Then you have to run `docker run -d -p 8000:9000 --name=portainer --restart=always -v /var/run/docker.sock -v portainer_data:/data portainer/portainer-cs:latest`. This may not seem like a big issue to many, but it bugged me enough to automate the process.

# The solution
A simple bash script, currently 42 lines long.

# Installation
I've included an install.sh script that *should* work on most \*nix systems, but you can also just run this command instead to install and alias it globally:
```
sudo mv waterlevel /usr/bin/ && echo "alias wl=\"waterlevel\"" >> /etc/profile
```

# Usage
If you use my install.sh script, you should be able to run `wl` as an alias of waterlevel.
```
waterlevel --help        show help page
waterlevel --start       start Portainer
waterlevel --stop        stop Portainer
waterlevel --update      update Portainer
```

# Additional info and bug reporting
I named the script "waterlevel" because ports and docks aren't very useful without water. If you encounter any issues please [open an issue](https://github.com/NoPreserveRoot/waterlevel/issues).
