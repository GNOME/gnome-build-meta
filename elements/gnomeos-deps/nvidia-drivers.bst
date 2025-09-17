kind: manual

sources:
- kind: remote
  url: nvidia:XFree86/Linux-x86_64/580.82.09/NVIDIA-Linux-x86_64-580.82.09.run
  ref: 3eecf832da2e15e0e09ac34c29d2c7a03803182f9045787a355cacbe5b5695b7
- kind: local
  path: files/nvidia-config/modprobe.conf
  directory: local-config
- kind: local
  path: files/nvidia-config/modules-load.conf
  directory: local-config

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/tar.bst
- filename: freedesktop-sdk.bst:components/linux.bst
  strict: true

variables:
  strip-binaries: ''

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
    cd "${base_name}/kernel-open"
    kernel_version=$(basename /usr/lib/modules/*)
    cat <<EOF >>Kbuild
    EXTRA_CFLAGS+=-Wno-error=incompatible-pointer-types
    EOF
    make KERNEL_UNAME="${kernel_version}"

  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"
    tar jxf nvidia-persistenced-init.tar.bz2
    # FIXME: we can make a new user and create the nodes from udev instead
    sed 's/__USER__/root/g' nvidia-persistenced-init/systemd/nvidia-persistenced.service.template >nvidia-persistenced.service

  install-commands:
  # Kernel Modules
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}/kernel-open"
    kernel_version=$(basename /usr/lib/modules/*)
    make -j1 KERNEL_UNAME="${kernel_version}" modules_install INSTALL_MOD_PATH='%{install-root}%{prefix}'

  # Components names are taken from the .manifest file inside the archive
  # installer
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm755 -t "%{install-root}%{bindir}" nvidia-bug-report.sh
    install -Dm755 -t "%{install-root}%{bindir}" nvidia-modprobe

    install -Dm755 -t '%{install-root}%{bindir}' systemd/nvidia-sleep.sh
    install -Dm755 -t '%{install-root}%{indep-libdir}/systemd/system-sleep' systemd/system-sleep/nvidia
    install -Dm644 -t '%{install-root}%{indep-libdir}/systemd/system' systemd/system/nvidia-{hibernate,resume,suspend}.service
    mkdir -p '%{install-root}%{indep-libdir}'/systemd/system/systemd-{hibernate,resume,suspend}.service.wants
    ln -s ../nvidia-hibernate.service '%{install-root}%{indep-libdir}'/systemd/system/systemd-hibernate.service.wants/
    ln -s ../nvidia-suspend.service '%{install-root}%{indep-libdir}'/systemd/system/systemd-suspend.service.wants/
    ln -s ../nvidia-resume.service '%{install-root}%{indep-libdir}'/systemd/system/systemd-resume.service.wants/
    ln -s ../nvidia-resume.service '%{install-root}%{indep-libdir}'/systemd/system/systemd-hibernate.service.wants/
  
  # nvml
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm755 -t "%{install-root}%{bindir}/" nvidia-smi
    
    install -Dm755 -t "%{install-root}%{bindir}/" nvidia-debugdump
    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib/" libnvidia-ml.so*

  # gpgpu
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm755 -t "%{install-root}%{bindir}/" nvidia-cuda-mps-control
    install -Dm755 -t "%{install-root}%{bindir}/" nvidia-cuda-mps-server
    
    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib/" libcuda.so*
    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib/" libnvidia-opencl.so*
    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib/" libOpenCL.so*
    install -Dm644 -t "%{install-root}/etc/OpenCL/vendors/" nvidia.icd*

  # gpgpucomp
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib/" libnvidia-ptxjitcompiler.so*

  # gpgpudbg
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib/" libcudadebugger.so*

  
  # nvpd
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

  # compiler
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib" libnvidia-nvvm.so*
    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib" libnvidia-nvvm70.so*

  # nvgpucomp
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib" libnvidia-gpucomp.so*

  # nvapi
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib" libnvidia-api.so*

  # powerd
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm755 -t "%{install-root}%{bindir}/" nvidia-powerd
    install -Dm644 -t "%{install-root}%{indep-libdir}/systemd/system/" systemd/system/nvidia-powerd.service
    install -Dm644 -t "%{install-root}%{datadir}/dbus-1/system.d/" nvidia-dbus.conf

  # opengl and egl (dont like being decoupled)
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
       
  # xutils (partial)
  - |
     base_name="$(basename *.run .run)"
     cd "${base_name}"

     install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib/" libnvidia-cfg.so*
     install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib/" libnvidia-wayland-client.so*
       
  # vdpau
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib/vdpau/" libvdpau_nvidia.so*

  # nvalloc
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib/" libnvidia-allocator.so*

  # raytracing
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib/" libnvidia-rtcore.so*

  # optix
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib/" libnvoptix.so*
    install -Dm644 -t "%{install-root}%{datadir}/nvidia/" nvoptix.bin

  # ngx
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm755 -t "%{install-root}%{bindir}/" nvidia-ngx-updater
    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib/" libnvidia-ngx.so*
    install -Dm644 -t "%{install-root}%{libdir}/nvidia/wine/" _nvngx.dll*
    install -Dm644 -t "%{install-root}%{libdir}/nvidia/wine/" nvngx.dll*

  # nvfbc
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib/" libnvidia-fbc.so*

  # encodeapi
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib/" libnvidia-encode.so*

  # nvcuvid
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib/" libnvcuvid.so*

  # opticalflow
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib/" libnvidia-opticalflow.so*

  # nvlibpkcs11
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib/" libnvidia-pkcs11.so*
    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib/" libnvidia-pkcs11-openssl3.so*

  # nvpresent
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib/" libnvidia-present.so*

  # nvsandboxutils
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    install -Dm644 -t "%{install-root}%{libdir}/GL/default/lib/" libnvidia-sandboxutils.so*

  # firmware
  - |
    base_name="$(basename *.run .run)"
    cd "${base_name}"

    # This assumes that the README format doesn't change, probably not the best detection method, but better than hardcoding the version
    driver_version=$(cat README.txt | grep "Driver Version" | awk 'BEGIN {FS=": "}; {print $2};')

    install -Dm644 -t "%{install-root}%{indep-libdir}/firmware/nvidia/${driver_version}/" firmware/gsp_*.bin
    
  # so symlinks
  - |

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

    mkdir -p "%{install-root}%{libdir}/GL/default/lib/gbm/"
    ln -sr "%{install-root}%{libdir}/GL/default/lib/libnvidia-allocator.so.1" "%{install-root}%{libdir}/GL/default/lib/gbm/nvidia-drm_gbm.so"

  - |
    install -Dm644 local-config/modprobe.conf "%{install-root}%{indep-libdir}/modprobe.d/nvidia.conf"
    install -Dm644 local-config/modules-load.conf "%{install-root}%{indep-libdir}/modules-load.d/nvidia.conf"

  - |
    %{install-extra}

public:
  bst:
    split-rules:
      modules:
      - '%{indep-libdir}/firmware/**'
      - '%{indep-libdir}/modules/**'
      - '%{indep-libdir}/modprobe.d/**'
      - '%{indep-libdir}/modules-load.d/**'
      libs:
      - '%{libdir}/GL/**'
      - '%{datadir}/egl/**'
      - '%{indep-libdir}/systemd/**'
      - '%{bindir}/*'
