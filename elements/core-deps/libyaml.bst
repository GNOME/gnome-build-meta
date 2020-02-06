kind: autotools
sources:
- kind: tar
  url: github_com:yaml/libyaml/archive/0.1.7.tar.gz
  ref: e1884d0fa1eec8cf869ac6bebbf25391e81956aa2970267f974a9fa5e0b968e2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
