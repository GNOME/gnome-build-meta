kind: script

build-depends:
- vm/common-deps.bst
- sdk.bst
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  layout:
  - element: vm/common-deps.bst
    destination: "/sysroot"
  - element: sdk.bst
    destination: "/sysroot"
  - element: bootstrap-import.bst
    destination: "/"

  commands:
  - mkdir -p "%{install-root}/app/share"
  - mkdir -p "%{install-root}/app/share/xml"
  - mkdir -p "%{install-root}/app/share/gnome"
  - mkdir -p "%{install-root}/etc"
  - cp -r "/sysroot%{mandir}" "%{install-root}/app/share/man"
  - cp -r "/sysroot%{infodir}" "%{install-root}/app/share/info"
  - |
    if [ -d "/sysroot%{datadir}/gnome/help" ]; then
      cp -r "/sysroot%{datadir}/gnome/help" "%{install-root}/app/share/gnome/help"
    fi
  - cp -r "/sysroot%{datadir}/help" "%{install-root}/app/share/help"
  - cp -r "/sysroot%{datadir}/doc" "%{install-root}/app/share/doc"
  - cp -r "/sysroot%{datadir}/gtk-doc" "%{install-root}/app/share/gtk-doc"
  - cp -r "/sysroot%{datadir}/xml/docbook" "%{install-root}/app/share/xml"
  - cp -r "/sysroot/etc/xml" "%{install-root}/app/etc"
  - sed -i 's,%{datadir},/app/share,g' "%{install-root}/app/etc"/*
