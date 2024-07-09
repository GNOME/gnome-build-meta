kind: pyproject

sources:
- kind: git_repo
  url: gnome_gitlab:tchx84/sysext-utils.git
  track: main
  ref: v0.2.0-1-g3ee3c1f68180c6831925925a6c269dba88f219d0

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- freedesktop-sdk.bst:snap-images/squashfs-tools.bst
