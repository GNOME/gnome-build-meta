kind: autotools

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/libcap.bst
- freedesktop-sdk.bst:components/python3.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/pixman.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

variables:
  conf-local: >-
    --disable-werror
    --disable-system
    --disable-user
    --disable-blobs
    --enable-tools

  conf-deterministic: ''
  conf-link-args: ''
  conf-libtool-force-dlsearch: ''
  conf-args: >-
    --prefix=%{prefix}
    --bindir=%{bindir}
    --sbindir=%{sbindir}
    --sysconfdir=%{sysconfdir}
    --datadir=%{datadir}
    --includedir=%{includedir}
    --libdir=%{libdir}
    --libexecdir=%{libexecdir}
    --localstatedir=%{localstatedir}
    --sharedstatedir=%{sharedstatedir}
    --mandir=%{mandir}
    --infodir=%{infodir}
    --localstatedir=/
    --host=%{triplet}
    --build=%{triplet}
    %{conf-extra}
    %{conf-local}

sources:
- kind: git_tag
  url: https://git.qemu.org/git/qemu.git
  track: master
  track-tags: true
  exclude:
  - '*rc*'
  submodules:
    roms/seabios:
      url: https://git.qemu.org/git/seabios.git/
      checkout: True
    roms/SLOF:
      url: https://git.qemu.org/git/SLOF.git
      checkout: True
    roms/ipxe:
      url: https://git.qemu.org/git/ipxe.git
      checkout: True
    roms/openbios:
      url: https://git.qemu.org/git/openbios.git
      checkout: True
    roms/openhackware:
      url: https://git.qemu.org/git/openhackware.git
      checkout: True
    roms/qemu-palcode:
      url: https://git.qemu.org/git/qemu-palcode.git
      checkout: True
    roms/sgabios:
      url: https://git.qemu.org/git/sgabios.git
      checkout: True
    dtc:
      url: https://git.qemu.org/git/dtc.git
      checkout: True
    roms/u-boot:
      url: https://git.qemu.org/git/u-boot.git
      checkout: True
    roms/skiboot:
      url: https://git.qemu.org/git/skiboot.git
      checkout: True
    roms/QemuMacDrivers:
      url: https://git.qemu.org/git/QemuMacDrivers.git
      checkout: True
    ui/keycodemapdb:
      url: https://git.qemu.org/git/keycodemapdb.git
      checkout: True
    capstone:
      url: https://git.qemu.org/git/capstone.git
      checkout: True
    roms/seabios-hppa:
      url: https://git.qemu.org/git/seabios-hppa.git
      checkout: True
    roms/u-boot-sam460ex:
      url: https://git.qemu.org/git/u-boot-sam460ex.git
      checkout: True
    tests/fp/berkeley-testfloat-3:
      url: https://git.qemu.org/git/berkeley-testfloat-3.git
      checkout: True
    tests/fp/berkeley-softfloat-3:
      url: https://git.qemu.org/git/berkeley-softfloat-3.git
      checkout: True
    roms/edk2:
      url: https://git.qemu.org/git/edk2.git
      checkout: True
    slirp:
      url: https://git.qemu.org/git/libslirp.git
      checkout: True
