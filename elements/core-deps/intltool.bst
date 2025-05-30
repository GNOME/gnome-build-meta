kind: autotools
sources:
- kind: tar
  url: launchpad:intltool/trunk/0.51.0/+download/intltool-0.51.0.tar.gz
  ref: 67c74d94196b153b774ab9f89b2fa6c6ba79352407037c8c14d5aeb334e959cd
- kind: patch_queue
  path: patches/intltool/
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
runtime-depends:
- freedesktop-sdk.bst:components/gettext.bst
depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
