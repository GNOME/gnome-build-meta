kind: autotools

sources:
- kind: git_repo
  url: gitlab:qemu-project/qemu.git
  track: v*
  exclude:
  - "*-rc*"
  ref: v10.2.1-0-g2d3df8abca265c9bcc9e438d691d561592060998

# subprojects
- kind: git_repo
  directory: subprojects/dtc
  url: gitlab:qemu-project/dtc.git
  ref: b6910bec11614980a21e46fbccc35934b671bd81
- kind: git_repo
  directory: subprojects/keycodemapdb
  url: gitlab:qemu-project/keycodemapdb.git
  ref: f5772a62ec52591ff6870b7e8ef32482371f22c6
- kind: git_repo
  directory: subprojects/berkeley-softfloat-3
  url: gitlab:qemu-project/berkeley-softfloat-3.git
  ref: b64af41c3276f97f0e181920400ee056b9c88037
- kind: git_repo
  directory: subprojects/berkeley-testfloat-3
  url: gitlab:qemu-project/berkeley-testfloat-3.git
  ref: e7af9751d9f9fd3b47911f51a5cfd08af256a9ab

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/meson.bst
- freedesktop-sdk.bst:components/ninja.bst
- gnomeos-deps/pcre2-static.bst
- gnomeos-deps/glib-static.bst
- gnomeos-deps/zlib-ng-static.bst

variables:
  (?):
  - arch == "x86_64":
      targets: --target-list=aarch64-linux-user,riscv64-linux-user
      binfmts: >-
        aarch64
        riscv64
  - arch == "aarch64":
      targets: --target-list=x86_64-linux-user,riscv64-linux-user
      binfmts: >-
        x86_64
        riscv64
  - arch == "riscv64":
      targets: --target-list=x86_64-linux-user,aarch64-linux-user
      binfmts: >-
        aarch64
        x86_64

  conf-local: >-
    --disable-download
    --disable-werror
    --disable-system
    --enable-user
    --static
    --disable-install-blobs

  conf-global: >-
    --host=%{triplet}
    --build=%{triplet}
    --disable-dependency-tracking

  conf-args: >-
    %{targets}
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
    %{conf-global}
    %{conf-local}

config:
  configure-commands:
    (<):
    - |
      # patch subprojects on behalf of meson
      cp -v subprojects/packagefiles/berkeley-softfloat-3/* subprojects/berkeley-softfloat-3/
      cp -v subprojects/packagefiles/berkeley-testfloat-3/* subprojects/berkeley-testfloat-3/

  install-commands:
    (>):
    - |
      mkdir -p '%{install-root}%{indep-libdir}/binfmt.d'
      for binfmt in %{binfmts}; do
        bash scripts/qemu-binfmt-conf.sh \
          --qemu-path '%{bindir}' \
          --systemd "${binfmt}" \
          --exportdir '%{install-root}%{indep-libdir}/binfmt.d' \
          --persistent yes
      done

    # /usr/share is provided by qemu-system
    - |
      rm -rf '%{install-root}%{datadir}'
