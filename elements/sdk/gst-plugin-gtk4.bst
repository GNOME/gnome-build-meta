kind: manual

environment:
  MAXJOBS: "%{max-jobs}"

environment-nocache:
- MAXJOBS

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/cargo-c.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- sdk/gtk.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

sources:
- kind: tar
  url: crates:crates/gst-plugin-gtk4/gst-plugin-gtk4-0.15.0.crate
  ref: e4618f271576021eca046c06efe799c92fa3806fc5c3c535f2e6622d01c9f34f
- kind: cargo2
  ref:
  - kind: registry
    name: android_system_properties
    version: 0.1.5
    sha: 819e7219dbd41043ac279b19830f2efc897156490d7fd6ea916720117ee66311
  - kind: registry
    name: async-channel
    version: 2.5.0
    sha: 924ed96dd52d1b75e9c1a3e6275715fd320f5f9439fb5a4a11fa51f4221158d2
  - kind: registry
    name: atomic_refcell
    version: 0.1.13
    sha: 41e67cd8309bbd06cd603a9e693a784ac2e5d1e955f11286e355089fcab3047c
  - kind: registry
    name: autocfg
    version: 1.5.0
    sha: c08606f8c3cbf4ce6ec8e28fb0014a2c086708fe954eaa885384a6165172e7e8
  - kind: registry
    name: bitflags
    version: 2.11.0
    sha: 843867be96c8daad0d758b57df9392b6d8d271134fce549de6ce169ff98a92af
  - kind: registry
    name: bumpalo
    version: 3.20.2
    sha: 5d20789868f4b01b2f2caec9f5c4e0213b41e3e5702a50157d699ae31ced2fcb
  - kind: registry
    name: cairo-rs
    version: 0.22.0
    sha: 5cc8d9aa793480744cd9a0524fef1a2e197d9eaa0f739cde19d16aba530dcb95
  - kind: registry
    name: cairo-sys-rs
    version: 0.22.0
    sha: f8b4985713047f5faee02b8db6a6ef32bbb50269ff53c1aee716d1d195b76d54
  - kind: registry
    name: cc
    version: 1.2.56
    sha: aebf35691d1bfb0ac386a69bac2fde4dd276fb618cf8bf4f5318fe285e821bb2
  - kind: registry
    name: cfg-expr
    version: 0.17.2
    sha: 8d4ba6e40bd1184518716a6e1a781bf9160e286d219ccdb8ab2612e74cfe4789
  - kind: registry
    name: cfg-if
    version: 1.0.4
    sha: 9330f8b2ff13f34540b44e946ef35111825727b38d33286ef986142615121801
  - kind: registry
    name: chrono
    version: 0.4.43
    sha: fac4744fb15ae8337dc853fee7fb3f4e48c0fbaa23d0afe49c447b4fab126118
  - kind: registry
    name: concurrent-queue
    version: 2.5.0
    sha: 4ca0197aee26d1ae37445ee532fefce43251d24cc7c166799f4d46817f1d3973
  - kind: registry
    name: core-foundation-sys
    version: 0.8.7
    sha: 773648b94d0e5d620f64f280777445740e61fe701025087ec8b57f45c791888b
  - kind: registry
    name: crossbeam-utils
    version: 0.8.21
    sha: d0a5c400df2834b80a4c3327b3aad3a4c4cd4de0629063962b03235697506a28
  - kind: registry
    name: either
    version: 1.15.0
    sha: 48c757948c5ede0e46177b7add2e67155f70e33c07fea8284df6576da70b3719
  - kind: registry
    name: equivalent
    version: 1.0.2
    sha: 877a4ace8713b0bcf2a4e7eec82529c029f1d0619886d18145fea96c3ffe5c0f
  - kind: registry
    name: event-listener
    version: 5.4.1
    sha: e13b66accf52311f30a0db42147dadea9850cb48cd070028831ae5f5d4b856ab
  - kind: registry
    name: event-listener-strategy
    version: 0.5.4
    sha: 8be9f3dfaaffdae2972880079a491a1a8bb7cbed0b8dd7a347f668b4150a3b93
  - kind: registry
    name: field-offset
    version: 0.3.6
    sha: 38e2275cc4e4fc009b0669731a1e5ab7ebf11f469eaede2bab9309a5b4d6057f
  - kind: registry
    name: find-msvc-tools
    version: 0.1.9
    sha: 5baebc0774151f905a1a2cc41989300b1e6fbb29aff0ceffa1064fdd3088d582
  - kind: registry
    name: futures-channel
    version: 0.3.32
    sha: 07bbe89c50d7a535e539b8c17bc0b49bdb77747034daa8087407d655f3f7cc1d
  - kind: registry
    name: futures-core
    version: 0.3.32
    sha: 7e3450815272ef58cec6d564423f6e755e25379b217b0bc688e295ba24df6b1d
  - kind: registry
    name: futures-executor
    version: 0.3.32
    sha: baf29c38818342a3b26b5b923639e7b1f4a61fc5e76102d4b1981c6dc7a7579d
  - kind: registry
    name: futures-io
    version: 0.3.32
    sha: cecba35d7ad927e23624b22ad55235f2239cfa44fd10428eecbeba6d6a717718
  - kind: registry
    name: futures-macro
    version: 0.3.32
    sha: e835b70203e41293343137df5c0664546da5745f82ec9b84d40be8336958447b
  - kind: registry
    name: futures-task
    version: 0.3.32
    sha: 037711b3d59c33004d3856fbdc83b99d4ff37a24768fa1be9ce3538a1cde4393
  - kind: registry
    name: futures-util
    version: 0.3.32
    sha: 389ca41296e6190b48053de0321d02a77f32f8a5d2461dd38762c0593805c6d6
  - kind: registry
    name: gdk-pixbuf
    version: 0.22.0
    sha: 25f420376dbee041b2db374ce4573892a36222bb3f6c0c43e24f0d67eae9b646
  - kind: registry
    name: gdk-pixbuf-sys
    version: 0.22.0
    sha: 48f31b37b1fc4b48b54f6b91b7ef04c18e00b4585d98359dd7b998774bbd91fb
  - kind: registry
    name: gdk4
    version: 0.11.0
    sha: 2e9a95621b043a35e70ea9f6da89e1a471658ee5771258874f000a11f6a9cb89
  - kind: registry
    name: gdk4-sys
    version: 0.11.0
    sha: 4d322515677e4a12e10efe7e758743c3e5faa56940237f19ba6890ba8edbbb76
  - kind: registry
    name: gdk4-wayland
    version: 0.11.0
    sha: 7027433b8f19075ab22f01d0e0ba4373e303ffdb4ce4f846a2763cb020ea9bdc
  - kind: registry
    name: gdk4-wayland-sys
    version: 0.11.0
    sha: 653cafb8715f2ac1c56edaf8060d9360ae3acbe3c6fb61b676a2917d42b668cf
  - kind: registry
    name: gdk4-win32
    version: 0.11.0
    sha: 990cda250ffeb4bac35c4c5716a3a0d1a17d524fca6243bb2c0b5c3ff3baeca0
  - kind: registry
    name: gdk4-win32-sys
    version: 0.11.0
    sha: f2ca92d792abe5433bad3fd8fc2e234864d5e37268f6600a29350d174a30a942
  - kind: registry
    name: gdk4-x11
    version: 0.11.0
    sha: 13a00e4c617d6570633e44ba3ff221350669edf6cf3447a40f882dfb6f1dfdc3
  - kind: registry
    name: gdk4-x11-sys
    version: 0.11.0
    sha: 24d41f2e28f62378b081288914325d73bddbb6ccbbadb41aa6392afc71d27002
  - kind: registry
    name: gio
    version: 0.22.1
    sha: bb018ae3f3967134a833fac8a2568c3e698f4b95c658865360772d73803cc5de
  - kind: registry
    name: gio-sys
    version: 0.22.0
    sha: 64729ba2772c080448f9f966dba8f4456beeb100d8c28a865ef8a0f2ef4987e1
  - kind: registry
    name: glib
    version: 0.22.0
    sha: 9a3b79a62980e85d61aae88988e5bcca6a35f05b0008e1333aa43bd61ef9bf35
  - kind: registry
    name: glib-macros
    version: 0.22.0
    sha: 8b48a968528354e04603ae96205f00cf7e77347ffde0fc943a2159948d7d6d80
  - kind: registry
    name: glib-sys
    version: 0.22.0
    sha: 48073e3b228419faa80b9b7f7122759d4ab2f44cd52a065fde7ca08f34c03147
  - kind: registry
    name: gobject-sys
    version: 0.22.0
    sha: 18eda93f09d3778f38255b231b17ef67195013a592c91624a4daf8bead875565
  - kind: registry
    name: graphene-rs
    version: 0.22.0
    sha: c7d1b7881f96869f49808b6adfe906a93a57a34204952253444d68c3208d71f1
  - kind: registry
    name: graphene-sys
    version: 0.22.0
    sha: 517f062f3fd6b7fd3e57a3f038a74b3c23ca32f51199ff028aa704609943f79c
  - kind: registry
    name: gsk4
    version: 0.11.0
    sha: c84a7e778764e5c8e67440c616e11a0da21828bbf04490655c4058f6c917af6f
  - kind: registry
    name: gsk4-sys
    version: 0.11.0
    sha: 9fbfbe080ce408e35a94eded4b9cc7a16fa2ffbaf6f04ab5a35d9c3c73841c88
  - kind: registry
    name: gst-plugin-version-helper
    version: 0.8.3
    sha: a68a894ef2d738054b950e1dbef5d9012b63fd968d4d32dbccd31bd8d8d4b219
  - kind: registry
    name: gstreamer
    version: 0.25.0
    sha: 4b308f4e01e375e0648f9737a0528dca6f6cbf7d4573f2374dbc069c88a027c6
  - kind: registry
    name: gstreamer-allocators
    version: 0.25.0
    sha: 92b9867fab2889baa59250d600bceee3dea56e5a28631d88bf1bd9f43e0b2549
  - kind: registry
    name: gstreamer-allocators-sys
    version: 0.25.0
    sha: ea44ee4a86b39bcdcfd260179b7dbfdd5f81955d6fee35f11264934caf65230c
  - kind: registry
    name: gstreamer-base
    version: 0.25.0
    sha: c08353a8a382be9a49b15fb9c46b3abd6f8a6e6439e1eaedc87d08f1abdcfad1
  - kind: registry
    name: gstreamer-base-sys
    version: 0.25.0
    sha: 6569606feeb89cfcf95a6476a64a0f0aec83fadcef0e91c24e576f7851ceac3a
  - kind: registry
    name: gstreamer-gl
    version: 0.25.0
    sha: 94f83397da547ce27d7b912980ecb21c99c6aedee4015765355fe66cdf0bd9b9
  - kind: registry
    name: gstreamer-gl-egl
    version: 0.25.0
    sha: ff3c29e6d4b92ef22b0bacc2cff02902d40516942fead63c656d7fccc75221e8
  - kind: registry
    name: gstreamer-gl-egl-sys
    version: 0.25.0
    sha: e7294007aa6c0c6082d4835c391ab4094ef09ef581cde4c67edad2c1befcfd84
  - kind: registry
    name: gstreamer-gl-sys
    version: 0.25.0
    sha: 9c57ba9f4e0f2d852d480049b9eae4f69f0abe450eece4d96494da0b4857b04e
  - kind: registry
    name: gstreamer-gl-wayland
    version: 0.25.0
    sha: 9a83ca3d2030846f01be738b8b867ecb4b95269497bcfa459b8fc1ce897ad9f4
  - kind: registry
    name: gstreamer-gl-wayland-sys
    version: 0.25.0
    sha: 6ccd79a57650954ced0a0c8fcb38c561a83c1cb6515f1e318bbb6631ce287590
  - kind: registry
    name: gstreamer-gl-x11
    version: 0.25.0
    sha: 642d86fed827466e2d1ff4f430313fdab5d113bc2bf1e9c9736a873e8832c6ca
  - kind: registry
    name: gstreamer-gl-x11-sys
    version: 0.25.0
    sha: 1391e727c873085ce4f8b2deb7fc4dcb15098ef75433777510860b0d983ff39f
  - kind: registry
    name: gstreamer-sys
    version: 0.25.0
    sha: 85d09343b4c23d64b3ef35f1f644598860cc9a4617e7ccded141de97cd528608
  - kind: registry
    name: gstreamer-video
    version: 0.25.0
    sha: 51809937ed7f6fa3974b2730a39623d59fd7415ede882d08d5ecef5de39d758d
  - kind: registry
    name: gstreamer-video-sys
    version: 0.25.0
    sha: 458f82631a5063057c10583a57ba0fbce689e67122cfdb5eddbeaa43eb812e75
  - kind: registry
    name: gtk4
    version: 0.11.0
    sha: 56f78f0fe325e541c40f1a7f647d324bdda34cf67fe217c2843fd9c18ae514c9
  - kind: registry
    name: gtk4-macros
    version: 0.11.0
    sha: 3581b242ba62fdff122ebb626ea641582ec326031622bd19d60f85029c804a87
  - kind: registry
    name: gtk4-sys
    version: 0.11.0
    sha: f063fc314b4d23aac4316a877159c02e86c1b2ba1f0a13e9aafbbebdce9c0800
  - kind: registry
    name: hashbrown
    version: 0.16.1
    sha: 841d1cc9bed7f9236f321df977030373f4a4163ae1a7dbfe1a51a2c1a51d9100
  - kind: registry
    name: heck
    version: 0.5.0
    sha: 2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea
  - kind: registry
    name: iana-time-zone
    version: 0.1.65
    sha: e31bc9ad994ba00e440a8aa5c9ef0ec67d5cb5e5cb0cc7f8b744a35b389cc470
  - kind: registry
    name: iana-time-zone-haiku
    version: 0.1.2
    sha: f31827a206f56af32e590ba56d5d2d085f558508192593743f16b2306495269f
  - kind: registry
    name: indexmap
    version: 2.13.0
    sha: 7714e70437a7dc3ac8eb7e6f8df75fd8eb422675fc7678aff7364301092b1017
  - kind: registry
    name: itertools
    version: 0.14.0
    sha: 2b192c782037fadd9cfa75548310488aabdbf3d2da73885b31bd0abd03351285
  - kind: registry
    name: js-sys
    version: 0.3.86
    sha: d36139f1c97c42c0c86a411910b04e48d4939a0376e6e0f989420cbdee0120e5
  - kind: registry
    name: khronos-egl
    version: 6.0.0
    sha: 6aae1df220ece3c0ada96b8153459b67eebe9ae9212258bb0134ae60416fdf76
  - kind: registry
    name: kstring
    version: 2.0.2
    sha: 558bf9508a558512042d3095138b1f7b8fe90c5467d94f9f1da28b3731c5dbd1
  - kind: registry
    name: libc
    version: 0.2.182
    sha: 6800badb6cb2082ffd7b6a67e6125bb39f18782f793520caee8cb8846be06112
  - kind: registry
    name: log
    version: 0.4.29
    sha: 5e5032e24019045c762d3c0f28f5b6b8bbf38563a65908389bf7978758920897
  - kind: registry
    name: memchr
    version: 2.8.0
    sha: f8ca58f447f06ed17d5fc4043ce1b10dd205e060fb3ce5b979b8ed8e59ff3f79
  - kind: registry
    name: memoffset
    version: 0.9.1
    sha: 488016bfae457b036d996092f6cb448677611ce4449e970ceaf42695203f218a
  - kind: registry
    name: muldiv
    version: 1.0.1
    sha: 956787520e75e9bd233246045d19f42fb73242759cc57fba9611d940ae96d4b0
  - kind: registry
    name: num-integer
    version: 0.1.46
    sha: 7969661fd2958a5cb096e56c8e1ad0444ac2bbcd0061bd28660485a44879858f
  - kind: registry
    name: num-rational
    version: 0.4.2
    sha: f83d14da390562dca69fc84082e73e548e1ad308d24accdedd2720017cb37824
  - kind: registry
    name: num-traits
    version: 0.2.19
    sha: 071dfc062690e90b734c0b2273ce72ad0ffa95f0c74596bc250dcfd960262841
  - kind: registry
    name: once_cell
    version: 1.21.3
    sha: 42f5e15c9953c5e4ccceeb2e7382a716482c34515315f7b03532b8b4e8393d2d
  - kind: registry
    name: option-operations
    version: 0.6.1
    sha: aca39cf52b03268400c16eeb9b56382ea3c3353409309b63f5c8f0b1faf42754
  - kind: registry
    name: pango
    version: 0.22.0
    sha: 25d8f224eddef627b896d2f7b05725b3faedbd140e0e8343446f0d34f34238ee
  - kind: registry
    name: pango-sys
    version: 0.22.0
    sha: bbd111a20ca90fedf03e09c59783c679c00900f1d8491cca5399f5e33609d5d6
  - kind: registry
    name: parking
    version: 2.2.1
    sha: f38d5652c16fde515bb1ecef450ab0f6a219d619a7274976324d5e377f7dceba
  - kind: registry
    name: pastey
    version: 0.2.1
    sha: b867cad97c0791bbd3aaa6472142568c6c9e8f71937e98379f584cfb0cf35bec
  - kind: registry
    name: pin-project-lite
    version: 0.2.16
    sha: 3b3cff922bd51709b605d9ead9aa71031d81447142d828eb4a6eba76fe619f9b
  - kind: registry
    name: pkg-config
    version: 0.3.32
    sha: 7edddbd0b52d732b21ad9a5fab5c704c14cd949e5e9a1ec5929a24fded1b904c
  - kind: registry
    name: proc-macro-crate
    version: 3.4.0
    sha: 219cb19e96be00ab2e37d6e299658a0cfa83e52429179969b0f0121b4ac46983
  - kind: registry
    name: proc-macro2
    version: 1.0.106
    sha: 8fd00f0bb2e90d81d1044c2b32617f68fcb9fa3bb7640c23e9c748e53fb30934
  - kind: registry
    name: quote
    version: 1.0.44
    sha: 21b2ebcf727b7760c461f091f9f0f539b77b8e87f2fd88131e7f1b433b3cece4
  - kind: registry
    name: rustc_version
    version: 0.4.1
    sha: cfcb3a22ef46e85b45de6ee7e79d063319ebb6594faafcf1c225ea92ab6e9b92
  - kind: registry
    name: rustversion
    version: 1.0.22
    sha: b39cdef0fa800fc44525c84ccb54a029961a8215f9619753635a9c0d2538d46d
  - kind: registry
    name: semver
    version: 1.0.27
    sha: d767eb0aabc880b29956c35734170f26ed551a859dbd361d140cdbeca61ab1e2
  - kind: registry
    name: serde_core
    version: 1.0.228
    sha: 41d385c7d4ca58e59fc732af25c3983b67ac852c1a25000afe1175de458b67ad
  - kind: registry
    name: serde_derive
    version: 1.0.228
    sha: d540f220d3187173da220f885ab66608367b6574e925011a9353e4badda91d79
  - kind: registry
    name: serde_spanned
    version: 1.0.4
    sha: f8bbf91e5a4d6315eee45e704372590b30e260ee83af6639d64557f51b067776
  - kind: registry
    name: shlex
    version: 1.3.0
    sha: 0fda2ff0d084019ba4d7c6f371c95d8fd75ce3524c3cb8fb653a3023f6323e64
  - kind: registry
    name: slab
    version: 0.4.12
    sha: 0c790de23124f9ab44544d7ac05d60440adc586479ce501c1d6d7da3cd8c9cf5
  - kind: registry
    name: smallvec
    version: 1.15.1
    sha: 67b1b7a3b5fe4f1376887184045fcf45c69e92af734b7aaddc05fb777b6fbd03
  - kind: registry
    name: static_assertions
    version: 1.1.0
    sha: a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f
  - kind: registry
    name: syn
    version: 2.0.117
    sha: e665b8803e7b1d2a727f4023456bbbbe74da67099c585258af0ad9c5013b9b99
  - kind: registry
    name: system-deps
    version: 7.0.7
    sha: 48c8f33736f986f16d69b6cb8b03f55ddcad5c41acc4ccc39dd88e84aa805e7f
  - kind: registry
    name: target-lexicon
    version: 0.12.16
    sha: 61c41af27dd6d1e27b1b16b489db798443478cef1f06a660c96db617ba5de3b1
  - kind: registry
    name: thiserror
    version: 2.0.18
    sha: 4288b5bcbc7920c07a1149a35cf9590a2aa808e0bc1eafaade0b80947865fbc4
  - kind: registry
    name: thiserror-impl
    version: 2.0.18
    sha: ebc4ee7f67670e9b64d05fa4253e753e016c6c95ff35b89b7941d6b856dec1d5
  - kind: registry
    name: toml
    version: 0.9.12+spec-1.1.0
    sha: cf92845e79fc2e2def6a5d828f0801e29a2f8acc037becc5ab08595c7d5e9863
  - kind: registry
    name: toml_datetime
    version: 0.7.5+spec-1.1.0
    sha: 92e1cfed4a3038bc5a127e35a2d360f145e1f4b971b551a2ba5fd7aedf7e1347
  - kind: registry
    name: toml_edit
    version: 0.23.10+spec-1.0.0
    sha: 84c8b9f757e028cee9fa244aea147aab2a9ec09d5325a9b01e0a49730c2b5269
  - kind: registry
    name: toml_parser
    version: 1.0.9+spec-1.1.0
    sha: 702d4415e08923e7e1ef96cd5727c0dfed80b4d2fa25db9647fe5eb6f7c5a4c4
  - kind: registry
    name: toml_writer
    version: 1.0.6+spec-1.1.0
    sha: ab16f14aed21ee8bfd8ec22513f7287cd4a91aa92e44edfe2c17ddd004e92607
  - kind: registry
    name: unicode-ident
    version: 1.0.24
    sha: e6e4313cd5fcd3dad5cafa179702e2b244f760991f45397d14d4ebf38247da75
  - kind: registry
    name: version-compare
    version: 0.2.1
    sha: 03c2856837ef78f57382f06b2b8563a2f512f7185d732608fd9176cb3b8edf0e
  - kind: registry
    name: wasm-bindgen
    version: 0.2.109
    sha: 9ff9c7baef35ac3c0e17d8bfc9ad75eb62f85a2f02bccc906699dadb0aa9c622
  - kind: registry
    name: wasm-bindgen-macro
    version: 0.2.109
    sha: 39455e84ad887a0bbc93c116d72403f1bb0a39e37dd6f235a43e2128a0c7f1fd
  - kind: registry
    name: wasm-bindgen-macro-support
    version: 0.2.109
    sha: dff4761f60b0b51fd13fec8764167b7bbcc34498ce3e52805fe1db6f2d56b6d6
  - kind: registry
    name: wasm-bindgen-shared
    version: 0.2.109
    sha: bc6a171c53d98021a93a474c4a4579d76ba97f9517d871bc12e27640f218b6dd
  - kind: registry
    name: windows-core
    version: 0.62.2
    sha: b8e83a14d34d0623b51dce9581199302a221863196a1dde71a7663a4c2be9deb
  - kind: registry
    name: windows-implement
    version: 0.60.2
    sha: 053e2e040ab57b9dc951b72c264860db7eb3b0200ba345b4e4c3b14f67855ddf
  - kind: registry
    name: windows-interface
    version: 0.59.3
    sha: 3f316c4a2570ba26bbec722032c4099d8c8bc095efccdc15688708623367e358
  - kind: registry
    name: windows-link
    version: 0.2.1
    sha: f0805222e57f7521d6a62e36fa9163bc891acd422f971defe97d64e70d0a4fe5
  - kind: registry
    name: windows-result
    version: 0.4.1
    sha: 7781fa89eaf60850ac3d2da7af8e5242a5ea78d1a11c49bf2910bb5a73853eb5
  - kind: registry
    name: windows-strings
    version: 0.5.1
    sha: 7837d08f69c77cf6b07689544538e017c1bfcf57e34b4c0ff58e6c2cd3b37091
  - kind: registry
    name: windows-sys
    version: 0.52.0
    sha: 282be5f36a8ce781fad8c8ae18fa3f9beff57ec1b52cb3de0789201425d9a33d
  - kind: registry
    name: windows-sys
    version: 0.61.2
    sha: ae137229bcbd6cdf0f7b80a31df61766145077ddf49416a728b02cb3921ff3fc
  - kind: registry
    name: windows-targets
    version: 0.52.6
    sha: 9b724f72796e036ab90c1021d4780d4d3d648aca59e491e6b98e725b84e99973
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.52.6
    sha: 32a4622180e7a0ec044bb555404c800bc9fd9ec262ec147edd5989ccd0c02cd3
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.52.6
    sha: 09ec2a7bb152e2252b53fa7803150007879548bc709c039df7627cabbd05d469
  - kind: registry
    name: windows_i686_gnu
    version: 0.52.6
    sha: 8e9b5ad5ab802e97eb8e295ac6720e509ee4c243f69d781394014ebfe8bbfa0b
  - kind: registry
    name: windows_i686_gnullvm
    version: 0.52.6
    sha: 0eee52d38c090b3caa76c563b86c3a4bd71ef1a819287c19d586d7334ae8ed66
  - kind: registry
    name: windows_i686_msvc
    version: 0.52.6
    sha: 240948bc05c5e7c6dabba28bf89d89ffce3e303022809e73deaefe4f6ec56c66
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.52.6
    sha: 147a5c80aabfbf0c7d901cb5895d1de30ef2907eb21fbbab29ca94c5b08b1a78
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.52.6
    sha: 24d5b23dc417412679681396f2b49f3de8c1473deb516bd34410872eff51ed0d
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.52.6
    sha: 589f6da84c646204747d1270a2a5661ea66ed1cced2631d546fdfb155959f9ec
  - kind: registry
    name: winnow
    version: 0.7.14
    sha: 5a5364e9d77fcdeeaa6062ced926ee3381faa2ee02d3eb83a5c27a8825540829
config:
  install-commands:
  - >-
    cargo cinstall
    --offline
    --release
    --prefix=%{prefix}
    --libdir=%{libdir}
    --destdir=%{install-root}
    --features=wayland,x11glx,x11egl,dmabuf,gtk_v4_20
    --library-type=cdylib
    --jobs "${MAXJOBS}"
  - |
    %{install-extra}
