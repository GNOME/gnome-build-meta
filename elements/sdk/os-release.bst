kind: manual
sources:
- kind: local
  path: files/os-release
build-depends:
- freedesktop-sdk.bst:components/appstream-glib.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
config:
  build-commands:
  - |
    for i in *.in; do
      sed "s/@@SDK_BRANCH@@/%{branch}/g" "${i}" >"$(basename "${i}" .in)"
    done

  install-commands:
  - |
    mkdir -p "%{install-root}%{indep-libdir}"
    install os-release "%{install-root}%{indep-libdir}"
    mkdir -p "%{install-root}%{sysconfdir}"
    ln -s "$(realpath --relative-to="%{install-root}%{sysconfdir}" "%{install-root}%{indep-libdir}/os-release")" %{install-root}%{sysconfdir}/os-release

    mkdir -p "%{install-root}%{sysconfdir}"
    install issue "%{install-root}%{sysconfdir}"
    install issue.net "%{install-root}%{sysconfdir}"

    mkdir -p "%{install-root}%{datadir}/appdata"
    install org.gnome.Platform.appdata.xml "%{install-root}%{datadir}/appdata"
    install org.gnome.Sdk.appdata.xml "%{install-root}%{datadir}/appdata"

    appstream-compose --basename=org.gnome.Platform --prefix=%{install-root}%{prefix} --origin=flatpak org.gnome.Platform
    appstream-compose --basename=org.gnome.Sdk --prefix=%{install-root}%{prefix} --origin=flatpak org.gnome.Sdk
