kind: autotools

sources:
# The tarball does not build. We need to build from git.
# The tarball is just a snapshot of the git repository and is missing
# submodules.
# There is no tarball release of libglnx.
- kind: git_repo
  url: github:endlessm/eos-installer.git
  track: Release_4.0.7
  ref: Release_4.0.7-0-g3f384acc76f537675fa4d8817a5f49cf2e455f51
- kind: git_module
  url: gnome:libglnx.git
  path: ext/libglnx
  ref: e16bdc7ef91e5bbdfc1881b51332226393275bb9
- kind: patch
  path: patches/eos-installer/vfat-eosimages.patch
- kind: patch
  path: patches/eos-installer/remove-branding.patch
- kind: patch
  path: patches/eos-installer/remove-endless-support.patch
- kind: patch
  path: patches/eos-installer/riscv.patch
- kind: patch
  path: patches/eos-installer/0001-polkit-rules-use-non-sugary-closure-syntax.patch
- kind: patch
  path: patches/eos-installer/0001-polkit-rules-tweak-to-be-ecma-5-compatible.patch
- kind: patch
  path: patches/eos-installer/usrfs.patch
- kind: patch
  path: patches/eos-installer/eos-images-not-before-local-fs-target.patch

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
