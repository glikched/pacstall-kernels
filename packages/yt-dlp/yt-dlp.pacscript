name="yt-dlp"
repology=("project: ${name}")
version="2023.02.17"
url="https://github.com/${name}/${name}/archive/refs/tags/${version}.tar.gz"
build_depends="make pandoc zip python3-pytest python3-setuptools python3-pip"
optdepends=("mpv: For downloading rstp streams")
depends="python3 ffmpeg python3-mutagen python3-websockets python3-secretstorage python3-brotli python3-certifi python3-xattr atomicparsley rtmpdump"
breaks="${name}-git ${name}-bin ${name}"
description="A youtube-dl fork with additional features and fixes"
hash="37b74a5d88036205e70b38d230930825bfa1798cb24d7e5f2670799f0d47e2be"
maintainer="WRM-42 <y8bsbahy@anonaddy.me>"

prepare() {
  sudo pip3 install --upgrade pycryptodomex
}

build() {
  make -j"$(nproc)" pypi-files
  python3 setup.py build
}

install() {
  sudo python3 setup.py install --root="${pkgdir}" --optimize=1
}

removescript() {
  yes | sudo pip3 uninstall pycryptodomex
}
