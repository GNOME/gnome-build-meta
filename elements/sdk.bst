kind: stack
depends:
- sdk-platform.bst
- sdk/gnome-common.bst
- sdk/gtk-doc.bst
- sdk/python-pygments.bst
- sdk/vala.bst
- sdk/yelp-tools.bst

# We can't depend on desktop.bst from freedesktop-sdk directly, as that would bring
# unwanted dependencies. See sdk-platform.bst for details.
# This should be kept in sync with desktop.bst from freedesktop-sdk whenever we
# update our reference.
# elements we remove: desktop-platform and gtk-doc.
- filename: base.bst
  junction: freedesktop-sdk.bst
- filename: desktop/desktop-file-utils.bst
  junction: freedesktop-sdk.bst
- filename: desktop/itstools.bst
  junction: freedesktop-sdk.bst
- filename: desktop/jq.bst
  junction: freedesktop-sdk.bst
- filename: desktop/mercurial.bst
  junction: freedesktop-sdk.bst
- filename: desktop/wayland-protocols.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-proto-xcb.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-proto-xorgproto.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-util-macros.bst
  junction: freedesktop-sdk.bst
