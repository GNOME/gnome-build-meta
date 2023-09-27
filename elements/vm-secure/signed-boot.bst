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
- freedesktop-sdk.bst:components/jq.bst

variables:
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
    mkdir -p "%{install-root}/efi/EFI/Linux"

  - |
    set -x

    roothash=$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).roothash' /usr-image/repart.json)
    label=$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).label' /usr-image/repart.json)
    image_version="${label##gnomeos_usr_v_}"

    version="$(ls -1 /usr/lib/modules | head -n1)"

    kernel="gnomeos_${version}.efi"
    output_kernel="gnomeos_${image_version}.efi"

    cp "/efi/EFI/Linux/${kernel}" .
    image_base="0x$(objdump -x "${kernel}" | sed '/^ImageBase[[:space:]]*/{;s///;q;};d')"

    cat <<EOF >sbat.txt
    sbat,1,SBAT Version,sbat,1,https://github.com/rhboot/shim/blob/main/SBAT.md
    uki,1,UKI,uki,1,https://www.freedesktop.org/software/systemd/man/systemd-stub.html
    EOF
    echo -n "${version}" >uname.txt

    cp '/usr/lib/systemd/boot/efi/addon%{efi-arch}.efi.stub' apparmor.addon.efi
    apparmor_image_base="0x$(objdump -x apparmor.addon.efi | sed '/^ImageBase[[:space:]]*/{;s///;q;};d')"
    echo -n "security=apparmor" >apparmor-cmdline.txt
    objcopy --add-section .sbat=sbat.txt --set-section-flags .sbat=data,readonly --change-section-vma .sbat=0x$(printf %x $((${apparmor_image_base}+0x6000))) apparmor.addon.efi
    objcopy --add-section .cmdline=apparmor-cmdline.txt --set-section-flags .cmdline=data,readonly --change-section-vma .cmdline=0x$(printf %x $((${apparmor_image_base}+0x7000))) apparmor.addon.efi
    objcopy --add-section .uname=uname.txt --set-section-flags .uname=data,readonly --change-section-vma .uname=0x$(printf %x $((${apparmor_image_base}+0x8000))) apparmor.addon.efi
    mkdir -p "%{install-root}/efi/EFI/Linux/gnomeos_${image_version}.efi.extra.d"
    sbsign --key VENDOR.key --cert VENDOR.crt --output "%{install-root}/efi/EFI/Linux/gnomeos_${image_version}.efi.extra.d/apparmor.addon.efi" apparmor.addon.efi

    objcopy -O binary -j .cmdline "${kernel}" cmdline.txt
    echo -n "usrhash=${roothash} " >new-cmdline.txt
    cat cmdline.txt >>new-cmdline.txt

    objcopy --remove-section .cmdline "${kernel}"

    objcopy --change-section-vma .osrel=0x$(printf %x $((${image_base}+0x20000))) "${kernel}"
    objcopy --add-section .cmdline=new-cmdline.txt --set-section-flags .cmdline=data,readonly --change-section-vma .cmdline=0x$(printf %x $((${image_base}+0x30000))) "${kernel}"
    objcopy --add-section .uname=uname.txt --set-section-flags .uname=data,readonly --change-section-vma .uname=0x$(printf %x $((${image_base}+0x40000))) "${kernel}"

    for section in linux osrel cmdline initrd uname sbat; do
      objcopy -O binary -j".${section}" "${kernel}" "${section}.section"
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

    objcopy --add-section .pcrpkey=tpm2-pcr-public.pem --set-section-flags .pcrpkey=data,readonly --change-section-vma .pcrpkey=0x$(printf %x $((${image_base}+0x50000))) "${kernel}"
    objcopy --add-section .pcrsig=tpm2-pcr-signature.json --set-section-flags .pcrsig=data,readonly --change-section-vma .pcrsig=0x$(printf %x $((${image_base}+0x60000))) "${kernel}"

    objcopy --change-section-vma .linux=0x$(printf %x $((${image_base}+0x70000))) "${kernel}"
    objcopy --change-section-vma .initrd=0x$(printf %x $((${image_base}+0x1000000))) "${kernel}"

    sbsign --key VENDOR.key --cert VENDOR.crt --output "%{install-root}/efi/EFI/Linux/${output_kernel}" "${kernel}"

sources:
- kind: local
  path: files/boot-keys/VENDOR.key
- kind: local
  path: files/boot-keys/VENDOR.crt
- kind: local
  path: files/boot-keys/tpm2-pcr-public.pem
- kind: local
  path: files/boot-keys/tpm2-pcr-private.pem
