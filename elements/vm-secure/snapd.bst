kind: autotools

sources:
- kind: tar
  url: github_files:snapcore/snapd/releases/download/2.61.1/snapd_2.61.1.vendor.tar.xz
  ref: 775b7a250f5241b3bfcebcb3df5055b9c9304c4520502b7abf12438a1cdd771d
- kind: local
  path: files/snapd/tmpfiles-snapd.conf

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/go.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/apparmor.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:snap-images/squashfs-tools.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/xfsprogs.bst
- freedesktop-sdk.bst:bootstrap-import.bst

environment:
  GOPATH: "%{build-root}"
  GO111MODULE: 'off'

variables:
  mount-dir: '/snap'
  conf-local: >-
    --enable-merged-usr
    --enable-apparmor
    --disable-selinux
    --with-snap-mount-dir="%{mount-dir}"
    --without-unit-tests
  libexecdir: '%{indep-libdir}/snapd'
  go-flags: |
    -buildmode=pie \
    -ldflags "-s -linkmode external -extldflags '$LDFLAGS'"
  go-static-flags: |
    -buildmode=pie \
    -ldflags "-s -linkmode external -extldflags '$LDFLAGS -static'"

config:
  configure-commands:
  - |
    mkdir -p src/github.com/snapcore
    ln -sr . src/github.com/snapcore/snapd

  - |
    ./mkversion.sh 2.61.1

  - |
    cd cmd
    autoreconf -i -f

  - |
    cd cmd
    ./configure %{conf-args}

  build-commands:
  - go build -o bins/snapd %{go-flags} github.com/snapcore/snapd/cmd/snapd
  - go build -o bins/snap %{go-flags} github.com/snapcore/snapd/cmd/snap
  - go build -o bins/snap-failure %{go-flags} github.com/snapcore/snapd/cmd/snap-failure
  - go build -o bins/snap-seccomp %{go-flags} github.com/snapcore/snapd/cmd/snap-seccomp
  - go build -o bins/snap-update-ns %{go-static-flags} github.com/snapcore/snapd/cmd/snap-update-ns
  - |
    go build -o bins/snap-exec %{go-static-flags} github.com/snapcore/snapd/cmd/snap-exec
  - |
    go build -o bins/snapctl %{go-static-flags} github.com/snapcore/snapd/cmd/snapctl
  - |
    go build -o bins/snapd-apparmor %{go-flags} github.com/snapcore/snapd/cmd/snapd-apparmor

  - |
    make -C cmd

  install-commands:
  - |
    install -Dm755 -t '%{install-root}%{libexecdir}' \
      bins/snapd \
      bins/snap \
      bins/snap-failure \
      bins/snap-seccomp \
      bins/snap-update-ns \
      bins/snap-exec \
      bins/snapctl \
      bins/snapd-apparmor

  - |
    install -Dm755 -d '%{install-root}%{bindir}'
    ln -sr '%{install-root}%{libexecdir}/snap' '%{install-root}%{bindir}/snap'

  - |
    systemdsystemunitdir="$(pkg-config --variable=systemdsystemunitdir systemd)"
    systemduserunitdir="$(pkg-config --variable=systemduserunitdir systemd)"
    make -C data -j1 install DESTDIR='%{install-root}' \
      SYSTEMDSYSTEMUNITDIR="${systemdsystemunitdir}" \
      SYSTEMDUSERUNITDIR="${systemduserunitdir}" \
      BINDIR="%{bindir}" \
      LIBEXECDIR="%{indep-libdir}" \
      SNAP_MOUNT_DIR="%{mount-dir}" \
      SNAPD_ENVIRONMENT_FILE="%{sysconfdir}/default/snapd"

    for unit in \
        snapd.core-fixup.service \
        snapd.recovery-chooser-trigger.service \
        snapd.system-shutdown.service \
        snapd.snap-repair.timer; do
      rm "%{install-root}${systemdsystemunitdir}/${unit}"
    done

  - |
    make -C cmd -j1 install DESTDIR='%{install-root}'

  - |
    rm -rf '%{install-root}/var'

  - |
    dir="$(pkg-config --variable=tmpfilesdir systemd)"
    install -Dm644 tmpfiles-snapd.conf "%{install-root}${dir}/snapd.conf"

  - |
    install -Dm644 -d "%{install-root}%{prefix}/src"

  - |
    install -Dm644 -t "%{install-root}%{datadir}/polkit-1/actions" data/polkit/io.snapcraft.snapd.policy

  - |
    ln -sr '%{install-root}%{indep-libdir}/snapd/snapctl' '%{install-root}%{bindir}/snapctl'

public:
  initial-script:
    script: |
      #!/bin/bash
      sysroot="${1}"
      chmod 4755 "${sysroot}%{indep-libdir}/snapd/snap-confine"
