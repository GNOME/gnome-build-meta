kind: pyproject

sources:
- kind: git_repo
  url: gnome_gitlab:tchx84/sysext-utils.git
  track: main
  ref: v0.2.0-5-gc5336b4cbc39cef0a04e2eb4e9ff22431e3c5b4d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- freedesktop-sdk.bst:snap-images/squashfs-tools.bst
