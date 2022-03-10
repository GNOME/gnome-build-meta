kind: autotools

sources:
# The tarball does not build. We need to build from git.
# The tarball is just a snapshot of the git repository and is missing
# submodules.
# There is no tarball release of libglnx.
- kind: git_tag
  url: github:endlessm/eos-installer.git
  track-tags: true
  track: Release_4.0.2
  submodules:
    ext/libglnx:
      url: gnome:libglnx.git
      checkout: true
  ref: Release_4.0.3-0-gfe9f6eb2224d2e24e3fba80c6845777e5f619702
- kind: patch
  path: files/eos-installer/vfat-eosimages.patch
- kind: patch
  path: files/eos-installer/remove-branding.patch
- kind: patch
  path: files/eos-installer/remove-endless-support.patch
- kind: patch
  path: files/eos-installer/riscv.patch

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
