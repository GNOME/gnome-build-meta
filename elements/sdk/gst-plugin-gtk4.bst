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
  url: crates:crates/gst-plugin-gtk4/gst-plugin-gtk4-0.14.5.crate
  ref: 43374b56cbf41ca49730deb030f8d880bbf427226b53e14760f6b8bef03f4c0e
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
    version: 0.21.5
    sha: b01fe135c0bd16afe262b6dea349bd5ea30e6de50708cec639aae7c5c14cc7e4
  - kind: registry
    name: cairo-sys-rs
    version: 0.21.5
    sha: 06c28280c6b12055b5e39e4554271ae4e6630b27c0da9148c4cf6485fc6d245c
  - kind: registry
    name: cc
    version: 1.2.56
    sha: aebf35691d1bfb0ac386a69bac2fde4dd276fb618cf8bf4f5318fe285e821bb2
  - kind: registry
    name: cfg-expr
    version: 0.18.0
    sha: 1a2b34126159980f92da2a08bdec0694fd80fb5eb9e48aff25d20a0d8dfa710d
  - kind: registry
    name: cfg-if
    version: 1.0.4
    sha: 9330f8b2ff13f34540b44e946ef35111825727b38d33286ef986142615121801
  - kind: registry
    name: chrono
    version: 0.4.44
    sha: c673075a2e0e5f4a1dde27ce9dee1ea4558c7ffe648f576438a20ca1d2acc4b0
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
    version: 0.21.5
    sha: debb0d39e3cdd84626edfd54d6e4a6ba2da9a0ef2e796e691c4e9f8646fda00c
  - kind: registry
    name: gdk-pixbuf-sys
    version: 0.21.5
    sha: bd95ad50b9a3d2551e25dd4f6892aff0b772fe5372d84514e9d0583af60a0ce7
  - kind: registry
    name: gdk4
    version: 0.10.3
    sha: 756564212bbe4a4ce05d88ffbd2582581ac6003832d0d32822d0825cca84bfbf
  - kind: registry
    name: gdk4-sys
    version: 0.10.3
    sha: a6d4e5b3ccf591826a4adcc83f5f57b4e59d1925cb4bf620b0d645f79498b034
  - kind: registry
    name: gdk4-wayland
    version: 0.10.3
    sha: fcb81f3e1e7d9dac156e91a9dc81be33d8c99338975254ed93ca9f1de5cb3168
  - kind: registry
    name: gdk4-wayland-sys
    version: 0.10.3
    sha: d739aa4ae9a1abb15f01ab2d8b8dd14a7792104ffb60bbc09bb94d76b905cfeb
  - kind: registry
    name: gdk4-win32
    version: 0.10.3
    sha: a004ec8cbf0daecfc4f00590683dd1e61dd2d6b0b4a130c09340ff82ea59cc63
  - kind: registry
    name: gdk4-win32-sys
    version: 0.10.3
    sha: eddc1ec7b8be04fec1feec2766ba53225c09d58ddfc7bd9054512fcae16f416f
  - kind: registry
    name: gdk4-x11
    version: 0.10.3
    sha: cd10920274b392ff87d5b51932bebe24e428f9a2c0e1540b9d9be92a497f265a
  - kind: registry
    name: gdk4-x11-sys
    version: 0.10.3
    sha: 8885d7dbeb194e6be61f0c62403200ad0c2f1da6930f816214eaf7124e0287bd
  - kind: registry
    name: gio
    version: 0.21.5
    sha: c5ff48bf600c68b476e61dc6b7c762f2f4eb91deef66583ba8bb815c30b5811a
  - kind: registry
    name: gio-sys
    version: 0.21.5
    sha: 0071fe88dba8e40086c8ff9bbb62622999f49628344b1d1bf490a48a29d80f22
  - kind: registry
    name: glib
    version: 0.21.5
    sha: 16de123c2e6c90ce3b573b7330de19be649080ec612033d397d72da265f1bd8b
  - kind: registry
    name: glib-macros
    version: 0.21.5
    sha: cf59b675301228a696fe01c3073974643365080a76cc3ed5bc2cbc466ad87f17
  - kind: registry
    name: glib-sys
    version: 0.21.5
    sha: 2d95e1a3a19ae464a7286e14af9a90683c64d70c02532d88d87ce95056af3e6c
  - kind: registry
    name: gobject-sys
    version: 0.21.5
    sha: 2dca35da0d19a18f4575f3cb99fe1c9e029a2941af5662f326f738a21edaf294
  - kind: registry
    name: graphene-rs
    version: 0.21.5
    sha: 2730030ac9db663fd8bfe1e7093742c1cafb92db9c315c9417c29032341fe2f9
  - kind: registry
    name: graphene-sys
    version: 0.21.5
    sha: 915e32091ea9ad241e4b044af62b7351c2d68aeb24f489a0d7f37a0fc484fd93
  - kind: registry
    name: gsk4
    version: 0.10.3
    sha: e755de9d8c5896c5beaa028b89e1969d067f1b9bf1511384ede971f5983aa153
  - kind: registry
    name: gsk4-sys
    version: 0.10.3
    sha: 7ce91472391146f482065f1041876d8f869057b195b95399414caa163d72f4f7
  - kind: registry
    name: gst-plugin-version-helper
    version: 0.8.3
    sha: a68a894ef2d738054b950e1dbef5d9012b63fd968d4d32dbccd31bd8d8d4b219
  - kind: registry
    name: gstreamer
    version: 0.24.5
    sha: 1e8251db223ca38d9aefaf3d19f6f11581a9123cd12dacebd8b9e182da965023
  - kind: registry
    name: gstreamer-allocators
    version: 0.24.5
    sha: 995fcebc51d14f09b269a8c0e1875b81196240aad6b56836db1041c3d4094e1e
  - kind: registry
    name: gstreamer-allocators-sys
    version: 0.24.5
    sha: f488cbd148fe6ccddb1095bd9131fb4f6a58419966d33fb40154053eb8d376f4
  - kind: registry
    name: gstreamer-base
    version: 0.24.5
    sha: 9375f9a12120a8ee17b765c816c9b23861ce258def77b0ee40a05acb00c74972
  - kind: registry
    name: gstreamer-base-sys
    version: 0.24.5
    sha: 1b844f3559b6ab0379b4b771261643783ae4e0ffa71d5f5f46e33b7acf66b752
  - kind: registry
    name: gstreamer-gl
    version: 0.24.5
    sha: 26f98bf53e5a0eb2216c43b7d83da8bcd79670a1e1f83fda8ae15e84a7a55dd1
  - kind: registry
    name: gstreamer-gl-egl
    version: 0.24.5
    sha: 92cfddf07ebfb03b3fbafc41e73e26e7c3baedb4d0b72fc6757f1c30e9902004
  - kind: registry
    name: gstreamer-gl-egl-sys
    version: 0.24.5
    sha: 650e7bb5eb5ad08cef20b45f805d474884590fba88da75296dd917a5ee06cb13
  - kind: registry
    name: gstreamer-gl-sys
    version: 0.24.5
    sha: 091e9ffaeb2a062b5dbf4e86bb6fcac7240f57bd3f8f3d386d7fa337c1d8a4fc
  - kind: registry
    name: gstreamer-gl-wayland
    version: 0.24.5
    sha: ea5c19866ca88fa75cd7929d4648c42daaa1376dd6a1ed61fc1702a307f7ee65
  - kind: registry
    name: gstreamer-gl-wayland-sys
    version: 0.24.5
    sha: e495d1d8a866a76926931720dac8327b1d79b1a32a3047747c07ed77b0abba96
  - kind: registry
    name: gstreamer-gl-x11
    version: 0.24.5
    sha: 9645ab71dd251b938b35edccdef57cf40b111a4cdd6539639be8268a17d57a83
  - kind: registry
    name: gstreamer-gl-x11-sys
    version: 0.24.5
    sha: dd0737643063dcffa283a3f4dfe38d67567eab832dfe32373179b0f168b366d3
  - kind: registry
    name: gstreamer-sys
    version: 0.24.5
    sha: b5d37c1a599ae57b8186948bd5699f2dbfc044baea9d400228b489a85bcf2759
  - kind: registry
    name: gstreamer-video
    version: 0.24.5
    sha: 72d9ba5295b206563a990a087c6541d57f650dcd4be4ca8a5a149a758e8df8a0
  - kind: registry
    name: gstreamer-video-sys
    version: 0.24.5
    sha: 20236fa412d7a50e59aa234b46828a99e3e5f06c4f80d271a49ecd2a1d3bfcbe
  - kind: registry
    name: gtk4
    version: 0.10.3
    sha: acb21d53cfc6f7bfaf43549731c43b67ca47d87348d81c8cfc4dcdd44828e1a4
  - kind: registry
    name: gtk4-macros
    version: 0.10.3
    sha: 3ccfb5a14a3d941244815d5f8101fa12d4577b59cc47245778d8d907b0003e42
  - kind: registry
    name: gtk4-sys
    version: 0.10.3
    sha: 842577fe5a1ee15d166cd3afe804ce0cab6173bc789ca32e21308834f20088dd
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
    version: 0.3.90
    sha: 14dc6f6450b3f6d4ed5b16327f38fed626d375a886159ca555bd7822c0c3a5a6
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
    version: 0.2.180
    sha: bcc35a38544a891a5f7c865aca548a982ccb3b8650a5b06d0fd33a10283c56fc
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
    version: 0.21.5
    sha: 52d1d85e2078077a065bb7fc072783d5bcd4e51b379f22d67107d0a16937eb69
  - kind: registry
    name: pango-sys
    version: 0.21.5
    sha: b4f06627d36ed5ff303d2df65211fc2e52ba5b17bf18dd80ff3d9628d6e06cfd
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
    version: 0.13.2
    sha: e502f78cdbb8ba4718f566c418c52bc729126ffd16baee5baa718cf25dd5a69a
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
    version: 0.2.113
    sha: 60722a937f594b7fde9adb894d7c092fc1bb6612897c46368d18e7a20208eff2
  - kind: registry
    name: wasm-bindgen-macro
    version: 0.2.113
    sha: 0fac8c6395094b6b91c4af293f4c79371c163f9a6f56184d2c9a85f5a95f3950
  - kind: registry
    name: wasm-bindgen-macro-support
    version: 0.2.113
    sha: ab3fabce6159dc20728033842636887e4877688ae94382766e00b180abac9d60
  - kind: registry
    name: wasm-bindgen-shared
    version: 0.2.113
    sha: de0e091bdb824da87dc01d967388880d017a0a9bc4f3bdc0d86ee9f9336e3bb5
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
