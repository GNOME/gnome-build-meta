kind: meson

# Beware of updating to 5.x.x tags when they appear.
#
# Commit 44348e2 (Revert "apply: Don't use staged deployments when /boot is
# automounted") requires a version of ostree that includes f3db79e7
# (finalize-staged: Ensure /boot automount doesn't expire). Without that ostree
# change, staged updates will not be applied at shutdown.
#
# As of September 2022, eos-updater doesn't have a build-time dependency on a
# new-enough libostree because no such version has been released.
sources:
- kind: tar
  url: github_files:endlessm/eos-updater/archive/Release_4.0.7.tar.gz
  ref: 583fd4c02d48d38a5f3f089e654ede2448aec49aaf6d2096a1798538c844d627
- kind: patch
  path: files/eos-updater/no-ostree-httpd.patch

depends:
- core-deps/NetworkManager.bst
- core-deps/libsoup-2.4.bst
- core-deps/mogwai.bst
- freedesktop-sdk.bst:components/avahi.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/gnupg.bst
- freedesktop-sdk.bst:components/ostree.bst
- freedesktop-sdk.bst:bootstrap-import.bst

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/valgrind-maybe.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

variables:
  meson-local: >-
    -Dmetrics=disabled
