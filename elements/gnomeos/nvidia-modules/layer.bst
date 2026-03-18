kind: script

build-depends:
- gnomeos/save-perms.bst
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- gnomeos/os-release.bst
- filename: gnomeos/initramfs/signed-nvidia-modules.bst
  config:
    location: '/sysroot-nvidia-modules'

variables:
  install-root: '/sysroot-nvidia-modules'

environment:
  LD_PRELOAD: /usr/libexec/fakecap/fakecap.so
  FAKECAP_DB: '/fakecap'

config:
  commands:
  - mkdir /fakecap
  - |
    mkdir -p /sysroot-nvidia-modules/usr/lib/extension-release.d
    case "%{branch}" in
      master)
        version_id=Nightly
        ;;
      *)
        version_id="%{branch}"
        ;;
    esac
    cat <<EOF >sysroot-nvidia-modules/usr/lib/extension-release.d/extension-release.nvidia-modules_%{image-version}
    ID=org.gnome.os
    VERSION_ID=${version_id}
    SYSEXT_LEVEL=%{image-version}
    SYSEXT_SCOPE=initrd system
    EOF
    cp /sysroot-nvidia-modules/usr/lib/extension-release.d/extension-release.nvidia-modules_%{image-version} \
       /sysroot-nvidia-modules/usr/lib/extension-release.d/extension-release.nvidia-modules

  - save-perms.py /sysroot-nvidia-modules/perms-usr.json /sysroot-nvidia-modules/usr
