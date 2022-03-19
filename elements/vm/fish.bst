kind: cmake

sources:
- kind: tar
  url: github_files:fish-shell/fish-shell/releases/download/3.5.1/fish-3.5.1.tar.xz
  ref: a6d45b3dc5a45dd31772e7f8dfdfecabc063986e8f67d60bd7ca60cc81db6928

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  cmake-local: >-
    -DCMAKE_INSTALL_SYSCONFDIR=%{sysconfdir}
    -DCURSES_NEED_NCURSES=TRUE

public:
  bst:
    integration-commands:
    - echo %{bindir}/fish >> /etc/shells

# Do not display the .desktop file in the launcher.
# The reason it was added was for appimage builds, not cause its a critical part of the software.
# It doesn't need to be shown in gnome-os.
# https://github.com/fish-shell/fish-shell/commit/eb7172458b628b81a3f70f38a0e58c7c23202f05
config:
  install-commands:
    (>):
    - echo "NoDisplay=true" >> "%{install-root}%{datadir}/applications/fish.desktop"
