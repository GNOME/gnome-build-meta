kind: make

sources:
- kind: git_repo
  url: gitlab:asus-linux/supergfxctl.git
  track: '*.*'
  ref: 5.2.7-0-ga86383e1b2f32d4f87f8dd47f0d6b06690877c64
- kind: cargo2
  ref:
  - kind: registry
    name: addr2line
    version: 0.24.2
    sha: dfbe277e56a376000877090da837660b4427aad530e3028d44e0bffe4f89a1c1
  - kind: registry
    name: adler2
    version: 2.0.0
    sha: 512761e0bb2578dd7380c6baaa0f4ce03e84f95e960231d1dec8bf4d7d6e2627
  - kind: registry
    name: aho-corasick
    version: 1.1.3
    sha: 8e60d3430d3a69478ad0993f19238d2df97c507009a52b3c10addcd7f6bcb916
  - kind: registry
    name: anstream
    version: 0.6.18
    sha: 8acc5369981196006228e28809f761875c0327210a891e941f4c683b3a99529b
  - kind: registry
    name: anstyle
    version: 1.0.10
    sha: 55cc3b69f167a1ef2e161439aa98aed94e6028e5f9a59be9a6ffb47aef1651f9
  - kind: registry
    name: anstyle-parse
    version: 0.2.6
    sha: 3b2d16507662817a6a20a9ea92df6652ee4f94f914589377d69f3b21bc5798a9
  - kind: registry
    name: anstyle-query
    version: 1.1.2
    sha: 79947af37f4177cfead1110013d678905c37501914fba0efea834c3fe9a8d60c
  - kind: registry
    name: anstyle-wincon
    version: 3.0.6
    sha: 2109dbce0e72be3ec00bed26e6a7479ca384ad226efdd66db8fa2e3a38c83125
  - kind: registry
    name: async-broadcast
    version: 0.7.1
    sha: 20cd0e2e25ea8e5f7e9df04578dc6cf5c83577fd09b1a46aaf5c85e1c33f2a7e
  - kind: registry
    name: async-channel
    version: 2.3.1
    sha: 89b47800b0be77592da0afd425cc03468052844aff33b84e33cc696f64e77b6a
  - kind: registry
    name: async-executor
    version: 1.13.1
    sha: 30ca9a001c1e8ba5149f91a74362376cc6bc5b919d92d988668657bd570bdcec
  - kind: registry
    name: async-fs
    version: 2.1.2
    sha: ebcd09b382f40fcd159c2d695175b2ae620ffa5f3bd6f664131efff4e8b9e04a
  - kind: registry
    name: async-io
    version: 2.4.0
    sha: 43a2b323ccce0a1d90b449fd71f2a06ca7faa7c54c2751f06c9bd851fc061059
  - kind: registry
    name: async-lock
    version: 3.4.0
    sha: ff6e472cdea888a4bd64f342f09b3f50e1886d32afe8df3d663c01140b811b18
  - kind: registry
    name: async-process
    version: 2.3.0
    sha: 63255f1dc2381611000436537bbedfe83183faa303a5a0edaf191edef06526bb
  - kind: registry
    name: async-recursion
    version: 1.1.1
    sha: 3b43422f69d8ff38f95f1b2bb76517c91589a924d1559a0e935d7c8ce0274c11
  - kind: registry
    name: async-signal
    version: 0.2.10
    sha: 637e00349800c0bdf8bfc21ebbc0b6524abea702b0da4168ac00d070d0c0b9f3
  - kind: registry
    name: async-task
    version: 4.7.1
    sha: 8b75356056920673b02621b35afd0f7dda9306d03c79a30f5c56c44cf256e3de
  - kind: registry
    name: async-trait
    version: 0.1.83
    sha: 721cae7de5c34fbb2acd27e21e6d2cf7b886dce0c27388d46c4e6c47ea4318dd
  - kind: registry
    name: atomic-waker
    version: 1.1.2
    sha: 1505bd5d3d116872e7271a6d4e16d81d0c8570876c8de68093a09ac269d8aac0
  - kind: registry
    name: autocfg
    version: 1.4.0
    sha: ace50bade8e6234aa140d9a2f552bbee1db4d353f69b8217bc503490fc1a9f26
  - kind: registry
    name: backtrace
    version: 0.3.74
    sha: 8d82cb332cdfaed17ae235a638438ac4d4839913cc2af585c3c6746e8f8bee1a
  - kind: registry
    name: bitflags
    version: 2.6.0
    sha: b048fb63fd8b5923fc5aa7b340d8e156aec7ec02f0c78fa8a6ddc2613f6f71de
  - kind: registry
    name: blocking
    version: 1.6.1
    sha: 703f41c54fc768e63e091340b424302bb1c29ef4aa0c7f10fe849dfb114d29ea
  - kind: registry
    name: bytes
    version: 1.8.0
    sha: 9ac0150caa2ae65ca5bd83f25c7de183dea78d4d366469f148435e2acfbad0da
  - kind: registry
    name: cfg-if
    version: 1.0.0
    sha: baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd
  - kind: registry
    name: cfg_aliases
    version: 0.2.1
    sha: 613afe47fcd5fac7ccf1db93babcb082c5994d996f20b8b159f2ad1658eb5724
  - kind: registry
    name: colorchoice
    version: 1.0.3
    sha: 5b63caa9aa9397e2d9480a9b13673856c78d8ac123288526c37d7839f2a86990
  - kind: registry
    name: concurrent-queue
    version: 2.5.0
    sha: 4ca0197aee26d1ae37445ee532fefce43251d24cc7c166799f4d46817f1d3973
  - kind: registry
    name: crossbeam-utils
    version: 0.8.20
    sha: 22ec99545bb0ed0ea7bb9b8e1e9122ea386ff8a48c0922e43f36d45ab09e0e80
  - kind: registry
    name: endi
    version: 1.1.0
    sha: a3d8a32ae18130a3c84dd492d4215c3d913c3b07c6b63c2eb3eb7ff1101ab7bf
  - kind: registry
    name: enumflags2
    version: 0.7.10
    sha: d232db7f5956f3f14313dc2f87985c58bd2c695ce124c8cdd984e08e15ac133d
  - kind: registry
    name: enumflags2_derive
    version: 0.7.10
    sha: de0d48a183585823424a4ce1aa132d174a6a81bd540895822eb4c8373a8e49e8
  - kind: registry
    name: env_filter
    version: 0.1.2
    sha: 4f2c92ceda6ceec50f43169f9ee8424fe2db276791afde7b2cd8bc084cb376ab
  - kind: registry
    name: env_logger
    version: 0.11.5
    sha: e13fa619b91fb2381732789fc5de83b45675e882f66623b7d8cb4f643017018d
  - kind: registry
    name: equivalent
    version: 1.0.1
    sha: 5443807d6dff69373d433ab9ef5378ad8df50ca6298caf15de6e52e24aaf54d5
  - kind: registry
    name: errno
    version: 0.3.9
    sha: 534c5cf6194dfab3db3242765c03bbe257cf92f22b38f6bc0c58d59108a820ba
  - kind: registry
    name: event-listener
    version: 5.3.1
    sha: 6032be9bd27023a771701cc49f9f053c751055f71efb2e0ae5c15809093675ba
  - kind: registry
    name: event-listener-strategy
    version: 0.5.2
    sha: 0f214dc438f977e6d4e3500aaa277f5ad94ca83fbbd9b1a15713ce2344ccc5a1
  - kind: registry
    name: fastrand
    version: 2.2.0
    sha: 486f806e73c5707928240ddc295403b1b93c96a02038563881c4a2fd84b81ac4
  - kind: registry
    name: futures-core
    version: 0.3.31
    sha: 05f29059c0c2090612e8d742178b0580d2dc940c837851ad723096f87af6663e
  - kind: registry
    name: futures-io
    version: 0.3.31
    sha: 9e5c1b78ca4aae1ac06c48a526a655760685149f0d465d21f37abfe57ce075c6
  - kind: registry
    name: futures-lite
    version: 2.6.0
    sha: f5edaec856126859abb19ed65f39e90fea3a9574b9707f13539acf4abf7eb532
  - kind: registry
    name: futures-macro
    version: 0.3.31
    sha: 162ee34ebcb7c64a8abebc059ce0fee27c2262618d7b60ed8faf72fef13c3650
  - kind: registry
    name: futures-task
    version: 0.3.31
    sha: f90f7dce0722e95104fcb095585910c0977252f286e354b5e3bd38902cd99988
  - kind: registry
    name: futures-util
    version: 0.3.31
    sha: 9fa08315bb612088cc391249efdc3bc77536f16c91f6cf495e6fbe85b20a4a81
  - kind: registry
    name: gimli
    version: 0.31.1
    sha: 07e28edb80900c19c28f1072f2e8aeca7fa06b23cd4169cefe1af5aa3260783f
  - kind: registry
    name: gumdrop
    version: 0.8.1
    sha: 5bc700f989d2f6f0248546222d9b4258f5b02a171a431f8285a81c08142629e3
  - kind: registry
    name: gumdrop_derive
    version: 0.8.1
    sha: 729f9bd3449d77e7831a18abfb7ba2f99ee813dfd15b8c2167c9a54ba20aa99d
  - kind: registry
    name: hashbrown
    version: 0.15.2
    sha: bf151400ff0baff5465007dd2f3e717f3fe502074ca563069ce3a6629d07b289
  - kind: registry
    name: hermit-abi
    version: 0.3.9
    sha: d231dfb89cfffdbc30e7fc41579ed6066ad03abda9e567ccafae602b97ec5024
  - kind: registry
    name: hermit-abi
    version: 0.4.0
    sha: fbf6a919d6cf397374f7dfeeea91d974c7c0a7221d0d0f4f20d859d329e53fcc
  - kind: registry
    name: hex
    version: 0.4.3
    sha: 7f24254aa9a54b5c858eaee2f5bccdb46aaf0e486a595ed5fd8f86ba55232a70
  - kind: registry
    name: humantime
    version: 2.1.0
    sha: 9a3a5bfb195931eeb336b2a7b4d761daec841b97f947d34394601737a7bba5e4
  - kind: registry
    name: indexmap
    version: 2.6.0
    sha: 707907fe3c25f5424cce2cb7e1cbcafee6bdbe735ca90ef77c29e84591e5b9da
  - kind: registry
    name: io-lifetimes
    version: 1.0.11
    sha: eae7b9aee968036d54dce06cebaefd919e4472e753296daccd6d344e3e2df0c2
  - kind: registry
    name: is_terminal_polyfill
    version: 1.70.1
    sha: 7943c866cc5cd64cbc25b2e01621d07fa8eb2a1a23160ee81ce38704e97b8ecf
  - kind: registry
    name: itoa
    version: 1.0.14
    sha: d75a2a4b1b190afb6f5425f10f6a8f959d2ea0b9c2b1d79553551850539e4674
  - kind: registry
    name: libc
    version: 0.2.166
    sha: c2ccc108bbc0b1331bd061864e7cd823c0cab660bbe6970e66e2c0614decde36
  - kind: registry
    name: libudev-sys
    version: 0.1.4
    sha: 3c8469b4a23b962c1396b9b451dda50ef5b283e8dd309d69033475fa9b334324
  - kind: registry
    name: linux-raw-sys
    version: 0.4.14
    sha: 78b3ae25bc7c8c38cec158d1f2757ee79e9b3740fbc7ccf0e59e4b08d793fa89
  - kind: registry
    name: log
    version: 0.4.22
    sha: a7a70ba024b9dc04c27ea2f0c0548feb474ec5c54bba33a7f72f873a39d07b24
  - kind: registry
    name: logind-zbus
    version: 5.2.0
    sha: 8adb500c73297d66c7c23ca3436600ea8c5d704f82eb3c65e1373689be965de7
  - kind: registry
    name: memchr
    version: 2.7.4
    sha: 78ca9ab1a0babb1e7d5695e3530886289c18cf2f87ec19a575a0abdce112e3a3
  - kind: registry
    name: memoffset
    version: 0.9.1
    sha: 488016bfae457b036d996092f6cb448677611ce4449e970ceaf42695203f218a
  - kind: registry
    name: miniz_oxide
    version: 0.8.0
    sha: e2d80299ef12ff69b16a84bb182e3b9df68b5a91574d3d4fa6e41b65deec4df1
  - kind: registry
    name: mio
    version: 1.0.2
    sha: 80e04d1dcff3aae0704555fe5fee3bcfaf3d1fdf8a7e521d5b9d2b42acb52cec
  - kind: registry
    name: nix
    version: 0.29.0
    sha: 71e2746dc3a24dd78b3cfcb7be93368c6de9963d30f43a6a73998a9cf4b17b46
  - kind: registry
    name: object
    version: 0.36.5
    sha: aedf0a2d09c573ed1d8d85b30c119153926a2b36dce0ab28322c09a117a4683e
  - kind: registry
    name: once_cell
    version: 1.20.2
    sha: 1261fe7e33c73b354eab43b1273a57c8f967d0391e80353e51f764ac02cf6775
  - kind: registry
    name: ordered-stream
    version: 0.2.0
    sha: 9aa2b01e1d916879f73a53d01d1d6cee68adbb31d6d9177a8cfce093cced1d50
  - kind: registry
    name: parking
    version: 2.2.1
    sha: f38d5652c16fde515bb1ecef450ab0f6a219d619a7274976324d5e377f7dceba
  - kind: registry
    name: pin-project-lite
    version: 0.2.15
    sha: 915a1e146535de9163f3987b8944ed8cf49a18bb0056bcebcdcece385cece4ff
  - kind: registry
    name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - kind: registry
    name: piper
    version: 0.2.4
    sha: 96c8c490f422ef9a4efd2cb5b42b76c8613d7e7dfc1caf667b8a3350a5acc066
  - kind: registry
    name: pkg-config
    version: 0.3.31
    sha: 953ec861398dccce10c670dfeaf3ec4911ca479e9c02154b3a215178c5f566f2
  - kind: registry
    name: polling
    version: 3.7.4
    sha: a604568c3202727d1507653cb121dbd627a58684eb09a820fd746bee38b4442f
  - kind: registry
    name: proc-macro-crate
    version: 3.2.0
    sha: 8ecf48c7ca261d60b74ab1a7b20da18bede46776b2e55535cb958eb595c5fa7b
  - kind: registry
    name: proc-macro2
    version: 1.0.92
    sha: 37d3544b3f2748c54e147655edb5025752e2303145b5aefb3c3ea2c78b973bb0
  - kind: registry
    name: quote
    version: 1.0.37
    sha: b5b9d34b8991d19d98081b46eacdd8eb58c6f2b201139f7c5f643cc155a633af
  - kind: registry
    name: regex
    version: 1.11.1
    sha: b544ef1b4eac5dc2db33ea63606ae9ffcfac26c1416a2806ae0bf5f56b201191
  - kind: registry
    name: regex-automata
    version: 0.4.9
    sha: 809e8dc61f6de73b46c85f4c96486310fe304c434cfa43669d7b40f711150908
  - kind: registry
    name: regex-syntax
    version: 0.8.5
    sha: 2b15c43186be67a4fd63bee50d0303afffcef381492ebe2c5d87f324e1b8815c
  - kind: registry
    name: rustc-demangle
    version: 0.1.24
    sha: 719b953e2095829ee67db738b3bfa9fa368c94900df327b3f07fe6e794d2fe1f
  - kind: registry
    name: rustix
    version: 0.38.41
    sha: d7f649912bc1495e167a6edee79151c84b1bad49748cb4f1f1167f459f6224f6
  - kind: registry
    name: ryu
    version: 1.0.18
    sha: f3cb5ba0dc43242ce17de99c180e96db90b235b8a9fdc9543c96d2209116bd9f
  - kind: registry
    name: serde
    version: 1.0.215
    sha: 6513c1ad0b11a9376da888e3e0baa0077f1aed55c17f50e7b2397136129fb88f
  - kind: registry
    name: serde_derive
    version: 1.0.215
    sha: ad1e866f866923f252f05c889987993144fb74e722403468a4ebd70c3cd756c0
  - kind: registry
    name: serde_json
    version: 1.0.133
    sha: c7fceb2473b9166b2294ef05efcb65a3db80803f0b03ef86a5fc88a2b85ee377
  - kind: registry
    name: serde_repr
    version: 0.1.19
    sha: 6c64451ba24fc7a6a2d60fc75dd9c83c90903b19028d4eff35e88fc1e86564e9
  - kind: registry
    name: signal-hook-registry
    version: 1.4.2
    sha: a9e9e0b4211b72e7b8b6e85c807d36c212bdb33ea8587f7569562a84df5465b1
  - kind: registry
    name: slab
    version: 0.4.9
    sha: 8f92a496fb766b417c996b9c5e57daf2f7ad3b0bebe1ccfca4856390e3d3bb67
  - kind: registry
    name: socket2
    version: 0.5.7
    sha: ce305eb0b4296696835b71df73eb912e0f1ffd2556a501fcede6e0c50349191c
  - kind: registry
    name: static_assertions
    version: 1.1.0
    sha: a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f
  - kind: registry
    name: syn
    version: 1.0.109
    sha: 72b64191b275b66ffe2469e8af2c1cfe3bafa67b529ead792a6d0160888b4237
  - kind: registry
    name: syn
    version: 2.0.89
    sha: 44d46482f1c1c87acd84dea20c1bf5ebff4c757009ed6bf19cfd36fb10e92c4e
  - kind: registry
    name: tempfile
    version: 3.14.0
    sha: 28cce251fcbc87fac86a866eeb0d6c2d536fc16d06f184bb61aeae11aa4cee0c
  - kind: registry
    name: tokio
    version: 1.41.1
    sha: 22cfb5bee7a6a52939ca9224d6ac897bb669134078daa8735560897f69de4d33
  - kind: registry
    name: tokio-macros
    version: 2.4.0
    sha: 693d596312e88961bc67d7f1f97af8a70227d9f90c31bba5806eec004978d752
  - kind: registry
    name: toml_datetime
    version: 0.6.8
    sha: 0dd7358ecb8fc2f8d014bf86f6f638ce72ba252a2c3a2572f2a795f1d23efb41
  - kind: registry
    name: toml_edit
    version: 0.22.22
    sha: 4ae48d6208a266e853d946088ed816055e556cc6028c5e8e2b84d9fa5dd7c7f5
  - kind: registry
    name: tracing
    version: 0.1.41
    sha: 784e0ac535deb450455cbfa28a6f0df145ea1bb7ae51b821cf5e7927fdcfbdd0
  - kind: registry
    name: tracing-attributes
    version: 0.1.28
    sha: 395ae124c09f9e6918a2310af6038fba074bcf474ac352496d5910dd59a2226d
  - kind: registry
    name: tracing-core
    version: 0.1.33
    sha: e672c95779cf947c5311f83787af4fa8fffd12fb27e4993211a84bdfd9610f9c
  - kind: registry
    name: udev
    version: 0.9.1
    sha: e3d5c197b95f1769931c89f85c33c407801d1fb7a311113bc0b39ad036f1bd81
  - kind: registry
    name: uds_windows
    version: 1.1.0
    sha: 89daebc3e6fd160ac4aa9fc8b3bf71e1f74fbf92367ae71fb83a037e8bf164b9
  - kind: registry
    name: unicode-ident
    version: 1.0.14
    sha: adb9e6ca4f869e1180728b7950e35922a7fc6397f7b641499e8f3ef06e50dc83
  - kind: registry
    name: utf8parse
    version: 0.2.2
    sha: 06abde3611657adf66d383f00b093d7faecc7fa57071cce2578660c9f1010821
  - kind: registry
    name: wasi
    version: 0.11.0+wasi-snapshot-preview1
    sha: 9c8d87e72b64a3b4db28d11ce29237c246188f4f51057d65a7eab63b7987e423
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
    version: 0.48.0
    sha: 677d2418bec65e3338edb076e806bc1ec15693c5d0104683f2efe857f61056a9
  - kind: registry
    name: windows-sys
    version: 0.52.0
    sha: 282be5f36a8ce781fad8c8ae18fa3f9beff57ec1b52cb3de0789201425d9a33d
  - kind: registry
    name: windows-sys
    version: 0.59.0
    sha: 1e38bc4d79ed67fd075bcc251a1c39b32a1776bbe92e5bef1f0bf1f8c531853b
  - kind: registry
    name: windows-targets
    version: 0.48.5
    sha: 9a2fa6e2155d7247be68c096456083145c183cbbbc2764150dda45a87197940c
  - kind: registry
    name: windows-targets
    version: 0.52.6
    sha: 9b724f72796e036ab90c1021d4780d4d3d648aca59e491e6b98e725b84e99973
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.48.5
    sha: 2b38e32f0abccf9987a4e3079dfb67dcd799fb61361e53e2882c3cbaf0d905d8
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.52.6
    sha: 32a4622180e7a0ec044bb555404c800bc9fd9ec262ec147edd5989ccd0c02cd3
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.48.5
    sha: dc35310971f3b2dbbf3f0690a219f40e2d9afcf64f9ab7cc1be722937c26b4bc
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.52.6
    sha: 09ec2a7bb152e2252b53fa7803150007879548bc709c039df7627cabbd05d469
  - kind: registry
    name: windows_i686_gnu
    version: 0.48.5
    sha: a75915e7def60c94dcef72200b9a8e58e5091744960da64ec734a6c6e9b3743e
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
    version: 0.48.5
    sha: 8f55c233f70c4b27f66c523580f78f1004e8b5a8b659e05a4eb49d4166cca406
  - kind: registry
    name: windows_i686_msvc
    version: 0.52.6
    sha: 240948bc05c5e7c6dabba28bf89d89ffce3e303022809e73deaefe4f6ec56c66
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.48.5
    sha: 53d40abd2583d23e4718fddf1ebec84dbff8381c07cae67ff7768bbf19c6718e
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.52.6
    sha: 147a5c80aabfbf0c7d901cb5895d1de30ef2907eb21fbbab29ca94c5b08b1a78
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.48.5
    sha: 0b7b52767868a23d5bab768e390dc5f5c55825b6d30b86c844ff2dc7414044cc
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.52.6
    sha: 24d5b23dc417412679681396f2b49f3de8c1473deb516bd34410872eff51ed0d
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.48.5
    sha: ed94fce61571a4006852b7389a063ab983c02eb1bb37b47f8272ce92d06d9538
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.52.6
    sha: 589f6da84c646204747d1270a2a5661ea66ed1cced2631d546fdfb155959f9ec
  - kind: registry
    name: winnow
    version: 0.6.20
    sha: 36c1fec1a2bb5866f07c25f68c26e565c4c200aebb96d7e55710c19d3e8ac49b
  - kind: registry
    name: winnow
    version: 0.7.2
    sha: 59690dea168f2198d1a3b0cac23b8063efcd11012f10ae4698f284808c8ef603
  - kind: registry
    name: xdg-home
    version: 1.3.0
    sha: ec1cdab258fb55c0da61328dc52c8764709b249011b2cad0454c72f0bf10a1f6
  - kind: registry
    name: zbus
    version: 5.5.0
    sha: 59c333f648ea1b647bc95dc1d34807c8e25ed7a6feff3394034dc4776054b236
  - kind: registry
    name: zbus_macros
    version: 5.5.0
    sha: f325ad10eb0d0a3eb060203494c3b7ec3162a01a59db75d2deee100339709fc0
  - kind: registry
    name: zbus_names
    version: 4.1.0
    sha: 856b7a38811f71846fd47856ceee8bccaec8399ff53fb370247e66081ace647b
  - kind: registry
    name: zvariant
    version: 5.1.0
    sha: a1200ee6ac32f1e5a312e455a949a4794855515d34f9909f4a3e082d14e1a56f
  - kind: registry
    name: zvariant_derive
    version: 5.1.0
    sha: 687e3b97fae6c9104fbbd36c73d27d149abf04fb874e2efbd84838763daa8916
  - kind: registry
    name: zvariant_utils
    version: 3.2.0
    sha: e16edfee43e5d7b553b77872d99bc36afdda75c223ca7ad5e3fbecd82ca5fc34
- kind: local
  path: files/asusctl/supergfxd.preset
  directory: local

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/systemd-libs.bst

variables:
  make-args: >-
    VENDORED=0
    ARGS='--frozen --release'

config:
  install-commands:
    (>):
    - |
      install -Dm644 local/supergfxd.preset '%{install-root}%{indep-libdir}/systemd/system-preset/60-supergfxd.preset'

    - |
      rm '%{install-root}%{indep-libdir}/systemd/system-preset/supergfxd.preset'
