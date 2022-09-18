kind: autotools

sources:
# The tarball does not build. We need to build from git.
# The tarball is just a snapshot of the git repository and is missing
# submodules.
# There is no tarball release of libglnx.
- kind: git_tag
  url: github:endlessm/eos-installer.git
  track-tags: true
  track: Release_4.0.7
  submodules:
    ext/libglnx:
      url: gnome:libglnx.git
      checkout: true
  ref: Release_4.0.9-0-g3f384acc76f537675fa4d8817a5f49cf2e455f51
- kind: patch
  path: files/eos-installer/vfat-eosimages.patch
- kind: patch
  path: files/eos-installer/remove-branding.patch
- kind: patch
  path: files/eos-installer/remove-endless-support.patch
- kind: patch
  path: files/eos-installer/riscv.patch
- kind: patch
  path: files/eos-installer/0001-polkit-rules-use-non-sugary-closure-syntax.patch
- kind: patch
  path: files/eos-installer/0001-polkit-rules-tweak-to-be-ecma-5-compatible.patch

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
