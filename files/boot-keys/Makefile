# See `README.md` for some guidance on what this Makefile does.

all: generate-keys

KEY_TYPES=PK PK_MIC KEK KEK_MIC DB VENDOR MODULES SYSEXT
ALL_CERTS=$(foreach KEY,$(KEY_TYPES),$(KEY).crt)
ALL_KEYS=$(foreach KEY,$(KEY_TYPES),$(KEY).key)
BOOT_KEYS=$(ALL_KEYS) $(ALL_CERTS) $(DIST_KEYS) extra-db/.keep extra-kek/.keep $(KERNEL_KEYRING_FILE)
KERNEL_KEYS= \
	tpm2-pcr-private.pem \
	tpm2-pcr-public.pem \
	fstab-tpm2-pcr-private.pem \
	fstab-tpm2-pcr-public.pem

DIST_KEYS=private-key import-pubring.pgp
KERNEL_KEYRING_FILE=modules/linux-module-cert.crt
KERNEL_KEYRING=MODULES.crt SYSEXT.crt

generate-keys: $(BOOT_KEYS) $(KERNEL_KEYS) $(MICROSOFT_KEYS) $(MICROSOFT_KEYS_OWNER)

modules/linux-module-cert.crt: $(KERNEL_KEYRING)
	cat $(KERNEL_KEYRING) >$@

ifeq ($(IMPORT_MODE),import)
tpm2-pcr-private.pem:
	echo "$${SECURE_BOOT_TPM_PCR_KEY}" >$@
fstab-tpm2-pcr-private.pem:
	echo "$${SECURE_BOOT_FSTAB_TPM_PCR_KEY}" >$@
else ifeq ($(IMPORT_MODE),snakeoil)
tpm2-pcr-private.pem:
	cp snakeoil/SECURE_BOOT_TPM_PCR_KEY $@
fstab-tpm2-pcr-private.pem:
	cp snakeoil/SECURE_BOOT_FSTAB_TPM_PCR_KEY $@
else
# Also no IMPORT_MODE=local
tpm2-pcr-private.pem:
	openssl genpkey -algorithm RSA -pkeyopt rsa_keygen_bits:2048 -out $@
fstab-tpm2-pcr-private.pem:
	openssl genpkey -algorithm RSA -pkeyopt rsa_keygen_bits:2048 -out $@
endif

tpm2-pcr-public.pem: tpm2-pcr-private.pem
	openssl rsa -pubout -in $< -out $@

fstab-tpm2-pcr-public.pem: fstab-tpm2-pcr-private.pem
	openssl rsa -pubout -in $< -out $@

extra-db/.keep extra-kek/.keep:
	[ -d $(dir $@) ] || mkdir -p $(dir $@)
	touch $@

KEY_ID=GNOME

ifeq ($(IMPORT_MODE),import)
%.crt:
	name=$(basename $(notdir $@));			\
	crt_name=SECURE_BOOT_$${name}_CRT;		\
	echo "$${!crt_name}" >"$(basename $@).crt"

%.key:
	name=$(basename $(notdir $@));			\
	key_name=SECURE_BOOT_$${name}_KEY;		\
	echo "$${!key_name}" >"$(basename $@).key"
else ifeq ($(IMPORT_MODE),snakeoil)
%.crt:
	name=$(basename $(notdir $@));			\
	crt_name=SECURE_BOOT_$${name}_CRT;		\
	cat "snakeoil/$${crt_name}" >"$(basename $@).crt"

%.key:
	name=$(basename $(notdir $@));			\
	key_name=SECURE_BOOT_$${name}_KEY;		\
	cat "snakeoil/$${key_name}" >"$(basename $@).key"
else ifeq ($(IMPORT_MODE),local)
$(foreach KEY,PK PK_MIC KEK KEK_MIC DB,$(KEY).crt):
	name=$(basename $(notdir $@));			\
	crt_name=SECURE_BOOT_$${name}_CRT;		\
	cat "snakeoil/$${crt_name}" >"$(basename $@).crt"

$(foreach KEY,PK PK_MIC KEK KEK_MIC DB,$(KEY).key):
	name=$(basename $(notdir $@));			\
	key_name=SECURE_BOOT_$${name}_KEY;		\
	cat "snakeoil/$${key_name}" >"$(basename $@).key"

VENDOR.crt VENDOR.key:
	openssl req -new -x509 -newkey rsa:2048 -subj "/CN=$(KEY_ID) $(basename $(notdir $@)) key/" -keyout "$(basename $@).key" -out "$(basename $@).crt" -days 3650 -nodes -sha256

SYSEXT.crt SYSEXT.key MODULES.crt MODULES.key:
	cp VENDOR$(suffix $@) $@

# No need for keys since they will be picked up from MOK
KERNEL_KEYRING_FILE=

generate-keys: VENDOR.der

VENDOR.der: VENDOR.crt
	openssl x509 -inform pem -outform der -in $< -out $@
else
%.crt %.key:
	openssl req -new -x509 -newkey rsa:2048 -subj "/CN=$(KEY_ID) $(basename $(notdir $@)) key/" -keyout "$(basename $@).key" -out "$(basename $@).crt" -days 3650 -nodes -sha256
endif

private-key:
	(umask 0077; mkdir $@)
ifeq ($(IMPORT_MODE),import)
	echo "$${SECURE_BOOT_DISTRIBUTION_KEY}" | gpg --homedir=$@ --import
else ifeq ($(IMPORT_MODE),snakeoil)
	cat snakeoil/SECURE_BOOT_DISTRIBUTION_KEY | gpg --homedir=$@ --import
else
	gpg --homedir=$@ --batch --generate-key key-config
endif
	echo "default-key $$(gpg --homedir=$@ -k --with-colons  | sed '/^fpr:/q;d' | cut -d: -f10)" >$@/gpg.conf

import-pubring.pgp: private-key
	gpg --homedir=$< --export >$@

show-keys-for-ci: generate-keys
	@for key in $(KEY_TYPES); do		\
	  echo "SECURE_BOOT_$${key}_CRT";	\
	  cat "$${key}.crt";			\
	  echo "SECURE_BOOT_$${key}_KEY";	\
	  cat "$${key}.key";			\
	done
	@echo SECURE_BOOT_TPM_PCR_KEY
	@cat tpm2-pcr-private.pem
	@echo SECURE_BOOT_DISTRIBUTION_KEY
	@gpg --homedir=private-key --export-secret-key --armor

export-snakeoil: generate-keys
	mkdir -p snakeoil
	@for key in $(KEY_TYPES); do					\
	  cat "$${key}.crt" >"snakeoil/SECURE_BOOT_$${key}_CRT";	\
	  cat "$${key}.key" >"snakeoil/SECURE_BOOT_$${key}_KEY";	\
	done
	@cat tpm2-pcr-private.pem >snakeoil/SECURE_BOOT_TPM_PCR_KEY
	@gpg --homedir=private-key --export-secret-key --armor >snakeoil/SECURE_BOOT_DISTRIBUTION_KEY

clean:
	rm -f {PK,PK_MIC,KEK,KEK_MIC,DB,VENDOR,MODULES,SYSEXT}.{crt,key}
	rm -rf private-key
	rm -f import-pubring.pgp
	rm -f extra-{db,kek}/*.{owner,crt}
	rm -f tpm2-pcr-{private,public}.pem
	rm -f modules/linux-module-cert.crt

.PHONY: generate-keys show-keys-for-ci clean
