# Distributed under the terms of the GNU General Public License v2

EAPI="5"

inherit font

DESCRIPTION="A monospaced sans-serif typeface, used in Mac OS X"
HOMEPAGE="http://www.gringod.com/2006/11/01/new-version-of-monaco-font/"
SRC_URI="http://build.funtoo.org/distfiles/${P}.tar.xz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="*"
IUSE=""

FONT_SUFFIX="ttf"
FONT_S="${S}"
FONTDIR="/usr/share/fonts/monaco"

# Only installs fonts
RESTRICT="strip binchecks"

src_install() {
	font_src_install
}
