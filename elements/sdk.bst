kind: stack
depends:
- sdk-platform.bst
- sdk/gtk-doc.bst
- sdk/python-pygments.bst
- sdk/vala.bst
- sdk/yelp-tools.bst

# We can't depend on desktop.bst from freedesktop-sdk directly, as that would bring
# unwanted dependencies. See sdk-platform.bst for details.
# This should be kept in sync with desktop.bst from freedesktop-sdk whenever we
# update our reference.
# elements we remove: platform and gtk-doc.
- filename: components/autoconf-archive.bst
  junction: freedesktop-sdk.bst
- filename: components/autoconf.bst
  junction: freedesktop-sdk.bst
- filename: components/automake.bst
  junction: freedesktop-sdk.bst
- filename: components/bc.bst
  junction: freedesktop-sdk.bst
- filename: components/bison.bst
  junction: freedesktop-sdk.bst
- filename: components/ccache.bst
  junction: freedesktop-sdk.bst
- filename: components/cmake.bst
  junction: freedesktop-sdk.bst
- filename: components/cpio.bst
  junction: freedesktop-sdk.bst
- filename: components/docbook-xml.bst
  junction: freedesktop-sdk.bst
- filename: components/docbook-xsl.bst
  junction: freedesktop-sdk.bst
- filename: components/ed.bst
  junction: freedesktop-sdk.bst
- filename: components/gdb.bst
  junction: freedesktop-sdk.bst
- filename: components/git.bst
  junction: freedesktop-sdk.bst
- filename: components/gperf.bst
  junction: freedesktop-sdk.bst
- filename: components/groff.bst
  junction: freedesktop-sdk.bst
- filename: components/help2man.bst
  junction: freedesktop-sdk.bst
- filename: components/libpipeline.bst
  junction: freedesktop-sdk.bst
- filename: components/m4.bst
  junction: freedesktop-sdk.bst
- filename: components/man-db.bst
  junction: freedesktop-sdk.bst
- filename: components/man-pages-posix.bst
  junction: freedesktop-sdk.bst
- filename: components/man-pages.bst
  junction: freedesktop-sdk.bst
- filename: components/meson.bst
  junction: freedesktop-sdk.bst
- filename: components/nasm.bst
  junction: freedesktop-sdk.bst
- filename: components/ninja.bst
  junction: freedesktop-sdk.bst
- filename: components/perl.bst
  junction: freedesktop-sdk.bst
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
- filename: components/openssh.bst
  junction: freedesktop-sdk.bst
- filename: components/patch.bst
  junction: freedesktop-sdk.bst
- filename: components/pkg-config.bst
  junction: freedesktop-sdk.bst
- filename: components/ruby.bst
  junction: freedesktop-sdk.bst
- filename: components/strace.bst
  junction: freedesktop-sdk.bst
- filename: components/texinfo.bst
  junction: freedesktop-sdk.bst
- filename: components/valgrind.bst
  junction: freedesktop-sdk.bst
- filename: components/desktop-file-utils.bst
  junction: freedesktop-sdk.bst
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
- filename: components/jq.bst
  junction: freedesktop-sdk.bst
- filename: components/wayland-protocols.bst
  junction: freedesktop-sdk.bst
- filename: components/xdg-portal-interfaces.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-proto-xcb.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-proto-xorgproto.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-util-macros.bst
  junction: freedesktop-sdk.bst
