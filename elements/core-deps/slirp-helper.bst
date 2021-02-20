kind: manual

build-depends:
- freedesktop-sdk.bst:extensions/rust/rust.bst
- freedesktop-sdk.bst:components/libffi.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:components/libslirp.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:bootstrap-import.bst

environment:
  PATH: /usr/bin:/usr/lib/sdk/rust/bin

sources:
- kind: tar
  url: https://static.crates.io/crates/libslirp/libslirp-4.2.2.crate
  ref: f9de2f9f68a7ac7c9ce0fb612f9c78322014bdf09781766fe5e7d0ae144cff19
- kind: cargo

  ref:
  - name: ansi_term
    version: 0.11.0
    sha: ee49baf6cb617b853aa8d93bf420db2383fab46d314482ca2803b40d5fde979b
  - name: atty
    version: 0.2.14
    sha: d9b39be18770d11421cdb1b9947a45dd3f37e93092cbf377614828a319d5fee8
  - name: bitflags
    version: 1.2.1
    sha: cf1de2fe8c75bc145a2f577add951f8134889b4795d47466a54a5c846d691693
  - name: block-buffer
    version: 0.7.3
    sha: c0940dc441f31689269e10ac70eb1002a3a1d3ad1390e030043662eb7fe4688b
  - name: block-padding
    version: 0.1.5
    sha: fa79dedbb091f449f1f39e53edf88d5dbe95f895dae6135a8d7b881fb5af73f5
  - name: byte-tools
    version: 0.3.1
    sha: e3b5ca7a04898ad4bcd41c90c5285445ff5b791899bb1b0abdd2a2aa791211d7
  - name: byteorder
    version: 1.3.4
    sha: 08c48aae112d48ed9f069b33538ea9e3e90aa263cfa3d1c24309612b1f7472de
  - name: cc
    version: 1.0.52
    sha: c3d87b23d6a92cd03af510a5ade527033f6aa6fa92161e2d5863a907d4c5e31d
  - name: cfg-if
    version: 0.1.10
    sha: 4785bdd1c96b2a846b2bd7cc02e86b6b3dbf14e7e53446c4f54c92a361040822
  - name: clap
    version: 2.33.0
    sha: 5067f5bb2d80ef5d68b4c87db81601f0b75bca627bc2ef76b141d7b846a3c6d9
  - name: crypto-mac
    version: 0.7.0
    sha: 4434400df11d95d556bac068ddfedd482915eb18fe8bea89bc80b6e4b1c179e5
  - name: dbus
    version: 0.8.2
    sha: 38f8875bb7afbc20dec12db09e18af3dcbd672b08592d2932950326a6437c616
  - name: digest
    version: 0.8.1
    sha: f3d0c8c8752312f9713efd397ff63acb9f85585afbf179282e720e7704954dd5
  - name: error-chain
    version: 0.12.2
    sha: d371106cc88ffdfb1eabd7111e432da544f16f3e2d7bf1dfe8bf575f1df045cd
  - name: etherparse
    version: 0.8.3
    sha: 706c7cc3e05a64c496e9cca52ef8ad82a846a8c5b03345fddd81a76009a435b7
  - name: fake-simd
    version: 0.1.2
    sha: e88a8acf291dafb59c2d96e8f59828f3838bb1a70398823ade51a84de6a6deed
  - name: fuchsia-zircon
    version: 0.3.3
    sha: 2e9763c69ebaae630ba35f74888db465e49e259ba1bc0eda7d06f4a067615d82
  - name: fuchsia-zircon-sys
    version: 0.3.3
    sha: 3dcaa9ae7725d12cdb85b3ad99a434db70b468c09ded17e012d86b5c1010f7a7
  - name: generic-array
    version: 0.12.3
    sha: c68f0274ae0e023facc3c97b2e00f076be70e254bc851d972503b328db79b2ec
  - name: heck
    version: 0.3.1
    sha: 20564e78d53d2bb135c343b3f47714a56af2061f1c928fdb541dc7b9fdd94205
  - name: hermit-abi
    version: 0.1.12
    sha: 61565ff7aaace3525556587bd2dc31d4a07071957be715e63ce7b1eccf51a8f4
  - name: hmac
    version: 0.7.1
    sha: 5dcb5e64cda4c23119ab41ba960d1e170a774c8e4b9d9e6a9bc18aabf5e59695
  - name: idna
    version: 0.2.0
    sha: 02e2673c30ee86b5b96a9cb52ad15718aa1f966f5ab9ad54a8b95d5ca33120a9
  - name: iovec
    version: 0.1.4
    sha: b2b3ea6ff95e175473f8ffe6a7eb7c00d054240321b84c57051175fe3c1e075e
  - name: ipnetwork
    version: 0.16.0
    sha: b8eca9f51da27bc908ef3dd85c21e1bbba794edaf94d7841e37356275b82d31e
  - name: kernel32-sys
    version: 0.2.2
    sha: 7507624b29483431c0ba2d82aece8ca6cdba9382bff4ddd0f7490560c056098d
  - name: lazy_static
    version: 1.4.0
    sha: e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646
  - name: lazycell
    version: 1.2.1
    sha: b294d6fa9ee409a054354afc4352b0b9ef7ca222c69b8812cbea9e7d2bf3783f
  - name: libc
    version: 0.2.69
    sha: 99e85c08494b21a9054e7fe1374a732aeadaff3980b6990b94bfd3a70f690005
  - name: libdbus-sys
    version: 0.2.1
    sha: dc12a3bc971424edbbf7edaf6e5740483444db63aa8e23d3751ff12a30f306f0
  - name: libslirp-sys
    version: 4.2.0
    sha: 26e54a5719a79bee3b25ee15e4b2cf80f51597b2d45d9889f3c1b8c150d907b4
  - name: libsystemd
    version: 0.2.1
    sha: f3a64961e79726a5b05e0db592097ca895831d755484203578fe75b580847262
  - name: log
    version: 0.4.8
    sha: 14b6052be84e6b71ab17edffc2eeabf5c2c3ae1fdb464aae35ac50c67a44e1f7
  - name: matches
    version: 0.1.8
    sha: 7ffc5c5338469d4d3ea17d269fa8ea3512ad247247c30bd2df69e68309ed0a08
  - name: mio
    version: 0.6.22
    sha: fce347092656428bc8eaf6201042cb551b8d67855af7374542a92a0fbfcac430
  - name: mio-extras
    version: 2.0.6
    sha: 52403fe290012ce777c4626790c8951324a2b9e3316b3143779c72b029742f19
  - name: miow
    version: 0.2.1
    sha: 8c1f2f3b1cf331de6896aabf6e9d55dca90356cc9960cca7eaaf408a355ae919
  - name: net2
    version: 0.2.34
    sha: 2ba7c918ac76704fb42afcbbb43891e72731f3dcca3bef2a19786297baf14af7
  - name: nix
    version: 0.17.0
    sha: 50e4785f2c3b7589a0d0c1dd60285e1188adac4006e8abd6dd578e1567027363
  - name: opaque-debug
    version: 0.2.3
    sha: 2839e79665f131bdb5782e51f2c6c9599c133c6098982a54c794358bf432529c
  - name: percent-encoding
    version: 2.1.0
    sha: d4fd5641d01c8f18a23da7b6fe29298ff4b55afcccdf78973b24cf3175fee32e
  - name: pkg-config
    version: 0.3.17
    sha: 05da548ad6865900e60eaba7f589cc0783590a92e940c26953ff81ddbab2d677
  - name: proc-macro-error
    version: 1.0.2
    sha: 98e9e4b82e0ef281812565ea4751049f1bdcdfccda7d3f459f2e138a40c08678
  - name: proc-macro-error-attr
    version: 1.0.2
    sha: 4f5444ead4e9935abd7f27dc51f7e852a0569ac888096d5ec2499470794e2e53
  - name: proc-macro2
    version: 1.0.12
    sha: 8872cf6f48eee44265156c111456a700ab3483686b3f96df4cf5481c89157319
  - name: quote
    version: 1.0.4
    sha: 4c1f4b0efa5fc5e8ceb705136bfee52cfdb6a4e3509f770b478cd6ed434232a7
  - name: serde
    version: 1.0.106
    sha: 36df6ac6412072f67cf767ebbde4133a5b2e88e76dc6187fa7104cd16f783399
  - name: serde_derive
    version: 1.0.106
    sha: 9e549e3abf4fb8621bd1609f11dfc9f5e50320802273b12f3811a67e6716ea6c
  - name: sha2
    version: 0.8.1
    sha: 27044adfd2e1f077f649f59deb9490d3941d674002f7d062870a60ebe9bd47a0
  - name: slab
    version: 0.4.2
    sha: c111b5bd5695e56cffe5129854aa230b39c93a305372fdbb2668ca2394eea9f8
  - name: smallvec
    version: 1.4.0
    sha: c7cb5678e1615754284ec264d9bb5b4c27d2018577fd90ac0ceb578591ed5ee4
  - name: strsim
    version: 0.8.0
    sha: 8ea5119cdb4c55b55d432abb513a0429384878c15dde60cc77b1c99de1a95a6a
  - name: structopt
    version: 0.3.14
    sha: 863246aaf5ddd0d6928dfeb1a9ca65f505599e4e1b399935ef7e75107516b4ef
  - name: structopt-derive
    version: 0.4.7
    sha: d239ca4b13aee7a2142e6795cbd69e457665ff8037aed33b3effdc430d2f927a
  - name: subtle
    version: 1.0.0
    sha: 2d67a5a62ba6e01cb2192ff309324cb4875d0c451d55fe2319433abe7a05a8ee
  - name: syn
    version: 1.0.18
    sha: 410a7488c0a728c7ceb4ad59b9567eb4053d02e8cc7f5c0e0eeeb39518369213
  - name: syn-mid
    version: 0.5.0
    sha: 7be3539f6c128a931cf19dcee741c1af532c7fd387baa739c03dd2e96479338a
  - name: textwrap
    version: 0.11.0
    sha: d326610f408c7a4eb6f51c37c330e496b08506c9457c9d34287ecc38809fb060
  - name: typenum
    version: 1.12.0
    sha: 373c8a200f9e67a0c95e62a4f52fbf80c23b4381c05a17845531982fa99e6b33
  - name: unicode-bidi
    version: 0.3.4
    sha: 49f2bd0c6468a8230e1db229cff8029217cf623c767ea5d60bfbd42729ea54d5
  - name: unicode-normalization
    version: 0.1.12
    sha: 5479532badd04e128284890390c1e876ef7a993d0570b3597ae43dfa1d59afa4
  - name: unicode-segmentation
    version: 1.6.0
    sha: e83e153d1053cbb5a118eeff7fd5be06ed99153f00dbcd8ae310c5fb2b22edc0
  - name: unicode-width
    version: 0.1.7
    sha: caaa9d531767d1ff2150b9332433f32a24622147e5ebb1f26409d5da67afd479
  - name: unicode-xid
    version: 0.2.0
    sha: 826e7639553986605ec5979c7dd957c7895e93eabed50ab2ffa7f6128a75097c
  - name: url
    version: 2.1.1
    sha: 829d4a8476c35c9bf0bbce5a3b23f4106f79728039b726d292bb93bc106787cb
  - name: uuid
    version: 0.8.1
    sha: 9fde2f6a4bea1d6e007c4ad38c6839fa71cbb63b6dbf5b595aa38dc9b1093c11
  - name: vec_map
    version: 0.8.2
    sha: f1bddf1187be692e79c5ffeab891132dfb0f236ed36a43c7ed39f1165ee20191
  - name: version_check
    version: 0.9.1
    sha: 078775d0255232fb988e6fccf26ddc9d1ac274299aaedcedce21c6f72cc533ce
  - name: void
    version: 1.0.2
    sha: 6a02e4885ed3bc0f2de90ea6dd45ebcbb66dacffe03547fadbb0eeae2770887d
  - name: winapi
    version: 0.2.8
    sha: 167dc9d6949a9b857f3451275e911c3f44255842c1f7a76f33c55103a909087a
  - name: winapi
    version: 0.3.8
    sha: 8093091eeb260906a183e6ae1abdba2ef5ef2257a21801128899c3fc699229c6
  - name: winapi-build
    version: 0.1.1
    sha: 2d315eee3b34aca4797b2da6b13ed88266e6d612562a0c46390af8299fc699bc
  - name: winapi-i686-pc-windows-gnu
    version: 0.4.0
    sha: ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6
  - name: winapi-x86_64-pc-windows-gnu
    version: 0.4.0
    sha: 712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f
  - name: ws2_32-sys
    version: 0.2.1
    sha: d59cefebd0c892fa2dd6de581e937301d8552cb44489cdff035c6187cb63fa5e
config:
  install-commands:
  - cargo install --path . --root "%{install-root}%{prefix}"
  - rm "%{install-root}%{prefix}"/.crates*
  - ln -s libslirp-helper "%{install-root}%{bindir}/slirp-helper"
