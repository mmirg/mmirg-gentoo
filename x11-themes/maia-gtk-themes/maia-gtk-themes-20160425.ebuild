# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils

DESCRIPTION="Manjaro's official Gtk2, Gtk3, Metacity, Xfwm, Openbox, Cinnamon and GNOME Shell themes"
HOMEPAGE="https://github.com/manjaro/artwork-maia-gtk"
GIT_COMMIT="70478a9a7253395f3098d9fd899b95908e914414"
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

S="${WORKDIR}/artwork-maia-gtk-${GIT_COMMIT}"

src_install(){
	insinto /usr/share/themes
	doins -r Breeze*
}
