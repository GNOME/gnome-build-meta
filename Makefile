CHECKOUT=checkout
IMAGE=$(CHECKOUT)/disk.qcow2
BST=bst
LOCAL_ADDRESS=10.0.2.2
BRANCH=master
ARCH?=$(shell uname -m | sed "s/^i.86$$/i686/" | sed "s/^ppc/powerpc/")
QEMU_ARCH?=$(shell uname -m)
OSTREE_BRANCH=gnome-os-$(BRANCH)-$(ARCH)

define OSTREE_GPG_CONFIG
Key-Type: DSA
Key-Length: 1024
Subkey-Type: ELG-E
Subkey-Length: 1024
Name-Real: Gnome OS
Expire-Date: 0
%no-protection
%commit
%echo finished
endef

export OSTREE_GPG_CONFIG

all: $(IMAGE)

$(IMAGE): ostree-config.yml ostree-repo gnome.gpg
	rm -rf $(CHECKOUT)
	$(BST) track vm/image.bst
	$(BST) build vm/image.bst
	$(BST) checkout vm/image.bst "$(CHECKOUT)"

ostree-gpg:
	rm -rf ostree-gpg.tmp
	mkdir ostree-gpg.tmp
	chmod 0700 ostree-gpg.tmp
	echo "$${OSTREE_GPG_CONFIG}" >ostree-gpg.tmp/key-config
	gpg --batch --homedir=ostree-gpg.tmp --generate-key ostree-gpg.tmp/key-config
	gpg --homedir=ostree-gpg.tmp -k --with-colons | sed '/^fpr:/q;d' | cut -d: -f10 >ostree-gpg.tmp/default-id
	mv ostree-gpg.tmp ostree-gpg

gnome.gpg: ostree-gpg
	gpg --homedir=ostree-gpg --export --armor >"$@"

ostree-config.yml:
	echo 'ostree-remote-url: "http://$(LOCAL_ADDRESS):8000/"' >"$@.tmp"
	echo 'ostree-branch: "$(OSTREE_BRANCH)"' >>"$@.tmp"
	mv "$@.tmp" "$@"

update-ostree: ostree-gpg ostree-config.yml gnome.gpg
	env BST="$(BST)" utils/update-repo.sh		\
	  --gpg-homedir=ostree-gpg			\
	  --gpg-sign=$$(cat ostree-gpg/default-id)	\
	  --collection-id=org.gnome.GnomeOS		\
	  ostree-repo vm/repo.bst	\
	  $(OSTREE_BRANCH)

ostree-repo:
	$(MAKE) update-ostree

ostree-serve: ostree-repo
	python3 -m http.server 8000 --directory ostree-repo

ifeq ($(ARCH),i686)
OVMF_CODE=/usr/share/qemu/edk2-i386-code.fd
OVMF_VARS=/usr/share/qemu/edk2-i386-vars.fd
else ifeq ($(ARCH),x86_64)
OVMF_CODE=/usr/share/qemu/edk2-x86_64-code.fd
OVMF_VARS=/usr/share/qemu/edk2-i386-vars.fd
else ifeq ($(ARCH),aarch64)
OVMF_CODE=/usr/share/qemu/edk2-aarch64-code.fd
OVMF_VARS=/usr/share/qemu/edk2-arm-vars.fd
else ifeq ($(ARCH),arm)
OVMF_CODE=/usr/share/qemu/edk2-arm-code.fd
OVMF_VARS=/usr/share/qemu/edk2-arm-vars.fd
endif

efi_vars.fd: $(OVMF_VARS)
	cp "$<" "$@"

QEMU=qemu-system-$(QEMU_ARCH)
QEMU_EFI_ARGS=								 \
	-enable-kvm -m 4G						 \
	-smp 4								 \
	-machine pc,accel=kvm						 \
	-drive if=pflash,format=raw,unit=0,file=$(OVMF_CODE),readonly=on \
	-drive if=pflash,format=raw,unit=1,file=efi_vars.fd		 \
	-display gtk,gl=on						 \
	-netdev user,id=net1 -device e1000,netdev=net1			 \
	-device virtio-vga,edid=on,xres=1280,yres=720 -d guest_errors	 \
	-soundhw hda 							 \
	-usb -device usb-tablet -full-screen

run-ostree-vm: $(IMAGE) efi_vars.fd
	$(QEMU)							\
	    $(QEMU_EFI_ARGS)					\
	    -drive file=$(IMAGE),format=qcow2,media=disk
