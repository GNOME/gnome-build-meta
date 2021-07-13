kind: cmake

sources:
- kind: tar
  url: github_com:fish-shell/fish-shell/releases/download/3.3.1/fish-3.3.1.tar.xz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/pcre2.bst
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