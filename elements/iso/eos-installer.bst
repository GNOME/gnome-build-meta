kind: autotools

sources:
# The tarball does not build. We need to build from git.
# The tarball is just a snapshot of the git repository and is missing
# submodules.
# There is no tarball release of libglnx.
- kind: git_tag
  url: github_com:endlessm/eos-installer.git
  track-tags: true
  track: Release_3.8.0
  submodules:
    ext/libglnx:
      url: gitlab_gnome_org:GNOME/libglnx.git
      checkout: true
  ref: Release_3.8.1-0-g2e32516eefd859458ce95d6bcaceb0862e0713ad
- kind: patch
  path: files/eos-installer/vfat-eosimages.patch
- kind: patch
  path: files/eos-installer/two-partitions.patch
- kind: patch
  path: files/eos-installer/remove-gnome-common.patch
- kind: patch
  path: files/eos-installer/remove-branding.patch
- kind: patch
  path: files/eos-installer/remove-endless-support.patch

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/gnupg.bst
- core-deps/udisks2.bst
- core/gnome-desktop.bst
- sdk/glib-networking.bst
- sdk/glib.bst
- sdk/gtk+-3.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- core-deps/intltool.bst

runtime-depends:
- core/gnome-session.bst