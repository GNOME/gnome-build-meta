all: generate-keys
	$(MAKE) download-microsoft-keys

KEY_TYPES=PK KEK DB VENDOR MODULES
ALL_CERTS=$(foreach KEY,$(KEY_TYPES),$(KEY).crt)
ALL_KEYS=$(foreach KEY,$(KEY_TYPES),$(KEY).key)
BOOT_KEYS=$(ALL_KEYS) $(ALL_CERTS) $(DIST_KEYS) extra-db/.keep extra-kek/.keep modules/linux-module-cert.crt
KERNEL_KEYS=tpm2-pcr-private.pem tpm2-pcr-public.pem
DIST_KEYS=private-key import-pubring.gpg

generate-keys: $(BOOT_KEYS) $(KERNEL_KEYS)

modules/linux-module-cert.crt: MODULES.crt
	cp $< $@

tpm2-pcr-private.pem:
	openssl genpkey -algorithm RSA -pkeyopt rsa_keygen_bits:2048 -out $@

tpm2-pcr-public.pem: tpm2-pcr-private.pem
	openssl rsa -pubout -in $< -out $@

extra-db/.keep extra-kek/.keep:
	[ -d $(dir $@) ] || mkdir -p $(dir $@)
	touch $@

%.crt %.key:
	openssl req -new -x509 -newkey rsa:2048 -subj "/CN=GNOME $(basename $(notdir $@)) key/" -keyout "$(basename $@).key" -out "$(basename $@).crt" -days 3650 -nodes -sha256

# This is optional
download-microsoft-keys: extra-db/.keep extra-kek/.keep
	curl https://www.microsoft.com/pkiops/certs/MicCorUEFCA2011_2011-06-27.crt | openssl x509 -inform der -outform pem >extra-kek/mic-kek.crt
	echo 77fa9abd-0359-4d32-bd60-28f4e78f784b >extra-kek/mic-kek.owner
	curl https://www.microsoft.com/pkiops/certs/MicCorUEFCA2011_2011-06-27.crt | openssl x509 -inform der -outform pem >extra-db/mic-other.crt
	echo 77fa9abd-0359-4d32-bd60-28f4e78f784b >extra-db/mic-other.owner
	curl https://www.microsoft.com/pkiops/certs/MicWinProPCA2011_2011-10-19.crt | openssl x509 -inform der -outform pem >extra-db/mic-win.crt
	echo 77fa9abd-0359-4d32-bd60-28f4e78f784b >extra-db/mic-win.owner

private-key:
	(umask 0077; mkdir $@)
	gpg --homedir=$@ --batch --generate-key key-config
	echo "default-key $$(gpg --homedir=$@ -k --with-colons  | sed '/^fpr:/q;d' | cut -d: -f10)" >$@/gpg.conf

import-pubring.gpg: private-key
	gpg --homedir=$< --export >$@


clean:
	rm -f {PK,KEK,DB,VENDOR,MODULES}.{crt,key}
	rm -rf private-key
	rm -f import-pubring.gpg
	rm -f extra-{db,kek}/*.{owner,crt}
	rm -f tpm2-pcr-{private,public}.pem

.PHONY: generate-keys download-microsoft-keys clean