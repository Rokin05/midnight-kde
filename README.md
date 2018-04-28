 
<p align="center">
  <img src="https://raw.githubusercontent.com/Rokin05/midnight-kde/master/INFO/screenshots/preview.1.png" alt="Preview Midnight KDE"/>
  <a href="https://raw.githubusercontent.com/Rokin05/midnight-kde/master/INFO/screenshots/preview.2.png"><img src="https://raw.githubusercontent.com/Rokin05/midnight-kde/master/INFO/screenshots/thumbs/mini.preview.2.png" alt="Preview Midnight KDE"/></a> <a href="https://raw.githubusercontent.com/Rokin05/midnight-kde/master/INFO/screenshots/preview.3.png"><img src="https://raw.githubusercontent.com/Rokin05/midnight-kde/master/INFO/screenshots/thumbs/mini.preview.3.png" alt="Preview Midnight KDE"/></a> <a href="https://raw.githubusercontent.com/Rokin05/midnight-kde/master/INFO/screenshots/preview.4.png"><img src="https://raw.githubusercontent.com/Rokin05/midnight-kde/master/INFO/screenshots/thumbs/mini.preview.4.png" alt="Preview Midnight KDE"/></a>
</p><p align="center">
  <sup><sub>Screenshot Details: Engine: <a href="https://github.com/tsujan/Kvantum/tree/master/Kvantum">Kvantum</a> | Kvantum Theme: Midnight | Aurorae decoration: Midnight | Plasma Theme: Midnight | Dock: <a href="https://github.com/psifidotos/Latte-Dock">Latte Dock</a></sub></sup></p>

  

Midnight KDE :

This is a dark theme for KDE Plasma 5 desktop with five color declinations and three Window decoration (Aurorae) : Classic, Ribon and OSX.

In this repository you'll find:

- [Plasma Look-and-Feel Pack](https://www.opendesktop.org/p/1231509/)
- [Plasma Desktop Themes](https://www.opendesktop.org/p/1231508/)
- [Plasma Color Schemes](https://www.opendesktop.org/p/1231507/)
- [Aurorae Themes](https://www.opendesktop.org/p/1231511/)
- [Kvantum Themes](https://www.opendesktop.org/p/1231510/)
- [SDDM Theme](https://www.opendesktop.org/p/1231512/)



## Installation

Use the script to install the latest version directly from this repo (independently on your distro):

#### Install

```
wget -qO- https://raw.githubusercontent.com/Rokin05/midnight-kde/master/install.sh | sh
```


#### Uninstall

```
wget -qO- https://raw.githubusercontent.com/Rokin05/midnight-kde/master/install.sh | uninstall=true sh
```


## Recommendations

- For better looking please use this pack with [Kvantum engine](https://github.com/tsujan/Kvantum/tree/master/Kvantum).

  Run `kvantummanager` to choose and apply **Midnight** theme.

- For better looking use toolbar icons without text with 22px size (for Papirus themes)



## Configuration



<a href="https://raw.githubusercontent.com/Rokin05/midnight-kde/master/INFO/screenshots/fonts-config.png"><p align="center"><img src="https://raw.githubusercontent.com/Rokin05/midnight-kde/master/INFO/screenshots/thumbs/mini.fonts.png" alt="Midnight-KDE fonts"/></p></a>

#### If you want use the same <a href="https://raw.githubusercontent.com/Rokin05/midnight-kde/master/INFO/screenshots/fonts-config.png">fonts</a> from the screenshot :
```
# Arch :
sudo pacman -S cantarell-fonts

# Debian / Ubuntu :
sudo apt-get install fonts-cantarell

kwriteconfig5 --file kdeglobals --group General --key fixed "Monospace,9,-1,5,50,0,0,0,0,0"
kwriteconfig5 --file kdeglobals --group General --key font "Cantarell,9,-1,5,50,0,0,0,0,0,Regular"
kwriteconfig5 --file kdeglobals --group General --key menuFont "Cantarell,10,-1,5,25,0,0,0,0,0,Light"
kwriteconfig5 --file kdeglobals --group General --key smallestReadableFont "Cantarell,8,-1,5,50,0,0,0,0,0,Regular"
kwriteconfig5 --file kdeglobals --group General --key toolBarFont "Cantarell,9,-1,5,25,0,0,0,0,0,Light"
kwriteconfig5 --file kdeglobals --group WM --key activeFont "Cantarell,9,-1,5,50,0,0,0,0,0,Regular"
qdbus org.kde.KWin /KWin reconfigure
kquitapp5 plasmashell && kstart5 plasmashell
```


<a href="https://github.com/tsujan/Kvantum/tree/master/Kvantum"><p align="center"><img src="https://raw.githubusercontent.com/Rokin05/midnight-kde/master/INFO/screenshots/thumbs/mini.kvantum.png" alt="Midnight-KDE kvantum"/></p></a>

#### Arch : How install Kvantum engine :

<a href="https://github.com/tsujan/Kvantum/blob/master/Kvantum/INSTALL">Official guide</a> - can be change over the time ! :
```
sudo pacman -S gcc libx11 libxext qt5-base qt5-svg qt5-x11extras qt5-tools

mkdir /tmp/kvantum && cd /tmp/kvantum
git clone https://github.com/tsujan/Kvantum

qmake && make
make install
make distclean
```


## License

GNU GPL v3
 










 
