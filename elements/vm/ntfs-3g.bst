kind: autotools

sources:
- kind: tar
  url: https://jp-andre.pagesperso-orange.fr/ntfs-3g_ntfsprogs-2017.3.23AR.5.tgz

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --disable-ldconfig

config:
  install-commands:
    (>):
    - ln -s mount.ntfs-3g %{install-root}%{bindir}/mount.ntfs
