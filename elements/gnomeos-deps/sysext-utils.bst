kind: pyproject

sources:
- kind: git_repo
  url: gnome_gitlab:World/sysext-utils.git
  track: main
  ref: v0.3.0-40-g54656bc2770dafbf2014e02ef5deaeb3b05792bb

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- freedesktop-sdk.bst:components/squashfs-tools.bst
