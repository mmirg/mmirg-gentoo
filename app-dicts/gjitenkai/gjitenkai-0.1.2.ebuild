# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit cmake-utils gnome2-utils

DESCRIPTION="A new implementation of Gjiten, a Gnome japanese dictionary"
HOMEPAGE="https://github.com/odrevet/gjitenkai"
SRC_URI="https://github.com/odrevet/gjitenkai/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="x11-libs/gtk+:3"

RDEPEND="${DEPEND}"

pkg_preinst() {
	gnome2_icon_savelist
	gnome2_schemas_savelist
}

src_install() {
	addpredict "/usr/share/glib-2.0/schemas/"
	cd "${WORKDIR}"/"${P}"_build/
	default
}

pkg_postinst() {
	gnome2_icon_cache_update
	gnome2_schemas_update
}

pkg_postrm() {
	gnome2_icon_cache_update
	gnome2_schemas_update
}
