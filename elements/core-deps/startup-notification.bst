kind: autotools

sources:
- kind: git_repo
  url: freedesktop:xdg/startup-notification.git
  track: STARTUP_NOTIFICATION_*
  ref: STARTUP_NOTIFICATION_0_12-0-gfce365db713897a9cc6b52cac6536f4cb9c3abf1

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- freedesktop-sdk.bst:components/xcb-util.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
