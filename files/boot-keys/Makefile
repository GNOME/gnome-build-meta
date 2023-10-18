all: generate-keys

KEY_TYPES=PK PK_MIC KEK KEK_MIC DB VENDOR MODULES SYSEXT
ALL_CERTS=$(foreach KEY,$(KEY_TYPES),$(KEY).crt)
ALL_KEYS=$(foreach KEY,$(KEY_TYPES),$(KEY).key)
BOOT_KEYS=$(ALL_KEYS) $(ALL_CERTS) $(DIST_KEYS) extra-db/.keep extra-kek/.keep modules/linux-module-cert.crt
KERNEL_KEYS=tpm2-pcr-private.pem tpm2-pcr-public.pem
DIST_KEYS=private-key import-pubring.gpg
KERNEL_KEYRING=MODULES.crt SYSEXT.crt

MICROSOFT_KEYS=							\
	extra-kek-mic/mic-kek.crt extra-kek-mic/mic-kek.owner	\
	extra-db-mic/mic-win.crt extra-db-mic/mic-win.owner	\
	extra-db-mic/mic-other.crt extra-db-mic/mic-other.owner

generate-keys: $(BOOT_KEYS) $(KERNEL_KEYS) $(MICROSOFT_KEYS)

modules/linux-module-cert.crt: $(KERNEL_KEYRING)
	cat $(KERNEL_KEYRING) >$@

ifeq ($(IMPORT_MODE),import)
tpm2-pcr-private.pem:
	echo "$${SECURE_BOOT_TPM_PCR_KEY}" >$@
else ifeq ($(IMPORT_MODE),snakeoil)
tpm2-pcr-private.pem:
	cp snakeoil/SECURE_BOOT_TPM_PCR_KEY $@
else
tpm2-pcr-private.pem:
	openssl genpkey -algorithm RSA -pkeyopt rsa_keygen_bits:2048 -out $@
endif

tpm2-pcr-public.pem: tpm2-pcr-private.pem
	openssl rsa -pubout -in $< -out $@

extra-db/.keep extra-kek/.keep:
	[ -d $(dir $@) ] || mkdir -p $(dir $@)
	touch $@

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
else
KEY_ID=GNOME
%.crt %.key:
	openssl req -new -x509 -newkey rsa:2048 -subj "/CN=$(KEY_ID) $(basename $(notdir $@)) key/" -keyout "$(basename $@).key" -out "$(basename $@).crt" -days 3650 -nodes -sha256
endif

extra-kek-mic/mic-kek.cer:
	curl https://www.microsoft.com/pkiops/certs/MicCorUEFCA2011_2011-06-27.crt -o $@.tmp
	echo "a6b068c3a84d31785b0745546546efed1ed1faa0db85144f99ff3a12524564212e09b493bd8d54773270bb2376eba28a29f84dfa5df5cea20e1dbf628c969a0c  extra-kek-mic/mic-kek.cer.tmp" sha512sum -c
	mv $@.tmp $@

extra-db-mic/mic-win.cer:
	curl https://www.microsoft.com/pkiops/certs/MicWinProPCA2011_2011-10-19.crt -o $@.tmp
	echo "a30b1e92b99b839d0076808e38f1c65fb42b1a9608778a0596f5350b3ef80dd15f2e226e1624298ff44135e736717d27642225adfe8a9d10e24b5fa22d912c18  extra-db-mic/mic-win.cer.tmp" sha512sum -c
	mv $@.tmp $@

extra-db-mic/mic-other.cer:
	curl https://www.microsoft.com/pkiops/certs/MicCorUEFCA2011_2011-06-27.crt -o $@.tmp
	echo "a6b068c3a84d31785b0745546546efed1ed1faa0db85144f99ff3a12524564212e09b493bd8d54773270bb2376eba28a29f84dfa5df5cea20e1dbf628c969a0c  extra-db-mic/mic-other.cer.tmp" sha512sum -c
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

import-pubring.gpg: private-key
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
	rm -f import-pubring.gpg
	rm -f extra-{db,kek}{,-mic}/*.{owner,crt}
	rm -f tpm2-pcr-{private,public}.pem
	rm -f modules/linux-module-cert.crt

.PHONY: generate-keys download-microsoft-keys show-keys-for-ci clean
