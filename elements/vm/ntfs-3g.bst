kind: autotools

sources:
- kind: tar
  url: gnome_download:teams/releng/tarballs-needing-help/ntfs-3g/ntfs-3g_ntfsprogs-2017.3.23AR.5.tgz

  ref: 04ccf583b495806cefb71850e5899e50aed5e7bf23365259f2badaa9af21e5ed
depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --disable-ldconfig

config:
  install-commands:
    (>):
    - ln -s mount.ntfs-3g %{install-root}%{bindir}/mount.ntfs
