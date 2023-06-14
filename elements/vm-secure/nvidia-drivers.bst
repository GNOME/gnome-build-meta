kind: manual

sources:
- kind: remote
  url: nvidia:XFree86/Linux-x86_64/550.54.14/NVIDIA-Linux-x86_64-550.54.14.run
  ref: 8c497ff1cfc7c310fb875149bc30faa4fd26d2237b2cba6cd2e8b0780157cfe3
- kind: local
  path: files/nvidia-config/modprobe.conf
  directory: local-config
- kind: local
  path: files/nvidia-config/modules-load.conf
  directory: local-config

build-depends:
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/linux.bst
- freedesktop-sdk.bst:components/tar.bst

environment:
  TAR_OPTIONS: >-
    --no-same-owner
    --no-same-permissions

config:
  build-commands:
  - |
    sh *.run -x

  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}/kernel"
    kernel_version=$(basename /usr/lib/modules/*)
    make KERNEL_UNAME="${kernel_version}"

  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"
    tar jxf nvidia-persistenced-init.tar.bz2
    # FIXME: we can make a new user and create the nodes from udev instead
    sed 's/__USER__/root/g' nvidia-persistenced-init/systemd/nvidia-persistenced.service.template >nvidia-persistenced.service

  install-commands:
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}/kernel"
    kernel_version=$(basename /usr/lib/modules/*)
    make -j1 KERNEL_UNAME="${kernel_version}" modules_install INSTALL_MOD_PATH='%{install-root}%{prefix}'

  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm644 -t "%{install-root}%{libdir}/GL/default/share/glvnd/egl_vendor.d" 10_nvidia.json
    install -Dm644 -t "%{install-root}%{datadir}/egl/egl_external_platform.d" 10_nvidia_wayland.json 15_nvidia_gbm.json

    install -Dm644 -t "%{install-root}%{libdir}/GL/default/share/vulkan/implicit_layer.d" nvidia_layers.json
    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib/vulkan/icd.d" nvidia_icd.json

    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib" \
      libnvidia-glcore.so* \
      libGLX_nvidia.so* \
      libnvidia-glsi.so* \
      libnvidia-glvkspirv.so* \
      libnvidia-eglcore.so* \
      libnvidia-tls.so* \
      libEGL_nvidia.so* \
      libGLESv2_nvidia.so* \
      libGLESv1_CM_nvidia.so* \
      libnvidia-egl-wayland.so* \
      libnvidia-egl-gbm.so* \
      libnvidia-gpucomp.so* \
      libnvidia-rtcore.so* \
      libnvoptix.so* \
      libnvidia-ngx.so* \
      libnvidia-allocator.so* \
      libnvidia-cfg.so*

    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib/vdpau" libvdpau_nvidia.so*

    for dir in "%{install-root}%{libdir}/GL/default"/{lib,lib/vdpau}; do
      for lib in "${dir}"/*.so*; do
        soname="$(objdump -p "${lib}" | sed "/ *SONAME */{;s///;q;};d")"
        if [ -z "${soname}" ]; then
          soname="$(basename "${lib}")"
        fi
        if ! [ -f "${dir}/${soname}" ]; then
          ln -s "$(basename "${lib}")" "${dir}/${soname}"
        fi
      done
    done

    mkdir -p "%{install-root}%{libdir}/GL/lib/gbm"
    ln -sr "%{install-root}%{libdir}/GL/default/lib/libnvidia-allocator.so.1" "%{install-root}%{libdir}/GL/lib/gbm/nvidia-drm_gbm.so"

  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm755 -t '%{install-root}%{bindir}' nvidia-persistenced
    install -Dm644 -t '%{install-root}%{indep-libdir}/systemd/system' nvidia-persistenced.service
    install -d -m755 '%{install-root}%{indep-libdir}/systemd/system/multi-user.target.upholds/'
    ln -s ../nvidia-persistenced.service '%{install-root}%{indep-libdir}/systemd/system/multi-user.target.upholds/'
    install -d -m755 '%{install-root}%{indep-libdir}/systemd/system/gdm.service.upholds'
    install -d -m755 '%{install-root}%{indep-libdir}/systemd/system/gdm.service.d'
    ln -s ../nvidia-persistenced.service '%{install-root}%{indep-libdir}/systemd/system/gdm.service.upholds/'
    cat <<EOF >'%{install-root}%{indep-libdir}/systemd/system/gdm.service.d/nvidia-persistenced.conf'
    [Unit]
    After=nvidia-persistenced.service
    After=sysext-reload.service
    EOF

  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm755 -t '%{install-root}%{bindir}' systemd/nvidia-sleep.sh
    install -Dm755 -t '%{install-root}%{indep-libdir}/systemd/system-sleep' systemd/system-sleep/nvidia
    install -Dm644 -t '%{install-root}%{indep-libdir}/systemd/system' systemd/system/nvidia-{hibernate,resume,suspend}.service

    mkdir -p '%{install-root}%{indep-libdir}'/systemd/system/systemd-{hibernate,resume,suspend}.service.wants
    ln -s ../nvidia-hibernate.service '%{install-root}%{indep-libdir}'/systemd/system/systemd-hibernate.service.wants/
    ln -s ../nvidia-suspend.service '%{install-root}%{indep-libdir}'/systemd/system/systemd-suspend.service.wants/
    ln -s ../nvidia-resume.service '%{install-root}%{indep-libdir}'/systemd/system/systemd-resume.service.wants/
    ln -s ../nvidia-resume.service '%{install-root}%{indep-libdir}'/systemd/system/systemd-hibernate.service.wants/

  - |
    install -Dm644 local-config/modprobe.conf "%{install-root}%{indep-libdir}/modprobe.d/nvidia.conf"
    install -Dm644 local-config/modules-load.conf "%{install-root}%{indep-libdir}/modules-load.d/nvidia.conf"

public:
  bst:
    split-rules:
      modules:
      - '%{indep-libdir}/modules/**'
      - '%{indep-libdir}/modprobe.d/**'
      - '%{indep-libdir}/modules-load.d/**'
      libs:
      - '%{libdir}/GL/**'
      - '%{datadir}/egl/**'
      - '%{indep-libdir}/systemd/**'
      - '%{bindir}/*'
