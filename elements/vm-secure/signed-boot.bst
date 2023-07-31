kind: manual

build-depends:
- vm-secure/initramfs.bst
- filename: vm-secure/usr-image.bst
  config:
    location: /usr-image
- freedesktop-sdk.bst:components/sbsigntools.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst

variables:
  uuidnamespace: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  (?):
  - arch == 'i686':
      efi-arch: ia32
  - arch == 'x86_64':
      efi-arch: x64
  - arch == 'aarch64':
      efi-arch: aa64
  - arch == 'riscv64':
      efi-arch: riscv64

config:
  install-commands:
  - |
    mkdir -p "%{install-root}/boot/EFI/Linux"
    cp -rT /boot/EFI/Linux "%{install-root}/boot/EFI/Linux"

  - |
    set -x
    usr_img="$(readlink /usr-image/usr.squashfs)"
    sdk_version="${usr_img##usr_}"
    sdk_version="${sdk_version%.squashfs}"
    sdk_version="${sdk_version%_*}"
    version="$(ls -1 /usr/lib/modules | head -n1)"

    cp "/boot/EFI/Linux/linux-${version}.efi" "linux-${version}.efi"

    objcopy -O binary -j .cmdline "linux-${version}.efi" cmdline.txt
    echo -n "usrhash=$(cat /usr-image/usr-root-hash.txt) " >new-cmdline.txt
    cat cmdline.txt >>new-cmdline.txt

    objcopy --remove-section .cmdline "linux-${version}.efi"
    objcopy --add-section .cmdline=new-cmdline.txt --set-section-flags .cmdline=data,readonly --change-section-vma .cmdline=0x30000 "linux-${version}.efi"

    echo -n "${version}" >uname.txt
    objcopy --add-section .uname=uname.txt --set-section-flags .uname=data,readonly --change-section-vma .uname=0x40000 "linux-${version}.efi"

    for section in linux osrel cmdline initrd uname sbat; do
      objcopy -O binary -j".${section}" "linux-${version}.efi" "${section}.section"
    done

    SYSTEMD_LOG_LEVEL=debug \
      /usr/lib/systemd/systemd-measure sign \
      --linux=linux.section \
      --uname=uname.section \
      --sbat=sbat.section \
      --osrel=osrel.section \
      --cmdline=cmdline.section \
      --initrd=initrd.section \
      --phase="enter-initrd" \
      --phase="enter-initrd:leave-initrd" \
      --phase="enter-initrd:leave-initrd:sysinit" \
      --pcrpkey=tpm2-pcr-public.pem \
      --private-key=tpm2-pcr-private.pem \
      --public-key=tpm2-pcr-public.pem >tpm2-pcr-signature.json

    objcopy --add-section .pcrpkey=tpm2-pcr-public.pem --set-section-flags .pcrpkey=data,readonly --change-section-vma .pcrpkey=0x50000 "linux-${version}.efi"
    objcopy --add-section .pcrsig=tpm2-pcr-signature.json --set-section-flags .pcrsig=data,readonly --change-section-vma .pcrsig=0x60000 "linux-${version}.efi"

    sbsign --key VENDOR.key --cert VENDOR.crt  --output "%{install-root}/boot/EFI/Linux/gnomeos_${sdk_version}.efi" "linux-${version}.efi"
    rm "%{install-root}/boot/EFI/Linux/linux-${version}.efi"

sources:
- kind: local
  path: files/boot-keys/VENDOR.key
- kind: local
  path: files/boot-keys/VENDOR.crt
- kind: local
  path: files/boot-keys/tpm2-pcr-public.pem
- kind: local
  path: files/boot-keys/tpm2-pcr-private.pem
