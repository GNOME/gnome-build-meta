kind: autotools

sources:
- kind: tar
  url: github_files:espeak-ng/espeak-ng/releases/download/1.50/espeak-ng-1.50.tgz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  notparallel: true

config:
  configure-commands:
    (<):
    # force autogen
    - rm -f configure
