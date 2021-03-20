# Process for adding components to SDK:
# https://gitlab.gnome.org/GNOME/gnome-build-meta/-/wikis/home#process-to-add-components-to-the-sdk
#
# Process for removing components from SDK:
# https://gitlab.gnome.org/GNOME/gnome-build-meta/-/wikis/home#process-to-remove-components-from-sdk
kind: stack
depends:
- sdk/adobe-source-code-pro-fonts.bst
- sdk/adwaita-icon-theme.bst
- sdk/cantarell-fonts.bst
- sdk/enchant-2.bst
- sdk/gcr.bst
- sdk/gcr-3.bst
- sdk/gjs.bst
- sdk/graphene.bst
- sdk/gssproxy.bst
- sdk/gtk.bst
- sdk/gtksourceview.bst
- sdk/gvfs-client.bst
- sdk/krb5.bst
- sdk/libadwaita.bst
- sdk/libavif.bst
- sdk/libgee.bst
- sdk/libhandy.bst
- sdk/libibus.bst
- sdk/libmanette.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/libwpe.bst
- sdk/mozjs.bst
- sdk/pinentry.bst
- sdk/tracker.bst
- sdk/webkit2gtk-4.1.bst
- sdk/webkitgtk-6.0.bst
- sdk/woff2.bst
- sdk/wpebackend-fdo.bst
- sdk/yelp-xsl.bst
- sdk/yelp.bst
- freedesktop-sdk.bst:components/audit.bst
- freedesktop-sdk.bst:components/libcap-ng.bst
- freedesktop-sdk.bst:platform.bst
