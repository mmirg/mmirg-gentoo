# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils

DESCRIPTION="Breath GTK2/3 Theme for Manjaro Linux"
HOMEPAGE="https://github.com/manjaro/artwork-breath-gtk"
GIT_COMMIT="da2706640f457f89de6c26312e391b244ff550b4"
SRC_URI="${HOMEPAGE}/archive/${GIT_COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-3.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	x11-themes/gtk-engines
	x11-themes/gtk-engines-murrine
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/artwork-breath-gtk-${GIT_COMMIT}"

src_install(){
	insinto /usr/share/themes
	doins -r Breath*
}
