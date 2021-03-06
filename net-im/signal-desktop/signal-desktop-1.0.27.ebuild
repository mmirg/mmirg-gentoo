# Copyright 2017 Niranjan Sivakumar
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit eutils gnome2-utils unpacker

DESCRIPTION="Signal Private Messenger for the Desktop"
HOMEPAGE="https://signal.org/"
SRC_URI="https://updates.signal.org/desktop/apt/pool/main/s/${PN}/${PN}_${PV}_amd64.deb"

LICENSE="GPL-3"
KEYWORDS="~amd64"
SLOT="0"

RDEPEND="
	dev-libs/nss
	gnome-base/gconf
	x11-libs/libnotify
	x11-libs/libXScrnSaver
	x11-libs/libXtst"

RESTRICT="mirror"

QA_PREBUILT="
	opt/Signal/libffmpeg.so
	opt/Signal/libnode.so
	opt/Signal/signal-desktop"

S="${WORKDIR}"

src_unpack() {
	unpack_deb "${A}"
}

src_prepare() {
	default

	sed -i -e "s:\"/opt/Signal/signal-desktop\":signal-desktop:g" \
		usr/share/applications/${PN}.desktop || die
}

src_install() {
	insinto /
	doins -r *

	fperms +x /opt/Signal/${PN}
	dosym /opt/Signal/${PN} /usr/bin/${PN}
}

pkg_preinst() {
	gnome2_icon_savelist
}

pkg_postinst() {
	gnome2_icon_cache_update
}

pkg_postrm() {
	gnome2_icon_cache_update
}
