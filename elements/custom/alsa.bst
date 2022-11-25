kind: stack

depends:
- freedesktop-sdk.bst:components/alsa-lib.bst
- freedesktop-sdk.bst:components/alsa-plugins.bst

sources:
- kind: patch
  path: files/alsa-lib/sysconfig-ostree.patch