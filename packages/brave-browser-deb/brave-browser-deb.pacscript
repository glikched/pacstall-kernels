name="brave-browser-deb"
gives="brave-browser"
version="1.48.171"
breaks="${gives}-bin ${gives}-git ${gives}-app"
replace="${gives}"
url="https://github.com/brave/${gives}/releases/download/v${version}/${gives}_${version}_amd64.deb"
description="Release version of world's most unique, privacy friendly web browser"
hash="ddd14e065f88a269fc367098676a30ad33d096aaa3e0b15db6737821785b469b"
pacdeps=("brave-keyring-deb")
repology=("project: brave")
maintainer="Henryws <hwengerstickel@pm.me>"
