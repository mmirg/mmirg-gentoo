# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

VALA_USE_DEPEND="vapigen"

inherit gnome2-utils gnome2 xdg-utils vala meson

DESCRIPTION="Cross-desktop libraries and common resources"
HOMEPAGE="https://github.com/linuxmint/xapps/"
LICENSE="GPL-3"

SRC_URI="https://github.com/linuxmint/xapps/archive/${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64 ~x86"

SLOT="0"
IUSE="introspection static-libs +vala"

REQUIRED_USE="vala? ( introspection )"

RDEPEND="
	>=dev-libs/glib-2.37.3:2
	dev-libs/gobject-introspection:0=
	gnome-base/libgnomekbd
	gnome-base/gnome-common
	x11-libs/cairo
	>=x11-libs/gdk-pixbuf-2.22.0:2[introspection?]
	>=x11-libs/gtk+-3.3.16:3[introspection?]
	x11-libs/libxkbfile
	vala? ( $(vala_depend) )

"
DEPEND="${RDEPEND}
	sys-devel/gettext
	dev-util/gtk-doc
	dev-util/gtk-doc-am
"



src_prepare() {
#	eapply_user
	use vala && vala_src_prepare
	gnome2_src_prepare
}


pkg_postinst() {
	gnome2_icon_cache_update
}

pkg_postrm() {
	gnome2_icon_cache_update
}
