kind: script

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:snap-images/squashfs-tools.bst
- gnomeos/os-release-user.bst
- filename: gnomeos/initramfs/signed-nvidia-modules.bst
  config:
    location: '/sysroot-nvidia-modules'

variables:
  repart-seed: a19b0f25-42ac-4c92-8921-d8d4079ec140

config:
  commands:
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
    cat <<EOF >/sysroot-nvidia-modules/usr/lib/extension-release.d/extension-release.nvidia-modules_%{image-version}
    ID=org.gnome.os
    VERSION_ID=${version_id}
    SYSEXT_LEVEL=%{image-version}
    SYSEXT_SCOPE=initrd system
    EOF
    cp /sysroot-nvidia-modules/usr/lib/extension-release.d/extension-release.nvidia-modules_%{image-version} \
       /sysroot-nvidia-modules/usr/lib/extension-release.d/extension-release.nvidia-modules

  - |
    mkdir /sysroot-nvidia-modules/etc
    cp /etc/os-release /sysroot-nvidia-modules/etc/os-release

  - mkdir -p definitions
  - |
    cat <<EOF >definitions/10-nvidia-modules.conf
    [Partition]
    Type=root
    Label=gnomeos_usr_dev_%A
    CopyFiles=/usr
    Minimize=best
    Format=squashfs
    SplitName=usr
    AddValidateFS=no
    EOF

  - |
    mkdir -p /var/tmp

  - |
    SYSTEMD_LOG_LEVEL=debug \
      systemd-repart \
        --definitions=definitions \
        --empty=create \
        --size=auto \
        --dry-run=no \
        --discard=no \
        --offline=true \
        --no-pager \
        --split=true \
        --seed %{repart-seed} \
        --root=/sysroot-nvidia-modules \
        nvidia-modules.raw \
        --json=pretty \
        >repart.json

  - |
    install -Dm644 -t '%{install-root}' "nvidia-modules.usr.raw"
