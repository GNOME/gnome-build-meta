kind: flatpak_image

build-depends:
- vm/doc-app/extract-doc.bst
- freedesktop-sdk.bst:integration/platform-integration.bst

config:
  directory: '/app'

  metadata:
    Application:
      name: org.gnome.GnomeOSDoc
      # We need Sdk to have man
      runtime: org.gnome.Sdk/%{gcc_arch}/%{branch}
      sdk: org.gnome.Sdk/%{gcc_arch}/%{branch}
      command: yelp

    Context:
      sockets: "wayland;"
      devices: "dri;"

    Environment:
      MANPATH: /app/share/man
      INFOPATH: /app/share/info
      XML_CATALOG_FILES: /app/etc/xml/catalog
      #Should be already defined by SDK: XDG_DATA_DIRS: /app/share
