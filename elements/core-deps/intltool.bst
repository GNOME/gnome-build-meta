kind: autotools
sources:
- kind: tar
  url: https://launchpad.net/intltool/trunk/0.51.0/+download/intltool-0.51.0.tar.gz
  ref: 67c74d94196b153b774ab9f89b2fa6c6ba79352407037c8c14d5aeb334e959cd
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

