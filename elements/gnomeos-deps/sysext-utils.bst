kind: pyproject

sources:
- kind: git_repo
  url: gnome_gitlab:World/sysext-utils.git
  track: main
  ref: v0.4.0-1-gb9611d8211d5e03a887a873aa8a912380651d425

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- freedesktop-sdk.bst:components/squashfs-tools.bst
