kind: cmake

sources:
- kind: tar
  url: github_files:fish-shell/fish-shell/releases/download/3.7.1/fish-3.7.1.tar.xz
  ref: 614c9f5643cd0799df391395fa6bbc3649427bb839722ce3b114d3bbc1a3b250

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
