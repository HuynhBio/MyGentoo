# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit flag-o-matic

DESCRIPTION="A Vietnamese IME for IBus"
HOMEPAGE="https://github.com/BambooEngine/ibus-bamboo"
SRC_URI="https://github.com/BambooEngine/ibus-bamboo/archive/refs/tags/v0.8.1-RC1.tar.gz"

LICENSE="GPL3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="app-i18n/ibus"
RDEPEND="${DEPEND}"
BDEPEND="sys-devel/make
        dev-lang/go
        x11-libs/libX11
        x11-libs/libXtst
        gui-libs/gtk"
MY_PV="ibus-bamboo-0.8.1-RC1"
S="${WORKDIR}"/"${MY_PV}"
PATCHES=(
	"${FILESDIR}/bamboo-make.patch"
)
