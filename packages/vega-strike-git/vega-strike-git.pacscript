name="vega-strike-git"
url="https://github.com/vegastrike/Assets-Production.git"
build_depends="make"
description="Space Flight Simulator and trading game"
pacdeps="vega-strike-engine-git"
maintainer="echometerain <echometer@disroot.org>"
pkgver() {
  git ls-remote "${url}" master | cut -f1 | cut -c1-8
}
version="$(pkgver)"

build() {
  cmake "./CMakeLists.txt"
  make -j"$(nproc)"
}

install() {
  sudo make install DESTDIR="${pkgdir}"
}
