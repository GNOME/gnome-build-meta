kind: pyproject

sources:
- kind: git_repo
  url: gnome_gitlab:tchx84/sysext-utils.git
  track: main
  ref: v0.3.0-0-g5ee3c0ddd0360d2bd646a195e4de0424608ae07a

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- freedesktop-sdk.bst:components/squashfs-tools.bst
