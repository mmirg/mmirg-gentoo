# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit qmake-utils

DESCRIPTION="Additional style plugins for Qt"
HOMEPAGE="https://github.com/qt/qtstyleplugins"
LICENSE="LGPL"
SLOT="0"
GIT_COMMIT="600c296f4d429ffeb8203feb54efeacc2bbea0f7"
SRC_URI="${HOMEPAGE}/archive/${GIT_COMMIT}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64 ~x86"

IUSE=""

RDEPEND="dev-qt/qtcore:5
         x11-libs/gtk+:2
         x11-libs/libX11"
DEPEND="${RDEPEND}"
S="${WORKDIR}/qtstyleplugins-${GIT_COMMIT}"

src_configure() {
	eqmake5 PREFIX="${D}"/usr
}

src_install() {
	emake INSTALL_ROOT="${D}" install
}
