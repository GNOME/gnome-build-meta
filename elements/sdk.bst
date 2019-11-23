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
- freedesktop-sdk.bst:components/autoconf-archive.bst
- freedesktop-sdk.bst:components/autoconf.bst
- freedesktop-sdk.bst:components/automake.bst
- freedesktop-sdk.bst:components/bc.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/ccache.bst
- freedesktop-sdk.bst:components/cmake.bst
- freedesktop-sdk.bst:components/cpio.bst
- freedesktop-sdk.bst:components/docbook-xml.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/ed.bst
- freedesktop-sdk.bst:components/gdb.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:components/groff.bst
- freedesktop-sdk.bst:components/help2man.bst
- freedesktop-sdk.bst:components/libpipeline.bst
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/man-db.bst
- freedesktop-sdk.bst:components/man-pages-posix.bst
- freedesktop-sdk.bst:components/man-pages.bst
- freedesktop-sdk.bst:components/meson.bst
- freedesktop-sdk.bst:components/nasm.bst
- freedesktop-sdk.bst:components/ninja.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:components/openssh.bst
- freedesktop-sdk.bst:components/patch.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/ruby.bst
- freedesktop-sdk.bst:components/strace.bst
- freedesktop-sdk.bst:components/texinfo.bst
- freedesktop-sdk.bst:components/valgrind.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- freedesktop-sdk.bst:components/xdg-portal-interfaces.bst
