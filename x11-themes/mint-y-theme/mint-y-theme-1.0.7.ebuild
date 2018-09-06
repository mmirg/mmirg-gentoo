# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: 

EAPI="4"

DESCRIPTION="Mint-Y GTK themes"
HOMEPAGE="http://packages.linuxmint.com/pool/main/m/mint-y-theme/"
SRC_URI="http://packages.linuxmint.com/pool/main/m/${PN}/${PN}_${PV}.tar.xz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="x11-themes/gtk-engines-murrine
		 x11-themes/mint-y-icons"

DEPEND="${RDEPEND}"

RESTRICT="binchecks strip"

S=${WORKDIR}

src_install() {
	insinto /usr/share/themes
	doins -r mint-y-theme/usr/share/themes/Mint-Y{,-Dark,-Darker} || die "Installing themes failed!"
	dodoc mint-y-theme/debian/changelog  mint-y-theme/debian/copyright
}
