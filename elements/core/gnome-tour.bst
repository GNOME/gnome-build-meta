kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-tour.git
  track: main
  ref: 46.0-21-gf508de6fae236b75faaeb65cdbb190ba5f75d8f3
- kind: cargo2
  ref:
  - kind: registry
    name: aho-corasick
    version: 1.1.3
    sha: 8e60d3430d3a69478ad0993f19238d2df97c507009a52b3c10addcd7f6bcb916
  - kind: registry
    name: anstream
    version: 0.6.14
    sha: 418c75fa768af9c03be99d17643f93f79bbba589895012a80e3452a19ddda15b
  - kind: registry
    name: anstyle
    version: 1.0.7
    sha: 038dfcf04a5feb68e9c60b21c9625a54c2c0616e79b72b0fd87075a056ae1d1b
  - kind: registry
    name: anstyle-parse
    version: 0.2.4
    sha: c03a11a9034d92058ceb6ee011ce58af4a9bf61491aa7e1e59ecd24bd40d22d4
  - kind: registry
    name: anstyle-query
    version: 1.1.0
    sha: ad186efb764318d35165f1758e7dcef3b10628e26d41a44bc5550652e6804391
  - kind: registry
    name: anstyle-wincon
    version: 3.0.3
    sha: 61a38449feb7068f52bb06c12759005cf459ee52bb4adc1d5a7c4322d716fb19
  - kind: registry
    name: autocfg
    version: 1.3.0
    sha: 0c4b4d0bd25bd0b74681c0ad21497610ce1b7c91b1022cd21c80c6fbdd9476b0
  - kind: registry
    name: bitflags
    version: 2.6.0
    sha: b048fb63fd8b5923fc5aa7b340d8e156aec7ec02f0c78fa8a6ddc2613f6f71de
  - kind: registry
    name: block
    version: 0.1.6
    sha: 0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a
  - kind: registry
    name: cairo-rs
    version: 0.20.0
    sha: 797fd5a634dcb0ad0d7d583df794deb0a236d88e759cd34b7da20198c6c9d145
  - kind: registry
    name: cairo-sys-rs
    version: 0.20.0
    sha: 428290f914b9b86089f60f5d8a9f6e440508e1bcff23b25afd51502b0a2da88f
  - kind: registry
    name: cc
    version: 1.1.2
    sha: 47de7e88bbbd467951ae7f5a6f34f70d1b4d9cfce53d5fd70f74ebe118b3db56
  - kind: registry
    name: cfg-expr
    version: 0.15.8
    sha: d067ad48b8650848b989a59a86c6c36a995d02d2bf778d45c3c5d57bc2718f02
  - kind: registry
    name: colorchoice
    version: 1.0.1
    sha: 0b6a852b24ab71dffc585bcb46eaf7959d175cb865a7152e35b348d1b2960422
  - kind: registry
    name: env_filter
    version: 0.1.0
    sha: a009aa4810eb158359dda09d0c87378e4bbb89b5a801f016885a4707ba24f7ea
  - kind: registry
    name: env_logger
    version: 0.11.3
    sha: 38b35839ba51819680ba087cd351788c9a3c476841207e0b8cee0b04722343b9
  - kind: registry
    name: equivalent
    version: 1.0.1
    sha: 5443807d6dff69373d433ab9ef5378ad8df50ca6298caf15de6e52e24aaf54d5
  - kind: registry
    name: field-offset
    version: 0.3.6
    sha: 38e2275cc4e4fc009b0669731a1e5ab7ebf11f469eaede2bab9309a5b4d6057f
  - kind: registry
    name: futures-channel
    version: 0.3.30
    sha: eac8f7d7865dcb88bd4373ab671c8cf4508703796caa2b1985a9ca867b3fcb78
  - kind: registry
    name: futures-core
    version: 0.3.30
    sha: dfc6580bb841c5a68e9ef15c77ccc837b40a7504914d52e47b8b0e9bbda25a1d
  - kind: registry
    name: futures-executor
    version: 0.3.30
    sha: a576fc72ae164fca6b9db127eaa9a9dda0d61316034f33a0a0d4eda41f02b01d
  - kind: registry
    name: futures-io
    version: 0.3.30
    sha: a44623e20b9681a318efdd71c299b6b222ed6f231972bfe2f224ebad6311f0c1
  - kind: registry
    name: futures-macro
    version: 0.3.30
    sha: 87750cf4b7a4c0625b1529e4c543c2182106e4dedc60a2a6455e00d212c489ac
  - kind: registry
    name: futures-task
    version: 0.3.30
    sha: 38d84fa142264698cdce1a9f9172cf383a0c82de1bddcf3092901442c4097004
  - kind: registry
    name: futures-util
    version: 0.3.30
    sha: 3d6401deb83407ab3da39eba7e33987a73c3df0c82b4bb5813ee871c19c41d48
  - kind: registry
    name: gdk-pixbuf
    version: 0.20.0
    sha: 28bb53ecb56857c683c9ec859908e076dd3969c7d67598bd8b1ce095d211304a
  - kind: registry
    name: gdk-pixbuf-sys
    version: 0.20.0
    sha: 9f6681a0c1330d1d3968bec1529f7172d62819ef0bdbb0d18022320654158b03
  - kind: registry
    name: gdk4
    version: 0.9.0
    sha: 4b7d7237c1487ed4b300aac7744efcbf1319e12d60d7afcd6f505414bd5b5dea
  - kind: registry
    name: gdk4-sys
    version: 0.9.0
    sha: a67576c8ec012156d7f680e201a807b4432a77babb3157e0555e990ab6bcd878
  - kind: registry
    name: gettext-rs
    version: 0.7.0
    sha: e49ea8a8fad198aaa1f9655a2524b64b70eb06b2f3ff37da407566c93054f364
  - kind: registry
    name: gettext-sys
    version: 0.21.3
    sha: c63ce2e00f56a206778276704bbe38564c8695249fdc8f354b4ef71c57c3839d
  - kind: registry
    name: gio
    version: 0.20.0
    sha: 398e3da68749fdc32783cbf7521ec3f65c9cf946db8c7774f8460af49e52c6e2
  - kind: registry
    name: gio-sys
    version: 0.20.0
    sha: e4feb96b31c32730ea3e1e89aecd2e4e37ecb1c473ad8f685e3430a159419f63
  - kind: registry
    name: glib
    version: 0.20.0
    sha: fee90a615ce05be7a32932cfb8adf2c4bbb4700e80d37713c981fb24c0c56238
  - kind: registry
    name: glib-macros
    version: 0.20.0
    sha: 4da558d8177c0c8c54368818b508a4244e1286fce2858cef4e547023f0cfa5ef
  - kind: registry
    name: glib-sys
    version: 0.20.0
    sha: 4958c26e5a01c9af00dea669a97369eccbec29a8e6d125c24ea2d85ee7467b60
  - kind: registry
    name: gobject-sys
    version: 0.20.0
    sha: c6908864f5ffff15b56df7e90346863904f49b949337ed0456b9287af61903b8
  - kind: registry
    name: graphene-rs
    version: 0.20.0
    sha: 630e940ad5824f90221d6579043a9cd1f8bec86b4a17faaf7827d58eb16e8c1f
  - kind: registry
    name: graphene-sys
    version: 0.20.0
    sha: 6fb8fade7b754982f47ebbed241fd2680816fdd4598321784da10b9e1168836a
  - kind: registry
    name: gsk4
    version: 0.9.0
    sha: 1f3cf2091e1af185b347b3450817d93dea6fe435df7abd4c2cd7fb5bcb4cfda8
  - kind: registry
    name: gsk4-sys
    version: 0.9.0
    sha: 6aa69614a26d8760c186c3690f1b0fbb917572ca23ef83137445770ceddf8cde
  - kind: registry
    name: gtk4
    version: 0.9.0
    sha: eaffc6c743c9160514cc9b67eace364e5dc5798369fa809cdb04e035c21c5c5d
  - kind: registry
    name: gtk4-macros
    version: 0.9.0
    sha: 188211f546ce5801f6d0245c37b6249143a2cb4fa040e54829ca1e76796e9f09
  - kind: registry
    name: gtk4-sys
    version: 0.9.0
    sha: 1114a207af8ada02cf4658a76692f4190f06f093380d5be07e3ca8b43aa7c666
  - kind: registry
    name: hashbrown
    version: 0.14.5
    sha: e5274423e17b7c9fc20b6e7e208532f9b19825d82dfd615708b70edd83df41f1
  - kind: registry
    name: heck
    version: 0.5.0
    sha: 2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea
  - kind: registry
    name: humantime
    version: 2.1.0
    sha: 9a3a5bfb195931eeb336b2a7b4d761daec841b97f947d34394601737a7bba5e4
  - kind: registry
    name: indexmap
    version: 2.2.6
    sha: 168fb715dda47215e360912c096649d23d58bf392ac62f73919e831745e40f26
  - kind: registry
    name: is_terminal_polyfill
    version: 1.70.0
    sha: f8478577c03552c21db0e2724ffb8986a5ce7af88107e6be5d2ee6e158c12800
  - kind: registry
    name: lazy_static
    version: 1.5.0
    sha: bbd2bcb4c963f2ddae06a2efc7e9f3591312473c50c6685e1f298068316e66fe
  - kind: registry
    name: libadwaita
    version: 0.7.0
    sha: 2ff9c222b5c783729de45185f07b2fec2d43a7f9c63961e777d3667e20443878
  - kind: registry
    name: libadwaita-sys
    version: 0.7.0
    sha: 1c44d8bdbad31d6639e1f20cc9c1424f1a8e02d751fc28d44659bf743fb9eca6
  - kind: registry
    name: libc
    version: 0.2.155
    sha: 97b3888a4aecf77e811145cadf6eef5901f4782c53886191b2f693f24761847c
  - kind: registry
    name: locale_config
    version: 0.3.0
    sha: 08d2c35b16f4483f6c26f0e4e9550717a2f6575bcd6f12a53ff0c490a94a6934
  - kind: registry
    name: log
    version: 0.4.22
    sha: a7a70ba024b9dc04c27ea2f0c0548feb474ec5c54bba33a7f72f873a39d07b24
  - kind: registry
    name: malloc_buf
    version: 0.0.6
    sha: 62bb907fe88d54d8d9ce32a3cceab4218ed2f6b7d35617cafe9adf84e43919cb
  - kind: registry
    name: memchr
    version: 2.7.4
    sha: 78ca9ab1a0babb1e7d5695e3530886289c18cf2f87ec19a575a0abdce112e3a3
  - kind: registry
    name: memoffset
    version: 0.9.1
    sha: 488016bfae457b036d996092f6cb448677611ce4449e970ceaf42695203f218a
  - kind: registry
    name: objc
    version: 0.2.7
    sha: 915b1b472bc21c53464d6c8461c9d3af805ba1ef837e1cac254428f4a77177b1
  - kind: registry
    name: objc-foundation
    version: 0.1.1
    sha: 1add1b659e36c9607c7aab864a76c7a4c2760cd0cd2e120f3fb8b952c7e22bf9
  - kind: registry
    name: objc_id
    version: 0.1.1
    sha: c92d4ddb4bd7b50d730c215ff871754d0da6b2178849f8a2a2ab69712d0c073b
  - kind: registry
    name: pango
    version: 0.20.0
    sha: 54768854025df6903061d0084fd9702a253ddfd60db7d9b751d43b76689a7f0a
  - kind: registry
    name: pango-sys
    version: 0.20.0
    sha: b07cc57d10cee4ec661f718a6902cee18c2f4cfae08e87e5a390525946913390
  - kind: registry
    name: pin-project-lite
    version: 0.2.14
    sha: bda66fc9667c18cb2758a2ac84d1167245054bcf85d5d1aaa6923f45801bdd02
  - kind: registry
    name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - kind: registry
    name: pkg-config
    version: 0.3.30
    sha: d231b230927b5e4ad203db57bbcbee2802f6bce620b1e4a9024a07d94e2907ec
  - kind: registry
    name: proc-macro-crate
    version: 3.1.0
    sha: 6d37c51ca738a55da99dc0c4a34860fd675453b8b36209178c2249bb13651284
  - kind: registry
    name: proc-macro2
    version: 1.0.86
    sha: 5e719e8df665df0d1c8fbfd238015744736151d4445ec0836b8e628aae103b77
  - kind: registry
    name: quote
    version: 1.0.36
    sha: 0fa76aaf39101c457836aec0ce2316dbdc3ab723cdda1c6bd4e6ad4208acaca7
  - kind: registry
    name: regex
    version: 1.10.5
    sha: b91213439dad192326a0d7c6ee3955910425f441d7038e0d6933b0aec5c4517f
  - kind: registry
    name: regex-automata
    version: 0.4.7
    sha: 38caf58cc5ef2fed281f89292ef23f6365465ed9a41b7a7754eb4e26496c92df
  - kind: registry
    name: regex-syntax
    version: 0.8.4
    sha: 7a66a03ae7c801facd77a29370b4faec201768915ac14a721ba36f20bc9c209b
  - kind: registry
    name: rustc_version
    version: 0.4.0
    sha: bfa0f585226d2e68097d4f95d113b15b83a82e819ab25717ec0590d9584ef366
  - kind: registry
    name: semver
    version: 1.0.23
    sha: 61697e0a1c7e512e84a621326239844a24d8207b4669b41bc18b32ea5cbf988b
  - kind: registry
    name: serde
    version: 1.0.204
    sha: bc76f558e0cbb2a839d37354c575f1dc3fdc6546b5be373ba43d95f231bf7c12
  - kind: registry
    name: serde_derive
    version: 1.0.204
    sha: e0cd7e117be63d3c3678776753929474f3b04a43a080c744d6b0ae2a8c28e222
  - kind: registry
    name: serde_spanned
    version: 0.6.6
    sha: 79e674e01f999af37c49f70a6ede167a8a60b2503e56c5599532a65baa5969a0
  - kind: registry
    name: slab
    version: 0.4.9
    sha: 8f92a496fb766b417c996b9c5e57daf2f7ad3b0bebe1ccfca4856390e3d3bb67
  - kind: registry
    name: smallvec
    version: 1.13.2
    sha: 3c5e1a9a646d36c3599cd173a41282daf47c44583ad367b8e6837255952e5c67
  - kind: registry
    name: syn
    version: 2.0.71
    sha: b146dcf730474b4bcd16c311627b31ede9ab149045db4d6088b3becaea046462
  - kind: registry
    name: system-deps
    version: 7.0.1
    sha: 6c81f13d9a334a6c242465140bd262fae382b752ff2011c4f7419919a9c97922
  - kind: registry
    name: target-lexicon
    version: 0.12.15
    sha: 4873307b7c257eddcb50c9bedf158eb669578359fb28428bef438fec8e6ba7c2
  - kind: registry
    name: temp-dir
    version: 0.1.13
    sha: 1f227968ec00f0e5322f9b8173c7a0cbcff6181a0a5b28e9892491c286277231
  - kind: registry
    name: thiserror
    version: 1.0.62
    sha: f2675633b1499176c2dff06b0856a27976a8f9d436737b4cf4f312d4d91d8bbb
  - kind: registry
    name: thiserror-impl
    version: 1.0.62
    sha: d20468752b09f49e909e55a5d338caa8bedf615594e9d80bc4c565d30faf798c
  - kind: registry
    name: toml
    version: 0.8.14
    sha: 6f49eb2ab21d2f26bd6db7bf383edc527a7ebaee412d17af4d40fdccd442f335
  - kind: registry
    name: toml_datetime
    version: 0.6.6
    sha: 4badfd56924ae69bcc9039335b2e017639ce3f9b001c393c1b2d1ef846ce2cbf
  - kind: registry
    name: toml_edit
    version: 0.21.1
    sha: 6a8534fd7f78b5405e860340ad6575217ce99f38d4d5c8f2442cb5ecb50090e1
  - kind: registry
    name: toml_edit
    version: 0.22.15
    sha: d59a3a72298453f564e2b111fa896f8d07fabb36f51f06d7e875fc5e0b5a3ef1
  - kind: registry
    name: unicode-ident
    version: 1.0.12
    sha: 3354b9ac3fae1ff6755cb6db53683adb661634f67557942dea4facebec0fee4b
  - kind: registry
    name: utf8parse
    version: 0.2.2
    sha: 06abde3611657adf66d383f00b093d7faecc7fa57071cce2578660c9f1010821
  - kind: registry
    name: version-compare
    version: 0.2.0
    sha: 852e951cb7832cb45cb1169900d19760cfa39b82bc0ea9c0e5a14ae88411c98b
  - kind: registry
    name: winapi
    version: 0.3.9
    sha: 5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419
  - kind: registry
    name: winapi-i686-pc-windows-gnu
    version: 0.4.0
    sha: ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6
  - kind: registry
    name: winapi-x86_64-pc-windows-gnu
    version: 0.4.0
    sha: 712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f
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
    version: 0.5.40
    sha: f593a95398737aeed53e489c785df13f3618e41dbcd6718c6addbf1395aa6876
  - kind: registry
    name: winnow
    version: 0.6.13
    sha: 59b5e5f6c299a3c7890b876a2a587f3115162487e704907d9b6cd29473052ba1
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
