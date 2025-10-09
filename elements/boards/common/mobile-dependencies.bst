kind: stack
description: generic common zone for dependencies related to the PinePhone Pro & PinePhone.

depends:
- gnomeos-deps/deps.bst
- gnomeos/os-release-user.bst

- core/meta-gnome-core-mobile.bst

- core-deps/ModemManager.bst
- core-deps/feedbackd.bst

- freedesktop-sdk.bst:components/iputils.bst

- boards/common/alsa-utils.bst
- boards/common/atinout.bst
- boards/common/chatty.bst
- boards/common/eg25-manager.bst
- boards/common/iw.bst
