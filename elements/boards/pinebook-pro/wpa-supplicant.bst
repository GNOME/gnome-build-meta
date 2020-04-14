kind: manual

sources:
- kind: tar
  url: https://w1.fi/releases/wpa_supplicant-2.9.tar.gz

depends:
- freedesktop-sdk.bst:components/dbus.bst
- core-deps/libnl.bst

build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst

variables:
  config: |
    # Add configuration here
  make-args: >-
    BINDIR="%{bindir}"
    LIBDIR="%{libdir}"
    DESTDIR="%{install-root}"

config:
  configure-commands:
  - cp wpa_supplicant/defconfig wpa_supplicant/.config

  - |
    cat <<\EOF >>wpa_supplicant/.config
    %{config}
    EOF

  build-commands:
  - |
    cd wpa_supplicant
    make %{make-args}

  install-commands:
  - |
    cd wpa_supplicant
    make -j1 %{make-args} install

  - |
    cd wpa_supplicant
    systemservices=$(pkg-config --variable system_bus_services_dir dbus-1)
    install -Dm644 -t "%{install-root}${systemservices}" dbus/fi.w1.wpa_supplicant1.service

  - |
    cd wpa_supplicant
    systemdir=$(pkg-config --variable system_bus_services_dir dbus-1)/dbus-1/system.d
    install -Dm644 dbus/dbus-wpa_supplicant.conf "%{install-root}${systemdir}/wpa_supplicant.conf"
