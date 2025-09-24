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

MICROSOFT_KEYS=					\
	extra-kek-mic/mic-kek-2011.crt		\
	extra-kek-mic/mic-kek-2023.crt		\
	extra-db-mic/mic-win-2011.crt		\
	extra-db-mic/mic-win-2023.crt		\
	extra-db-mic/mic-other-2011.crt		\
	extra-db-mic/mic-other-2023.crt		\
	extra-db-mic/mic-optionrom-2023.crt

MICROSOFT_KEYS_OWNER=$(MICROSOFT_KEYS:.crt=.owner)

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

extra-kek-mic/mic-kek-2011.cer:
	curl https://www.microsoft.com/pkiops/certs/MicCorKEKCA2011_2011-06-24.crt -o $@.tmp
	echo "35c385cbf73c78e6b834406eca29edfbd9dd1de6a05e9d1d916c121b7999f4587ce308416b92f8d131021c19d4604479c08c6ca4ae050684d276a7eecaf03aac  $@.tmp" | sha512sum -c
	mv $@.tmp $@

extra-kek-mic/mic-kek-2023.cer:
	curl https://www.microsoft.com/pkiops/certs/microsoft%20corporation%20kek%202k%20ca%202023.crt -o $@.tmp
	echo "378891143b38e3665aeede69659d53f78e42db8502728213f0de3e12824872716bd3ce1ff548c4e483d1c677121844d86faa53b1a12364d60e7665630324bb90  $@.tmp" | sha512sum -c
	mv $@.tmp $@

extra-db-mic/mic-win-2011.cer:
	curl https://www.microsoft.com/pkiops/certs/MicWinProPCA2011_2011-10-19.crt -o $@.tmp
	echo "a30b1e92b99b839d0076808e38f1c65fb42b1a9608778a0596f5350b3ef80dd15f2e226e1624298ff44135e736717d27642225adfe8a9d10e24b5fa22d912c18  $@.tmp" | sha512sum -c
	mv $@.tmp $@

extra-db-mic/mic-win-2023.cer:
	curl https://www.microsoft.com/pkiops/certs/windows%20uefi%20ca%202023.crt -o $@.tmp
	echo "0d50602060fdb388b89761236b02f526ffba448b5735e324c292608df060ae17187f06f3a477b1a31cd13c8ce5b23f3889c73883011160a7e5ef761feb9b28fd  $@.tmp" | sha512sum -c
	mv $@.tmp $@

extra-db-mic/mic-other-2011.cer:
	curl https://www.microsoft.com/pkiops/certs/MicCorUEFCA2011_2011-06-27.crt -o $@.tmp
	echo "a6b068c3a84d31785b0745546546efed1ed1faa0db85144f99ff3a12524564212e09b493bd8d54773270bb2376eba28a29f84dfa5df5cea20e1dbf628c969a0c  $@.tmp" | sha512sum -c
	mv $@.tmp $@

extra-db-mic/mic-other-2023.cer:
	curl https://www.microsoft.com/pkiops/certs/microsoft%20uefi%20ca%202023.crt -o $@.tmp
	echo "32029942c3b3a60feb2cfaa1e8378961e046967fce96e60eac9aeb69cef54c461d664c1e835fdb4c21b9116a3cc971b6217684edcc9463dd2a816e3d3617c5e7  $@.tmp" | sha512sum -c
	mv $@.tmp $@

extra-db-mic/mic-optionrom-2023.cer:
	curl https://www.microsoft.com/pkiops/certs/microsoft%20option%20rom%20uefi%20ca%202023.crt -o $@.tmp
	echo "ea4b0b3da50d14d86f390885d3f695c2afce468299d284479badf3260b700209717f0139c52ddebe6f41b40a76f14f4e119b6ee7506ae5b9c839c6884b5ca746  $@.tmp" | sha512sum -c
	mv $@.tmp $@

extra-kek-mic/mic-%.crt: extra-kek-mic/mic-%.cer
	openssl x509 -inform der -outform pem -in $< -out $@

extra-db-mic/mic-%.crt: extra-db-mic/mic-%.cer
	openssl x509 -inform der -outform pem -in $< -out $@

extra-kek-mic/mic-%.owner:
	echo 77fa9abd-0359-4d32-bd60-28f4e78f784b >$@

extra-db-mic/mic-%.owner:
	echo 77fa9abd-0359-4d32-bd60-28f4e78f784b >$@

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
	rm -f extra-{db,kek}{,-mic}/*.{owner,crt}
	rm -f tpm2-pcr-{private,public}.pem
	rm -f modules/linux-module-cert.crt

.PHONY: generate-keys download-microsoft-keys show-keys-for-ci clean
