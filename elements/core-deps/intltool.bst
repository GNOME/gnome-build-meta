kind: autotools
sources:
- kind: tar
  url: https://launchpad.net/intltool/trunk/0.51.0/+download/intltool-0.51.0.tar.gz
- kind: patch
  path: files/intltool/intltool-perl-5.22-compatibility.patch
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
runtime-depends:
- freedesktop-sdk.bst:components/gettext.bst
depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:bootstrap-import.bst
