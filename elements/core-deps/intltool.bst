kind: autotools
sources:
- kind: tar
  url: https://launchpad.net/intltool/trunk/0.51.0/+download/intltool-0.51.0.tar.gz
- kind: patch
  path: files/intltool/intltool-perl-5.22-compatibility.patch
depends:
- filename: components/gettext.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
- filename: components/perl.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst

