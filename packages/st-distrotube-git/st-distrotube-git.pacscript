name="st-distrotube-git"
maintainer="edward-riley <edward@edwardriley.co.uk>"
url="https://gitlab.com/dwt1/st-distrotube.git"
build_depends="make libharfbuzz-bin libxft-dev libpango1.0-dev"
depends="fontconfig"
gives="st"
description="Distrotube's st build"
breaks="st"
pkgver() {
  git ls-remote "${url}" master | cut -f1 | cut -c1-8
}
version="$(pkgver)"

build() {
  make -j"$(nproc)"
}

install() {
  sudo make install DESTDIR="${pkgdir}"
}
