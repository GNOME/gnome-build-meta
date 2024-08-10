kind: pyproject

sources:
- kind: git_repo
  url: gnome_gitlab:tchx84/sysext-utils.git
  track: main
  ref: v0.2.1-0-ge53c18c88da46c3fa2ce24702ce8c42c9dfd0f2b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- freedesktop-sdk.bst:snap-images/squashfs-tools.bst
