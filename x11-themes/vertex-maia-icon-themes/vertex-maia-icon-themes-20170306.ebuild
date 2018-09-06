# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils git-r3

DESCRIPTION="Maia Circle Icon Theme"
HOMEPAGE="https://github.com/manjaro/vertex-maia-icon-themes"
EGIT_REPO_URI="${HOMEPAGE}"
EGIT_COMMIT="2b2469e5cec1c850a982f6ae1253d6d4b74e4369"
SRC_URI=""

LICENSE="LGPL-3.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	x11-themes/hicolor-icon-theme
	gnome-base/librsvg
"
RDEPEND="${DEPEND}"

src_install(){
	insinto /usr/share/icons
	doins -r Vertex-Maia
}
