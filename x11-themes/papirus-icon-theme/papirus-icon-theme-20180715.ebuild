# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6

inherit eutils git-r3

DESCRIPTION="Papirus icon theme for GTK and KDE"
HOMEPAGE="https://github.com/PapirusDevelopmentTeam/papirus-icon-theme"
EGIT_REPO_URI="${HOMEPAGE}"
EGIT_COMMIT="b369c30d089bad3a857c82adcf4f181ca3d27ba9"
SRC_URI=""

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install(){
	insinto /usr/share/icons
	doins -r Papirus Papirus-Dark
}
