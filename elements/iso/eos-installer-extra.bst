kind: manual

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/systemd.bst

runtime-depends:
- iso-deps/eos-installer.bst
- core/gdm.bst
- core/gnome-backgrounds.bst
- core/gnome-session.bst
- core/gnome-shell.bst

build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/sed.bst

sources:
- kind: local
  path: files/eos-installer-extra/eos-images-loop.service
- kind: local
  path: files/eos-installer-extra/eos-installer.preset
- kind: local
  path: files/eos-installer-extra/run-mount-installercd.mount.in
- kind: local
  path: files/eos-installer-extra/eos-installer.session
- kind: local
  path: files/eos-installer-extra/eos-installer.service
- kind: local
  path: files/eos-installer-extra/eos-installer-session.service
- kind: local
  path: files/eos-installer-extra/installer-user.conf
- kind: local
  path: files/eos-installer-extra/installer-user-dir.conf
- kind: local
  path: files/eos-installer-extra/eos-installer-session.pam
- kind: local
  path: files/eos-installer-extra/eos-installer.json
- kind: local
  path: files/eos-installer-extra/session.conf

variables:
  strip-binaries: ''

config:
  build-commands:
  - |
    sed 's/@VOLUME_ID@/%{installer-volume-id}/g' run-mount-installercd.mount.in \
      >run-mount-installercd.mount

  install-commands:
  - |
    dir="$(pkg-config --variable=systemdsystemunitdir systemd)"
    install -Dm644 -t "%{install-root}${dir}" \
      eos-images-loop.service \
      run-mount-installercd.mount \
      eos-installer-session.service

  - |
    dir="$(pkg-config --variable=systemduserunitdir systemd)"
    install -Dm644 -t "%{install-root}${dir}" \
      eos-installer.service
  - |
    dir="$(pkg-config --variable=systemduserunitdir systemd)"
    install -Dm644 -t "%{install-root}${dir}/gnome-session@eos-installer.target.d" \
      session.conf

  - |
    dir="$(pkg-config --variable=systemdsystempresetdir systemd)"
    install -Dm644 -t "%{install-root}${dir}" \
      eos-installer.preset
  - |
    dir="$(pkg-config --variable=sysusersdir systemd)"
    install -Dm644 -t "%{install-root}${dir}" \
      installer-user.conf

  - |
    dir="$(pkg-config --variable=tmpfilesdir systemd)"
    install -Dm644 -t "%{install-root}${dir}" \
      installer-user-dir.conf

  - |
    install -Dm644 -t "%{install-root}%{datadir}/gnome-session/sessions/" \
      eos-installer.session
  - |
    install -Dm644 eos-installer-session.pam \
      "%{install-root}%{sysconfdir}/pam.d/eos-installer-session"
  - |
    install -Dm644 -t "%{install-root}%{datadir}/gnome-shell/modes/" \
      eos-installer.json

public:
  bst:
    integration-commands:
    - |
      rm "%{indep-libdir}/systemd/system/gdm.service"
