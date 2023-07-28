kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-tour.git
  track: master
  ref: 44.0-8-g12cd32acda542793ad44f5a57519dd6cf2fbb96d
- kind: cargo
  ref:
  - name: aho-corasick
    version: 1.0.2
    sha: 43f6cb1bf222025340178f382c426f13757b2960e89779dfcb319c32542a5a41
  - name: anyhow
    version: 1.0.72
    sha: 3b13c32d80ecc7ab747b80c3784bce54ee8a7a0cc4fbda9bf4cda2cf6fe90854
  - name: autocfg
    version: 1.1.0
    sha: d468802bab17cbc0cc575e9b053f41e72aa36bfa6b7f55e3529ffa43161b97fa
  - name: bitflags
    version: 2.3.3
    sha: 630be753d4e58660abd17930c71b647fe46c27ea6b63cc59e1e3851406972e42
  - name: block
    version: 0.1.6
    sha: 0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a
  - name: cairo-rs
    version: 0.18.0
    sha: d859b656775a6b1dd078d3e5924884e6ea88aa649a7fdde03d5b2ec56ffcc10b
  - name: cairo-sys-rs
    version: 0.18.0
    sha: bd4d115132e01c0165e3bf5f56aedee8980b0b96ede4eb000b693c05a8adb8ff
  - name: cc
    version: 1.0.79
    sha: 50d30906286121d95be3d479533b458f87493b30a4b5f79a607db8f5d11aa91f
  - name: cfg-expr
    version: 0.15.3
    sha: 215c0072ecc28f92eeb0eea38ba63ddfcb65c2828c46311d646f1a3ff5f9841c
  - name: env_logger
    version: 0.10.0
    sha: 85cdab6a89accf66733ad5a1693a4dcced6aeff64602b634530dd73c1f3ee9f0
  - name: equivalent
    version: 1.0.1
    sha: 5443807d6dff69373d433ab9ef5378ad8df50ca6298caf15de6e52e24aaf54d5
  - name: errno
    version: 0.3.1
    sha: 4bcfec3a70f97c962c307b2d2c56e358cf1d00b558d74262b5f929ee8cc7e73a
  - name: errno-dragonfly
    version: 0.1.2
    sha: aa68f1b12764fab894d2755d2518754e71b4fd80ecfb822714a1206c2aab39bf
  - name: field-offset
    version: 0.3.6
    sha: 38e2275cc4e4fc009b0669731a1e5ab7ebf11f469eaede2bab9309a5b4d6057f
  - name: futures-channel
    version: 0.3.28
    sha: 955518d47e09b25bbebc7a18df10b81f0c766eaf4c4f1cccef2fca5f2a4fb5f2
  - name: futures-core
    version: 0.3.28
    sha: 4bca583b7e26f571124fe5b7561d49cb2868d79116cfa0eefce955557c6fee8c
  - name: futures-executor
    version: 0.3.28
    sha: ccecee823288125bd88b4d7f565c9e58e41858e47ab72e8ea2d64e93624386e0
  - name: futures-io
    version: 0.3.28
    sha: 4fff74096e71ed47f8e023204cfd0aa1289cd54ae5430a9523be060cdb849964
  - name: futures-macro
    version: 0.3.28
    sha: 89ca545a94061b6365f2c7355b4b32bd20df3ff95f02da9329b34ccc3bd6ee72
  - name: futures-task
    version: 0.3.28
    sha: 76d3d132be6c0e6aa1534069c705a74a5997a356c0dc2f86a47765e5617c5b65
  - name: futures-util
    version: 0.3.28
    sha: 26b01e40b772d54cf6c6d721c1d1abd0647a0106a12ecaa1c186273392a69533
  - name: gdk-pixbuf
    version: 0.18.0
    sha: bbc9c2ed73a81d556b65d08879ba4ee58808a6b1927ce915262185d6d547c6f3
  - name: gdk-pixbuf-sys
    version: 0.18.0
    sha: 3f9839ea644ed9c97a34d129ad56d38a25e6756f99f3a88e15cd39c20629caf7
  - name: gdk4
    version: 0.7.0
    sha: 19a86e774025667764e9729d5ba10eaedfa7531168eb09f4a4f0d4f72211af26
  - name: gdk4-sys
    version: 0.7.0
    sha: 65a465a53159e2b32b9c0992389d893773ee7154a7b437538306ee182cdfe8db
  - name: gettext-rs
    version: 0.7.0
    sha: e49ea8a8fad198aaa1f9655a2524b64b70eb06b2f3ff37da407566c93054f364
  - name: gettext-sys
    version: 0.21.3
    sha: c63ce2e00f56a206778276704bbe38564c8695249fdc8f354b4ef71c57c3839d
  - name: gio
    version: 0.18.0
    sha: ddfaf6c42dc395cd2fdfbbad662d6cb13a6279fe62582a127369ebbde55eeb23
  - name: gio-sys
    version: 0.18.0
    sha: d6e37dea05450b3ecbf549f12e3b0956463d563d0401b0530179f7125101f219
  - name: glib
    version: 0.18.0
    sha: 70e7063a7ce573726a0101f449033056d74e0514b5aa9ef194b040c47a4f0209
  - name: glib-macros
    version: 0.18.0
    sha: 179643c50bf28d20d2f6eacd2531a88f2f5d9747dd0b86b8af1e8bb5dd0de3c0
  - name: glib-sys
    version: 0.18.0
    sha: 71bf1ba51bfe189b0eefd20989b453ab4c6a073da5abcf49903e8ec3301bfa4c
  - name: gobject-sys
    version: 0.18.0
    sha: 0850127b514d1c4a4654ead6dedadb18198999985908e6ffe4436f53c785ce44
  - name: graphene-rs
    version: 0.18.0
    sha: 5cd37f5408014b6d8931f0b5ae4528c64d5a1998dfd3837a1e5d8e2cc562e656
  - name: graphene-sys
    version: 0.18.0
    sha: 59e1ab0d9a534ee912688c2c323427bee8378d203318e9f1988e8d0fea4739ed
  - name: gsk4
    version: 0.7.0
    sha: 668643a2bdf1d4be72bb545b0146dc00b0a22257e056a7c9ac58908f8a3c5f57
  - name: gsk4-sys
    version: 0.7.0
    sha: 0770d1ede7189092748c4ef5b6921264eb945fd2318a58e8f59dc273000810f8
  - name: gtk4
    version: 0.7.0
    sha: e6e128c2f2006e1782760c5690f4756b51c48d62d7fa66cd6da361410f3018e0
  - name: gtk4-macros
    version: 0.7.0
    sha: 3e3f89a5b8fee95287a1cca05ac109da263dd39c6a8ff77eca7b008e684a0b98
  - name: gtk4-sys
    version: 0.7.0
    sha: 19fde71ef2e78ac8fb18073c345b5f29609048d4045a345613645aa1163243c1
  - name: hashbrown
    version: 0.14.0
    sha: 2c6201b9ff9fd90a5a3bac2e56a830d0caa509576f0e503818ee82c181b3437a
  - name: heck
    version: 0.4.1
    sha: 95505c38b4572b2d910cecb0281560f54b440a19336cbbcb27bf6ce6adc6f5a8
  - name: hermit-abi
    version: 0.3.2
    sha: 443144c8cdadd93ebf52ddb4056d257f5b52c04d3c804e657d19eb73fc33668b
  - name: humantime
    version: 2.1.0
    sha: 9a3a5bfb195931eeb336b2a7b4d761daec841b97f947d34394601737a7bba5e4
  - name: indexmap
    version: 2.0.0
    sha: d5477fe2230a79769d8dc68e0eabf5437907c0457a5614a9e8dddb67f65eb65d
  - name: is-terminal
    version: 0.4.9
    sha: cb0889898416213fab133e1d33a0e5858a48177452750691bde3666d0fdbaf8b
  - name: lazy_static
    version: 1.4.0
    sha: e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646
  - name: libadwaita
    version: 0.5.0
    sha: 355823d37a9dc19a46185803c0624bd73d0f25c7e801035cefc1fa9f86dd36b1
  - name: libadwaita-sys
    version: 0.5.0
    sha: 477d6cfbd1621e63253d47d7c46a62816a6c42583362eb41decee532d31b4ba3
  - name: libc
    version: 0.2.147
    sha: b4668fb0ea861c1df094127ac5f1da3409a82116a4ba74fca2e58ef927159bb3
  - name: linux-raw-sys
    version: 0.4.3
    sha: 09fc20d2ca12cb9f044c93e3bd6d32d523e6e2ec3db4f7b2939cd99026ecd3f0
  - name: locale_config
    version: 0.3.0
    sha: 08d2c35b16f4483f6c26f0e4e9550717a2f6575bcd6f12a53ff0c490a94a6934
  - name: log
    version: 0.4.19
    sha: b06a4cde4c0f271a446782e3eff8de789548ce57dbc8eca9292c27f4a42004b4
  - name: malloc_buf
    version: 0.0.6
    sha: 62bb907fe88d54d8d9ce32a3cceab4218ed2f6b7d35617cafe9adf84e43919cb
  - name: memchr
    version: 2.5.0
    sha: 2dffe52ecf27772e601905b7522cb4ef790d2cc203488bbd0e2fe85fcb74566d
  - name: memoffset
    version: 0.9.0
    sha: 5a634b1c61a95585bd15607c6ab0c4e5b226e695ff2800ba0cdccddf208c406c
  - name: objc
    version: 0.2.7
    sha: 915b1b472bc21c53464d6c8461c9d3af805ba1ef837e1cac254428f4a77177b1
  - name: objc-foundation
    version: 0.1.1
    sha: 1add1b659e36c9607c7aab864a76c7a4c2760cd0cd2e120f3fb8b952c7e22bf9
  - name: objc_id
    version: 0.1.1
    sha: c92d4ddb4bd7b50d730c215ff871754d0da6b2178849f8a2a2ab69712d0c073b
  - name: once_cell
    version: 1.18.0
    sha: dd8b5dd2ae5ed71462c540258bedcb51965123ad7e7ccf4b9a8cafaa4a63576d
  - name: pango
    version: 0.18.0
    sha: 06a9e54b831d033206160096b825f2070cf5fda7e35167b1c01e9e774f9202d1
  - name: pango-sys
    version: 0.18.0
    sha: 436737e391a843e5933d6d9aa102cb126d501e815b83601365a948a518555dc5
  - name: pin-project-lite
    version: 0.2.10
    sha: 4c40d25201921e5ff0c862a505c6557ea88568a4e3ace775ab55e93f2f4f9d57
  - name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - name: pkg-config
    version: 0.3.27
    sha: 26072860ba924cbfa98ea39c8c19b4dd6a4a25423dbdf219c1eca91aa0cf6964
  - name: pretty_env_logger
    version: 0.5.0
    sha: 865724d4dbe39d9f3dd3b52b88d859d66bcb2d6a0acfd5ea68a65fb66d4bdc1c
  - name: proc-macro-crate
    version: 1.3.1
    sha: 7f4c021e1093a56626774e81216a4ce732a735e5bad4868a03f3ed65ca0c3919
  - name: proc-macro-error
    version: 1.0.4
    sha: da25490ff9892aab3fcf7c36f08cfb902dd3e71ca0f9f9517bea02a73a5ce38c
  - name: proc-macro-error-attr
    version: 1.0.4
    sha: a1be40180e52ecc98ad80b184934baf3d0d29f979574e439af5a55274b35f869
  - name: proc-macro2
    version: 1.0.66
    sha: 18fb31db3f9bddb2ea821cde30a9f70117e3f119938b5ee630b7403aa6e2ead9
  - name: quote
    version: 1.0.32
    sha: 50f3b39ccfb720540debaa0164757101c08ecb8d326b15358ce76a62c7e85965
  - name: regex
    version: 1.9.1
    sha: b2eae68fc220f7cf2532e4494aded17545fce192d59cd996e0fe7887f4ceb575
  - name: regex-automata
    version: 0.3.3
    sha: 39354c10dd07468c2e73926b23bb9c2caca74c5501e38a35da70406f1d923310
  - name: regex-syntax
    version: 0.7.4
    sha: e5ea92a5b6195c6ef2a0295ea818b312502c6fc94dde986c5553242e18fd4ce2
  - name: rustc_version
    version: 0.4.0
    sha: bfa0f585226d2e68097d4f95d113b15b83a82e819ab25717ec0590d9584ef366
  - name: rustix
    version: 0.38.4
    sha: 0a962918ea88d644592894bc6dc55acc6c0956488adcebbfb6e273506b7fd6e5
  - name: semver
    version: 1.0.18
    sha: b0293b4b29daaf487284529cc2f5675b8e57c61f70167ba415a463651fd6a918
  - name: serde
    version: 1.0.175
    sha: 5d25439cd7397d044e2748a6fe2432b5e85db703d6d097bd014b3c0ad1ebff0b
  - name: serde_spanned
    version: 0.6.3
    sha: 96426c9936fd7a0124915f9185ea1d20aa9445cc9821142f0a73bc9207a2e186
  - name: slab
    version: 0.4.8
    sha: 6528351c9bc8ab22353f9d776db39a20288e8d6c37ef8cfe3317cf875eecfc2d
  - name: smallvec
    version: 1.11.0
    sha: 62bb4feee49fdd9f707ef802e22365a35de4b7b299de4763d44bfea899442ff9
  - name: syn
    version: 1.0.109
    sha: 72b64191b275b66ffe2469e8af2c1cfe3bafa67b529ead792a6d0160888b4237
  - name: syn
    version: 2.0.27
    sha: b60f673f44a8255b9c8c657daf66a596d435f2da81a555b06dc644d080ba45e0
  - name: system-deps
    version: 6.1.1
    sha: 30c2de8a4d8f4b823d634affc9cd2a74ec98c53a756f317e529a48046cbf71f3
  - name: target-lexicon
    version: 0.12.10
    sha: 1d2faeef5759ab89935255b1a4cd98e0baf99d1085e37d36599c625dac49ae8e
  - name: temp-dir
    version: 0.1.11
    sha: af547b166dd1ea4b472165569fc456cfb6818116f854690b0ff205e636523dab
  - name: termcolor
    version: 1.2.0
    sha: be55cf8942feac5c765c2c993422806843c9a9a45d4d5c407ad6dd2ea95eb9b6
  - name: thiserror
    version: 1.0.44
    sha: 611040a08a0439f8248d1990b111c95baa9c704c805fa1f62104b39655fd7f90
  - name: thiserror-impl
    version: 1.0.44
    sha: 090198534930841fab3a5d1bb637cde49e339654e606195f8d9c76eeb081dc96
  - name: toml
    version: 0.7.6
    sha: c17e963a819c331dcacd7ab957d80bc2b9a9c1e71c804826d2f283dd65306542
  - name: toml_datetime
    version: 0.6.3
    sha: 7cda73e2f1397b1262d6dfdcef8aafae14d1de7748d66822d3bfeeb6d03e5e4b
  - name: toml_edit
    version: 0.19.14
    sha: f8123f27e969974a3dfba720fdb560be359f57b44302d280ba72e76a74480e8a
  - name: unicode-ident
    version: 1.0.11
    sha: 301abaae475aa91687eb82514b328ab47a211a533026cb25fc3e519b86adfc3c
  - name: version-compare
    version: 0.1.1
    sha: 579a42fc0b8e0c63b76519a339be31bed574929511fa53c1a3acae26eb258f29
  - name: version_check
    version: 0.9.4
    sha: 49874b5167b65d7193b8aba1567f5c7d93d001cafc34600cee003eda787e483f
  - name: winapi
    version: 0.3.9
    sha: 5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419
  - name: winapi-i686-pc-windows-gnu
    version: 0.4.0
    sha: ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6
  - name: winapi-util
    version: 0.1.5
    sha: 70ec6ce85bb158151cae5e5c87f95a8e97d2c0c4b001223f33a334e3ce5de178
  - name: winapi-x86_64-pc-windows-gnu
    version: 0.4.0
    sha: 712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f
  - name: windows-sys
    version: 0.48.0
    sha: 677d2418bec65e3338edb076e806bc1ec15693c5d0104683f2efe857f61056a9
  - name: windows-targets
    version: 0.48.1
    sha: 05d4b17490f70499f20b9e791dcf6a299785ce8af4d709018206dc5b4953e95f
  - name: windows_aarch64_gnullvm
    version: 0.48.0
    sha: 91ae572e1b79dba883e0d315474df7305d12f569b400fcf90581b06062f7e1bc
  - name: windows_aarch64_msvc
    version: 0.48.0
    sha: b2ef27e0d7bdfcfc7b868b317c1d32c641a6fe4629c171b8928c7b08d98d7cf3
  - name: windows_i686_gnu
    version: 0.48.0
    sha: 622a1962a7db830d6fd0a69683c80a18fda201879f0f447f065a3b7467daa241
  - name: windows_i686_msvc
    version: 0.48.0
    sha: 4542c6e364ce21bf45d69fdd2a8e455fa38d316158cfd43b3ac1c5b1b19f8e00
  - name: windows_x86_64_gnu
    version: 0.48.0
    sha: ca2b8a661f7628cbd23440e50b05d705db3686f894fc9580820623656af974b1
  - name: windows_x86_64_gnullvm
    version: 0.48.0
    sha: 7896dbc1f41e08872e9d5e8f8baa8fdd2677f29468c4e156210174edc7f7b953
  - name: windows_x86_64_msvc
    version: 0.48.0
    sha: 1a515f5799fe4961cb532f983ce2b23082366b898e52ffbce459c86f67c8378a
  - name: winnow
    version: 0.5.0
    sha: 81fac9742fd1ad1bd9643b991319f72dd031016d44b77039a26977eb667141e7
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
