kind: script

build-depends:
- freedesktop-sdk.bst:vm/prepare-image.bst
- vm-secure/make-layer.bst
- vm-secure/initial-scripts.bst
- vm-secure/initial-scripts-devel.bst
- filename: vm-secure/filesystem.bst
  config:
    location: '/sysroot'
- filename: vm-secure/filesystem-devel.bst
  config:
    location: '/sysroot-devel'

variables:
  uuidnamespace: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  salt: 5ceca5e1f86ae62403b27e66c5160717f1bb88405a1d1d0853241c27f3764843

config:
  commands:
  - |
    prepare-image.sh \
       --sysroot /sysroot \
       --initscripts /etc/fdsdk/initial_scripts \
       --seed "%{uuidnamespace}" \
       --rootsource /dev/gpt-auto-root \
       --efisource LABEL=EFI \
       --efipath /boot >/dev/null >'%{install-root}/vars.txt'

  - |
    mkdir -p /sysroot/usr/share/factory
    mv -T /sysroot/etc /sysroot/usr/share/factory/etc

  - |
    prepare-image.sh \
       --sysroot /sysroot-devel \
       --initscripts /etc/fdsdk/initial_scripts-devel \
       --seed "%{uuidnamespace}" \
       --rootsource /dev/gpt-auto-root \
       --efisource LABEL=EFI \
       --efipath /boot >/dev/null >'%{install-root}/vars-devel.txt'

  - |
    mkdir -p /sysroot-devel/usr/share/factory
    mv -T /sysroot-devel/etc /sysroot-devel/usr/share/factory/etc

  - |
    mkdir -p /sysroot-devel/usr/lib/extension-release.d
    case "%{branch}" in
      master)
        version_id=Nightly
        ;;
      *)
        version_id="%{branch}"
        ;;
    esac
    cat <<EOF >/sysroot-devel/usr/lib/extension-release.d/extension-release.devel
    ID=org.gnome.gnomeos
    VERSION_ID=${version_id}
    EOF

  - |
    make-layer /sysroot/usr /sysroot-devel/usr /output

  - |
    mksquashfs /output '%{install-root}/usr-devel_%{image-version}.squashfs'

  - |
    veritysetup format --salt="%{salt}" "%{install-root}/usr-devel_%{image-version}.squashfs" "%{install-root}/usr-devel_%{image-version}.verity" | sed '/^Root hash:[[:space:]]*/{;s///;q;};d' >"%{install-root}/usr-root-hash.txt"

  - |
    usr_part_uuid="$(cat "%{install-root}/usr-root-hash.txt" | sed -E 's/^([0-9a-f]{8})([0-9a-f]{4})([0-9a-f]{4})([0-9a-f]{4})([0-9a-f]{12}).*/\1\2\3\4\5/')"
    mv "%{install-root}/usr-devel_%{image-version}.squashfs" "%{install-root}/usr-devel_%{image-version}_${usr_part_uuid}.squashfs"
    ln -s "usr-devel_%{image-version}_${usr_part_uuid}.squashfs" '%{install-root}/usr.squashfs'

  - |
    usr_verity_part_uuid="$(cat "%{install-root}/usr-root-hash.txt" | sed -E 's/.*([0-9a-f]{8})([0-9a-f]{4})([0-9a-f]{4})([0-9a-f]{4})([0-9a-f]{12})$/\1\2\3\4\5/')"
    mv "%{install-root}/usr-devel_%{image-version}.verity" "%{install-root}/usr-devel_%{image-version}_${usr_verity_part_uuid}.verity"
    ln -s "usr-devel_%{image-version}_${usr_verity_part_uuid}.verity" '%{install-root}/usr.verity'
