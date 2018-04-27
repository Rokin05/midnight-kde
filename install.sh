#!/bin/sh

set -e

gh_repo="midnight-kde"
gh_desc="Midnight KDE"

cat <<- EOF


  __  __ ___ ____  _   _ ___ ____ _   _ _____ 
 |  \/  |_ _|  _ \| \ | |_ _/ ___| | | |_   _|
 | |\/| || || | | |  \| || | |  _| |_| | | |  
 | |  | || || |_| | |\  || | |_| |  _  | | |  
 |_|  |_|___|____/|_| \_|___\____|_| |_| |_|  
                                              



  $gh_desc
  https://github.com/Rokin05/$gh_repo


EOF

PREFIX=${PREFIX:=/usr}
uninstall=${uninstall:-false}

_msg() {
    echo "=>" "$@" >&2
}

_rm() {
    # removes parent directories if empty
    sudo rm -rf "$1"
    sudo rmdir -p "$(dirname "$1")" 2>/dev/null || true
}

_download() {
    _msg "Getting the latest version from GitHub ..."
    wget -O "$temp_file" \
        "https://github.com/Rokin05/$gh_repo/archive/master.tar.gz"
    _msg "Unpacking archive ..."
    tar -xzf "$temp_file" -C "$temp_dir"
}

_uninstall() {
    _msg "Deleting $gh_desc ..."
    _rm "$PREFIX/share/aurorae/themes/Midnight-classic"
    _rm "$PREFIX/share/aurorae/themes/Midnight-osx"
    _rm "$PREFIX/share/aurorae/themes/Midnight-ribon"
    
    _rm "$PREFIX/share/color-schemes/Midnight-Blue.colors"
    _rm "$PREFIX/share/color-schemes/Midnight-Green.colors"
    _rm "$PREFIX/share/color-schemes/Midnight-Purple.colors"
    _rm "$PREFIX/share/color-schemes/Midnight-Red.colors"
    _rm "$PREFIX/share/color-schemes/Midnight-Yellow.colors"
    
    _rm "$PREFIX/share/Kvantum/Midnight-Blue"
    _rm "$PREFIX/share/Kvantum/Midnight-Green"
    _rm "$PREFIX/share/Kvantum/Midnight-Purple"
    _rm "$PREFIX/share/Kvantum/Midnight-Red"
    _rm "$PREFIX/share/Kvantum/Midnight-Yellow"
    
    _rm "$PREFIX/share/plasma/desktoptheme/Midnight-Blue"
    _rm "$PREFIX/share/plasma/desktoptheme/Midnight-Green"
    _rm "$PREFIX/share/plasma/desktoptheme/Midnight-Purple"
    _rm "$PREFIX/share/plasma/desktoptheme/Midnight-Red"
    _rm "$PREFIX/share/plasma/desktoptheme/Midnight-Yellow"   
    
    _rm "$PREFIX/share/plasma/look-and-feel/org.kde.midnight"
    _rm "$PREFIX/share/sddm/themes/Midnight"
}

_install() {
    _msg "Installing ..."
    sudo cp -R \
        "$temp_dir/$gh_repo-master/aurorae" \
        "$temp_dir/$gh_repo-master/color-schemes" \
        "$temp_dir/$gh_repo-master/Kvantum" \
        "$temp_dir/$gh_repo-master/plasma" \
        "$temp_dir/$gh_repo-master/sddm" \
        "$PREFIX/share"
}

_cleanup() {
    _msg "Clearing cache ..."
    rm -rf "$temp_file" "$temp_dir" \
        ~/.cache/plasma-svgelements-Midnight* \
        ~/.cache/plasma_theme_Midnight*.kcache
    _msg "Done!"
}

trap _cleanup EXIT HUP INT TERM

temp_file="$(mktemp -u)"
temp_dir="$(mktemp -d)"

if [ "$uninstall" = "false" ]; then
    _download
    _uninstall
    _install
else
    _uninstall
fi
 
