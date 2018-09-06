# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="SkypeWeb Plugin for Pidgin"
HOMEPAGE="https://codeload.github.com/EionRobb/skype4pidgin/zip/master"
SRC_URI="skype4pidgin-master.zip"
LICENSE="GPL-3+"
KEYWORDS="~amd64 ~x86"
SLOT="0"

RDEPEND="net-im/pidgin
	dev-libs/json-glib"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

S="${WORKDIR}/skype4pidgin-master/skypeweb"
