# Process for adding components to SDK:
# https://gitlab.gnome.org/GNOME/gnome-build-meta/-/wikis/home#process-to-add-components-to-the-sdk
#
# Process for removing components from SDK:
# https://gitlab.gnome.org/GNOME/gnome-build-meta/-/wikis/home#process-to-remove-components-from-sdk
kind: stack
depends:
- sdk-platform.bst
- sdk/gi-docgen.bst
- sdk/gtk-doc.bst
- sdk/sysprof-agent.bst
- sdk/sysprof-minimal.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:components/appstream.bst
- freedesktop-sdk.bst:components/libabigail.bst
- freedesktop-sdk.bst:components/ruby.bst
- freedesktop-sdk.bst:sdk.bst
