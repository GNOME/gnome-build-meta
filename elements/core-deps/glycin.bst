kind: meson

sources:
- kind: tar
  url: gnome_downloads:glycin/1.1/glycin-1.1.6.tar.xz
  ref: d84cc56814f2284100ad3439a430837bb21f0f98d46e0d2b58689f2c19708f04
- kind: cargo2
  ref:
  - kind: registry
    name: addr2line
    version: 0.22.0
    sha: 6e4503c46a5c0c7844e948c9a4d6acd9f50cccb4de1c48eb9e291ea17470c678
  - kind: registry
    name: adler
    version: 1.0.2
    sha: f26201604c87b1e01bd3d98f8d5d9a8fcbb815e8cedb41ffccbeb4bf593a35fe
  - kind: registry
    name: aho-corasick
    version: 1.1.3
    sha: 8e60d3430d3a69478ad0993f19238d2df97c507009a52b3c10addcd7f6bcb916
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
    version: 1.13.0
    sha: d7ebdfa2ebdab6b1760375fa7d6f382b9f486eac35fc994625a00e89280bdbb7
  - kind: registry
    name: async-fs
    version: 2.1.2
    sha: ebcd09b382f40fcd159c2d695175b2ae620ffa5f3bd6f664131efff4e8b9e04a
  - kind: registry
    name: async-io
    version: 2.3.3
    sha: 0d6baa8f0178795da0e71bc42c9e5d13261aac7ee549853162e66a241ba17964
  - kind: registry
    name: async-lock
    version: 3.4.0
    sha: ff6e472cdea888a4bd64f342f09b3f50e1886d32afe8df3d663c01140b811b18
  - kind: registry
    name: async-process
    version: 2.2.3
    sha: f7eda79bbd84e29c2b308d1dc099d7de8dcc7035e48f4bf5dc4a531a44ff5e2a
  - kind: registry
    name: async-recursion
    version: 1.1.1
    sha: 3b43422f69d8ff38f95f1b2bb76517c91589a924d1559a0e935d7c8ce0274c11
  - kind: registry
    name: async-signal
    version: 0.2.9
    sha: dfb3634b73397aa844481f814fad23bbf07fdb0eabec10f2eb95e58944b1ec32
  - kind: registry
    name: async-task
    version: 4.7.1
    sha: 8b75356056920673b02621b35afd0f7dda9306d03c79a30f5c56c44cf256e3de
  - kind: registry
    name: async-trait
    version: 0.1.81
    sha: 6e0c28dcc82d7c8ead5cb13beb15405b57b8546e93215673ff8ca0349a028107
  - kind: registry
    name: atomic-waker
    version: 1.1.2
    sha: 1505bd5d3d116872e7271a6d4e16d81d0c8570876c8de68093a09ac269d8aac0
  - kind: registry
    name: autocfg
    version: 1.3.0
    sha: 0c4b4d0bd25bd0b74681c0ad21497610ce1b7c91b1022cd21c80c6fbdd9476b0
  - kind: registry
    name: backtrace
    version: 0.3.73
    sha: 5cc23269a4f8976d0a4d2e7109211a419fe30e8d88d677cd60b6bc79c5732e0a
  - kind: registry
    name: bit_field
    version: 0.10.2
    sha: dc827186963e592360843fb5ba4b973e145841266c1357f7180c43526f2e5b61
  - kind: registry
    name: bitflags
    version: 1.3.2
    sha: bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a
  - kind: registry
    name: bitflags
    version: 2.6.0
    sha: b048fb63fd8b5923fc5aa7b340d8e156aec7ec02f0c78fa8a6ddc2613f6f71de
  - kind: registry
    name: block-buffer
    version: 0.10.4
    sha: 3078c7629b62d3f0439517fa394996acacc5cbc91c5a20d8c658e77abd503a71
  - kind: registry
    name: blocking
    version: 1.6.1
    sha: 703f41c54fc768e63e091340b424302bb1c29ef4aa0c7f10fe849dfb114d29ea
  - kind: registry
    name: bytemuck
    version: 1.16.3
    sha: 102087e286b4677862ea56cf8fc58bb2cdfa8725c40ffb80fe3a008eb7f2fc83
  - kind: registry
    name: byteorder
    version: 1.5.0
    sha: 1fd0f2584146f6f2ef48085050886acf353beff7305ebd1ae69500e27c67f64b
  - kind: registry
    name: byteorder-lite
    version: 0.1.0
    sha: 8f1fe948ff07f4bd06c30984e69f5b4899c516a3ef74f34df92a2df2ab535495
  - kind: registry
    name: bytes
    version: 1.7.1
    sha: 8318a53db07bb3f8dca91a600466bdb3f2eaadeedfdbcf02e1accbad9271ba50
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
    version: 1.1.7
    sha: 26a5c3fd7bfa1ce3897a3a3501d362b2d87b7f2583ebcb4a949ec25911025cbc
  - kind: registry
    name: cfg-expr
    version: 0.16.0
    sha: 345c78335be0624ed29012dc10c49102196c6882c12dde65d9f35b02da2aada8
  - kind: registry
    name: cfg-if
    version: 1.0.0
    sha: baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd
  - kind: registry
    name: cfg_aliases
    version: 0.2.1
    sha: 613afe47fcd5fac7ccf1db93babcb082c5994d996f20b8b159f2ad1658eb5724
  - kind: registry
    name: color_quant
    version: 1.1.0
    sha: 3d7b894f5411737b7867f4827955924d7c254fc9f4d91a6aad6b097804b1018b
  - kind: registry
    name: concurrent-queue
    version: 2.5.0
    sha: 4ca0197aee26d1ae37445ee532fefce43251d24cc7c166799f4d46817f1d3973
  - kind: registry
    name: cpufeatures
    version: 0.2.12
    sha: 53fe5e26ff1b7aef8bca9c6080520cfb8d9333c7568e1829cef191a9723e5504
  - kind: registry
    name: crc32fast
    version: 1.4.2
    sha: a97769d94ddab943e4510d138150169a2758b5ef3eb191a9ee688de3e23ef7b3
  - kind: registry
    name: crossbeam-deque
    version: 0.8.5
    sha: 613f8cc01fe9cf1a3eb3d7f488fd2fa8388403e97039e2f73692932e291a770d
  - kind: registry
    name: crossbeam-epoch
    version: 0.9.18
    sha: 5b82ac4a3c2ca9c3460964f020e1402edd5753411d7737aa39c3714ad1b5420e
  - kind: registry
    name: crossbeam-utils
    version: 0.8.20
    sha: 22ec99545bb0ed0ea7bb9b8e1e9122ea386ff8a48c0922e43f36d45ab09e0e80
  - kind: registry
    name: crunchy
    version: 0.2.2
    sha: 7a81dae078cea95a014a339291cec439d2f232ebe854a9d672b796c6afafa9b7
  - kind: registry
    name: crypto-common
    version: 0.1.6
    sha: 1bfb12502f3fc46cca1bb51ac28df9d618d813cdc3d2f25b9fe775a34af26bb3
  - kind: registry
    name: darling
    version: 0.20.10
    sha: 6f63b86c8a8826a49b8c21f08a2d07338eec8d900540f8630dc76284be802989
  - kind: registry
    name: darling_core
    version: 0.20.10
    sha: 95133861a8032aaea082871032f5815eb9e98cef03fa916ab4500513994df9e5
  - kind: registry
    name: darling_macro
    version: 0.20.10
    sha: d336a2a514f6ccccaa3e09b02d41d35330c07ddf03a62165fcec10bb561c7806
  - kind: registry
    name: derive_builder
    version: 0.20.0
    sha: 0350b5cb0331628a5916d6c5c0b72e97393b8b6b03b47a9284f4e7f5a405ffd7
  - kind: registry
    name: derive_builder_core
    version: 0.20.0
    sha: d48cda787f839151732d396ac69e3473923d54312c070ee21e9effcaa8ca0b1d
  - kind: registry
    name: derive_builder_macro
    version: 0.20.0
    sha: 206868b8242f27cecce124c19fd88157fbd0dd334df2587f36417bafbc85097b
  - kind: registry
    name: digest
    version: 0.10.7
    sha: 9ed9a281f7bc9b7576e61468ba615a66a5c8cfdff42420a70aa82701a3b1e292
  - kind: registry
    name: dlib
    version: 0.5.2
    sha: 330c60081dcc4c72131f8eb70510f1ac07223e5d4163db481a04a0befcffa412
  - kind: registry
    name: dunce
    version: 1.0.4
    sha: 56ce8c6da7551ec6c462cbaf3bfbc75131ebbfa1c944aeaa9dab51ca1c5f0c3b
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
    name: enumn
    version: 0.1.14
    sha: 2f9ed6b3789237c8a0c1c505af1c7eb2c560df6186f01b098c3a1064ea532f38
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
    name: exr
    version: 1.72.0
    sha: 887d93f60543e9a9362ef8a21beedd0a833c5d9610e18c67abe15a5963dcb1a4
  - kind: registry
    name: fastrand
    version: 2.1.0
    sha: 9fc0510504f03c51ada170672ac806f1f105a88aa97a5281117e1ddc3368e51a
  - kind: registry
    name: fdeflate
    version: 0.3.4
    sha: 4f9bfee30e4dedf0ab8b422f03af778d9612b63f502710fc500a334ebe2de645
  - kind: registry
    name: flate2
    version: 1.0.30
    sha: 5f54427cfd1c7829e2a139fcefea601bf088ebca651d2bf53ebc600eac295dae
  - kind: registry
    name: flume
    version: 0.11.0
    sha: 55ac459de2512911e4b674ce33cf20befaba382d05b62b008afc1c8b57cbf181
  - kind: registry
    name: fnv
    version: 1.0.7
    sha: 3f9eec918d3f24069decb9af1554cad7c880e2da24a9afd88aca000531ab82c1
  - kind: registry
    name: foreign-types
    version: 0.5.0
    sha: d737d9aa519fb7b749cbc3b962edcf310a8dd1f4b67c91c4f83975dbdd17d965
  - kind: registry
    name: foreign-types-macros
    version: 0.2.3
    sha: 1a5c6c585bc94aaf2c7b51dd4c2ba22680844aba4c687be581871a6f518c5742
  - kind: registry
    name: foreign-types-shared
    version: 0.3.1
    sha: aa9a19cbb55df58761df49b23516a86d432839add4af60fc256da840f66ed35b
  - kind: registry
    name: four-cc
    version: 0.3.0
    sha: 431a4c31778fde52b4400de34975f219eeca55cc829a9de157cd743a5b230ecb
  - kind: registry
    name: futures-channel
    version: 0.3.30
    sha: eac8f7d7865dcb88bd4373ab671c8cf4508703796caa2b1985a9ca867b3fcb78
  - kind: registry
    name: futures-core
    version: 0.3.31
    sha: 05f29059c0c2090612e8d742178b0580d2dc940c837851ad723096f87af6663e
  - kind: registry
    name: futures-executor
    version: 0.3.30
    sha: a576fc72ae164fca6b9db127eaa9a9dda0d61316034f33a0a0d4eda41f02b01d
  - kind: registry
    name: futures-io
    version: 0.3.31
    sha: 9e5c1b78ca4aae1ac06c48a526a655760685149f0d465d21f37abfe57ce075c6
  - kind: registry
    name: futures-lite
    version: 2.3.0
    sha: 52527eb5074e35e9339c6b4e8d12600c7128b68fb25dcb9fa9dec18f7c25f3a5
  - kind: registry
    name: futures-macro
    version: 0.3.31
    sha: 162ee34ebcb7c64a8abebc059ce0fee27c2262618d7b60ed8faf72fef13c3650
  - kind: registry
    name: futures-sink
    version: 0.3.31
    sha: e575fab7d1e0dcb8d0c7bcf9a63ee213816ab51902e6d244a95819acacf1d4f7
  - kind: registry
    name: futures-task
    version: 0.3.31
    sha: f90f7dce0722e95104fcb095585910c0977252f286e354b5e3bd38902cd99988
  - kind: registry
    name: futures-timer
    version: 3.0.3
    sha: f288b0a4f20f9a56b5d1da57e2227c661b7b16168e2f72365f57b63326e29b24
  - kind: registry
    name: futures-util
    version: 0.3.31
    sha: 9fa08315bb612088cc391249efdc3bc77536f16c91f6cf495e6fbe85b20a4a81
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
    name: generic-array
    version: 0.14.7
    sha: 85649ca51fd72272d7821adaf274ad91c288277713d9c18820d8499a7ff69e9a
  - kind: registry
    name: getrandom
    version: 0.2.15
    sha: c4567c8db10ae91089c99af84c68c38da3ec2f087c3f82960bcdbf3656b6f4d7
  - kind: registry
    name: gif
    version: 0.13.1
    sha: 3fb2d69b19215e18bb912fa30f7ce15846e301408695e44e0ef719f1da9e19f2
  - kind: registry
    name: gimli
    version: 0.29.0
    sha: 40ecd4077b5ae9fd2e9e169b102c6c330d0605168eb0e8bf79952b256dbefffd
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
    name: glycin
    version: 2.0.3
    sha: a0c0c43ba80d02ea8cd540163e7cb49eced263fe3100c91c505acf5f9399ccb5
  - kind: registry
    name: glycin-utils
    version: 2.0.2
    sha: 2d4ea3c2b8d5aa43d87d60bb7f944c58aaade41d870e4258e69e204bbcd73a09
  - kind: registry
    name: gobject-sys
    version: 0.20.0
    sha: c6908864f5ffff15b56df7e90346863904f49b949337ed0456b9287af61903b8
  - kind: registry
    name: gufo-common
    version: 0.1.0
    sha: d1af2c3c6b244761a93e30989fa0868b92e386b6eb817fc6ced405462af4a7db
  - kind: registry
    name: gufo-exif
    version: 0.1.1
    sha: f2aff5e56872f03d477b55cccef818e6cdae482485c39c130ff9b3b31b69ea10
  - kind: registry
    name: gufo-jpeg
    version: 0.1.0
    sha: 48005ab74a59891303e9999440e8ade7e6dbe654fed096352c14c59a619f11e5
  - kind: registry
    name: half
    version: 2.4.1
    sha: 6dd08c532ae367adf81c312a4580bc67f1d0fe8bc9c460520283f4c0ff277888
  - kind: registry
    name: hashbrown
    version: 0.14.5
    sha: e5274423e17b7c9fc20b6e7e208532f9b19825d82dfd615708b70edd83df41f1
  - kind: registry
    name: heck
    version: 0.5.0
    sha: 2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea
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
    name: ident_case
    version: 1.0.1
    sha: b9e0384b61958566e926dc50660321d12159025e767c18e043daf26b70104c39
  - kind: registry
    name: image
    version: 0.25.2
    sha: 99314c8a2152b8ddb211f924cdae532d8c5e4c8bb54728e12fff1b0cd5963a10
  - kind: registry
    name: image-webp
    version: 0.1.3
    sha: f79afb8cbee2ef20f59ccd477a218c12a93943d075b492015ecb1bb81f8ee904
  - kind: registry
    name: indexmap
    version: 2.3.0
    sha: de3fc2e30ba82dd1b3911c8de1ffc143c74a914a14e99514d7637e3099df5ea0
  - kind: registry
    name: jobserver
    version: 0.1.32
    sha: 48d1dbcbbeb6a7fec7e059840aa538bd62aaccf972c7346c4d9d2059312853d0
  - kind: registry
    name: jpeg-decoder
    version: 0.3.1
    sha: f5d4a7da358eff58addd2877a45865158f0d78c911d43a5784ceb7bbf52833b0
  - kind: registry
    name: jpegxl-rs
    version: 0.10.3+libjxl-0.10.2
    sha: e697c7532d4a244d91306a19c63763769366fbc61e75d5a08cc602923e478a7a
  - kind: registry
    name: jpegxl-sys
    version: 0.10.3+libjxl-0.10.2
    sha: c8262d19ed55829441dc2a2b1315c8f15e040139443fc1dbc48551890020a5c2
  - kind: registry
    name: kamadak-exif
    version: 0.5.5
    sha: ef4fc70d0ab7e5b6bafa30216a6b48705ea964cdfc29c050f2412295eba58077
  - kind: registry
    name: lazy_static
    version: 1.5.0
    sha: bbd2bcb4c963f2ddae06a2efc7e9f3591312473c50c6685e1f298068316e66fe
  - kind: registry
    name: lcms2
    version: 6.1.0
    sha: 680ec3fa42c36e0af9ca02f20a3742a82229c7f1ee0e6754294de46a80be6f74
  - kind: registry
    name: lcms2-sys
    version: 4.0.5
    sha: 593265f9a3172180024fb62580ee31348f31be924b19416da174ebb7fb623d2e
  - kind: registry
    name: lebe
    version: 0.5.2
    sha: 03087c2bad5e1034e8cace5926dec053fb3790248370865f5117a7d0213354c8
  - kind: registry
    name: libc
    version: 0.2.155
    sha: 97b3888a4aecf77e811145cadf6eef5901f4782c53886191b2f693f24761847c
  - kind: registry
    name: libheif-rs
    version: 1.0.2
    sha: 40c32c0a0c970782707070f11c8612bced800b916af4ddaf6229161dc3ceb907
  - kind: registry
    name: libheif-sys
    version: 2.1.1+1.17.4
    sha: f60b29be1ef3ab2aba61344f09a18c3edf552bf4f9fbec9bd68b9ea6f98e71f8
  - kind: registry
    name: libloading
    version: 0.8.5
    sha: 4979f22fdb869068da03c9f7528f8297c6fd2606bc3a4affe42e6a823fdb8da4
  - kind: registry
    name: librsvg-rebind
    version: 0.1.0
    sha: 15630f09af77f5e84889ce244a8402a1f9ac0b5546171ad77a02fe514a830d06
  - kind: registry
    name: librsvg-rebind-sys
    version: 0.1.0
    sha: 635a4abf7b375659c9bab1839779487eb2a964934ad4f67ceb4e0364b75c37e2
  - kind: registry
    name: libseccomp
    version: 0.3.0
    sha: 21c57fd8981a80019807b7b68118618d29a87177c63d704fc96e6ecd003ae5b3
  - kind: registry
    name: libseccomp-sys
    version: 0.2.1
    sha: 9a7cbbd4ad467251987c6e5b47d53b11a5a05add08f2447a9e2d70aef1e0d138
  - kind: registry
    name: linux-raw-sys
    version: 0.4.14
    sha: 78b3ae25bc7c8c38cec158d1f2757ee79e9b3740fbc7ccf0e59e4b08d793fa89
  - kind: registry
    name: lock_api
    version: 0.4.12
    sha: 07af8b9cdd281b7915f413fa73f29ebd5d55d0d3f0155584dade1ff18cea1b17
  - kind: registry
    name: log
    version: 0.4.22
    sha: a7a70ba024b9dc04c27ea2f0c0548feb474ec5c54bba33a7f72f873a39d07b24
  - kind: registry
    name: matchers
    version: 0.1.0
    sha: 8263075bb86c5a1b1427b5ae862e8889656f126e9f77c484496e8b47cf5c5558
  - kind: registry
    name: memchr
    version: 2.7.4
    sha: 78ca9ab1a0babb1e7d5695e3530886289c18cf2f87ec19a575a0abdce112e3a3
  - kind: registry
    name: memfd
    version: 0.6.4
    sha: b2cffa4ad52c6f791f4f8b15f0c05f9824b2ced1160e88cc393d64fff9a8ac64
  - kind: registry
    name: memmap2
    version: 0.9.4
    sha: fe751422e4a8caa417e13c3ea66452215d7d63e19e604f4980461212f3ae1322
  - kind: registry
    name: memoffset
    version: 0.9.1
    sha: 488016bfae457b036d996092f6cb448677611ce4449e970ceaf42695203f218a
  - kind: registry
    name: miniz_oxide
    version: 0.7.4
    sha: b8a240ddb74feaf34a79a7add65a741f3167852fba007066dcac1ca548d89c08
  - kind: registry
    name: mio
    version: 1.0.1
    sha: 4569e456d394deccd22ce1c1913e6ea0e54519f577285001215d33557431afe4
  - kind: registry
    name: mutate_once
    version: 0.1.1
    sha: 16cf681a23b4d0a43fc35024c176437f9dcd818db34e0f42ab456a0ee5ad497b
  - kind: registry
    name: nix
    version: 0.29.0
    sha: 71e2746dc3a24dd78b3cfcb7be93368c6de9963d30f43a6a73998a9cf4b17b46
  - kind: registry
    name: nu-ansi-term
    version: 0.46.0
    sha: 77a8165726e8236064dbb45459242600304b42a5ea24ee2948e18e023bf7ba84
  - kind: registry
    name: num-traits
    version: 0.2.19
    sha: 071dfc062690e90b734c0b2273ce72ad0ffa95f0c74596bc250dcfd960262841
  - kind: registry
    name: object
    version: 0.36.2
    sha: 3f203fa8daa7bb185f760ae12bd8e097f63d17041dcdcaf675ac54cdf863170e
  - kind: registry
    name: once_cell
    version: 1.19.0
    sha: 3fdb12b2476b595f9358c5161aa467c2438859caa136dec86c26fdd2efe17b92
  - kind: registry
    name: ordered-stream
    version: 0.2.0
    sha: 9aa2b01e1d916879f73a53d01d1d6cee68adbb31d6d9177a8cfce093cced1d50
  - kind: registry
    name: overload
    version: 0.1.1
    sha: b15813163c1d831bf4a13c3610c05c0d03b39feb07f7e09fa234dac9b15aaf39
  - kind: registry
    name: pango
    version: 0.20.0
    sha: 54768854025df6903061d0084fd9702a253ddfd60db7d9b751d43b76689a7f0a
  - kind: registry
    name: pango-sys
    version: 0.20.0
    sha: b07cc57d10cee4ec661f718a6902cee18c2f4cfae08e87e5a390525946913390
  - kind: registry
    name: parking
    version: 2.2.0
    sha: bb813b8af86854136c6922af0598d719255ecb2179515e6e7730d468f05c9cae
  - kind: registry
    name: paste
    version: 1.0.15
    sha: 57c0d7b74b563b49d38dae00a0c37d4d6de9b432382b2892f0574ddcae73fd0a
  - kind: registry
    name: pin-project-lite
    version: 0.2.14
    sha: bda66fc9667c18cb2758a2ac84d1167245054bcf85d5d1aaa6923f45801bdd02
  - kind: registry
    name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - kind: registry
    name: piper
    version: 0.2.3
    sha: ae1d5c74c9876f070d3e8fd503d748c7d974c3e48da8f41350fa5222ef9b4391
  - kind: registry
    name: pkg-config
    version: 0.3.30
    sha: d231b230927b5e4ad203db57bbcbee2802f6bce620b1e4a9024a07d94e2907ec
  - kind: registry
    name: png
    version: 0.17.13
    sha: 06e4b0d3d1312775e782c86c91a111aa1f910cbb65e1337f9975b5f9a554b5e1
  - kind: registry
    name: polling
    version: 3.7.2
    sha: a3ed00ed3fbf728b5816498ecd316d1716eecaced9c0c8d2c5a6740ca214985b
  - kind: registry
    name: ppv-lite86
    version: 0.2.20
    sha: 77957b295656769bb8ad2b6a6b09d897d94f05c41b069aede1fcdaa675eaea04
  - kind: registry
    name: proc-macro-crate
    version: 3.2.0
    sha: 8ecf48c7ca261d60b74ab1a7b20da18bede46776b2e55535cb958eb595c5fa7b
  - kind: registry
    name: proc-macro2
    version: 1.0.86
    sha: 5e719e8df665df0d1c8fbfd238015744736151d4445ec0836b8e628aae103b77
  - kind: registry
    name: qoi
    version: 0.4.1
    sha: 7f6d64c71eb498fe9eae14ce4ec935c555749aef511cca85b5568910d6e48001
  - kind: registry
    name: quick-error
    version: 2.0.1
    sha: a993555f31e5a609f617c12db6250dedcac1b0a85076912c436e6fc9b2c8e6a3
  - kind: registry
    name: quote
    version: 1.0.36
    sha: 0fa76aaf39101c457836aec0ce2316dbdc3ab723cdda1c6bd4e6ad4208acaca7
  - kind: registry
    name: rand
    version: 0.8.5
    sha: 34af8d1a0e25924bc5b7c43c079c942339d8f0a8b57c39049bef581b46327404
  - kind: registry
    name: rand_chacha
    version: 0.3.1
    sha: e6c10a63a0fa32252be49d21e7709d4d4baf8d231c2dbce1eaa8141b9b127d88
  - kind: registry
    name: rand_core
    version: 0.6.4
    sha: ec0be4795e2f6a28069bec0b5ff3e2ac9bafc99e6a9a7dc3547996c5c816922c
  - kind: registry
    name: rayon-core
    version: 1.12.1
    sha: 1465873a3dfdaa8ae7cb14b4383657caab0b3e8a0aa9ae8e04b044854c8dfce2
  - kind: registry
    name: regex
    version: 1.10.5
    sha: b91213439dad192326a0d7c6ee3955910425f441d7038e0d6933b0aec5c4517f
  - kind: registry
    name: regex-automata
    version: 0.1.10
    sha: 6c230d73fb8d8c1b9c0b3135c5142a8acee3a0558fb8db5cf1cb65f8d7862132
  - kind: registry
    name: regex-automata
    version: 0.4.7
    sha: 38caf58cc5ef2fed281f89292ef23f6365465ed9a41b7a7754eb4e26496c92df
  - kind: registry
    name: regex-syntax
    version: 0.6.29
    sha: f162c6dd7b008981e4d40210aca20b4bd0f9b60ca9271061b07f78537722f2e1
  - kind: registry
    name: regex-syntax
    version: 0.8.4
    sha: 7a66a03ae7c801facd77a29370b4faec201768915ac14a721ba36f20bc9c209b
  - kind: registry
    name: rmp
    version: 0.8.14
    sha: 228ed7c16fa39782c3b3468e974aec2795e9089153cd08ee2e9aefb3613334c4
  - kind: registry
    name: rmp-serde
    version: 1.3.0
    sha: 52e599a477cf9840e92f2cde9a7189e67b42c57532749bf90aea6ec10facd4db
  - kind: registry
    name: rustc-demangle
    version: 0.1.24
    sha: 719b953e2095829ee67db738b3bfa9fa368c94900df327b3f07fe6e794d2fe1f
  - kind: registry
    name: rustix
    version: 0.38.34
    sha: 70dc5ec042f7a43c4a73241207cecc9873a06d45debb38b329f8541d85c2730f
  - kind: registry
    name: safe-transmute
    version: 0.11.3
    sha: 3944826ff8fa8093089aba3acb4ef44b9446a99a16f3bf4e74af3f77d340ab7d
  - kind: registry
    name: same-file
    version: 1.0.6
    sha: 93fc1dc3aaa9bfed95e02e6eadabb4baf7e3078b0bd1b4d7b6b0b68378900502
  - kind: registry
    name: scopeguard
    version: 1.2.0
    sha: 94143f37725109f92c262ed2cf5e59bce7498c01bcc1502d7b9afe439a4e9f49
  - kind: registry
    name: serde
    version: 1.0.204
    sha: bc76f558e0cbb2a839d37354c575f1dc3fdc6546b5be373ba43d95f231bf7c12
  - kind: registry
    name: serde_derive
    version: 1.0.204
    sha: e0cd7e117be63d3c3678776753929474f3b04a43a080c744d6b0ae2a8c28e222
  - kind: registry
    name: serde_repr
    version: 0.1.19
    sha: 6c64451ba24fc7a6a2d60fc75dd9c83c90903b19028d4eff35e88fc1e86564e9
  - kind: registry
    name: serde_spanned
    version: 0.6.7
    sha: eb5b1b31579f3811bf615c144393417496f152e12ac8b7663bf664f4a815306d
  - kind: registry
    name: sha1
    version: 0.10.6
    sha: e3bf829a2d51ab4a5ddf1352d8470c140cadc8301b2ae1789db023f01cedd6ba
  - kind: registry
    name: sharded-slab
    version: 0.1.7
    sha: f40ca3c46823713e0d4209592e8d6e826aa57e928f09752619fc696c499637f6
  - kind: registry
    name: signal-hook-registry
    version: 1.4.2
    sha: a9e9e0b4211b72e7b8b6e85c807d36c212bdb33ea8587f7569562a84df5465b1
  - kind: registry
    name: simd-adler32
    version: 0.3.7
    sha: d66dc143e6b11c1eddc06d5c423cfc97062865baf299914ab64caa38182078fe
  - kind: registry
    name: slab
    version: 0.4.9
    sha: 8f92a496fb766b417c996b9c5e57daf2f7ad3b0bebe1ccfca4856390e3d3bb67
  - kind: registry
    name: smallvec
    version: 1.13.2
    sha: 3c5e1a9a646d36c3599cd173a41282daf47c44583ad367b8e6837255952e5c67
  - kind: registry
    name: socket2
    version: 0.5.7
    sha: ce305eb0b4296696835b71df73eb912e0f1ffd2556a501fcede6e0c50349191c
  - kind: registry
    name: spin
    version: 0.9.8
    sha: 6980e8d7511241f8acf4aebddbb1ff938df5eebe98691418c4468d0b72a96a67
  - kind: registry
    name: static_assertions
    version: 1.1.0
    sha: a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f
  - kind: registry
    name: strsim
    version: 0.11.1
    sha: 7da8b5736845d9f2fcb837ea5d9e2628564b3b043a70948a3f0b778838c5fb4f
  - kind: registry
    name: syn
    version: 2.0.72
    sha: dc4b9b9bf2add8093d3f2c0204471e951b2285580335de42f9d2534f3ae7a8af
  - kind: registry
    name: system-deps
    version: 7.0.2
    sha: 070a0a5e7da2d24be457809c4b3baa57a835fd2829ad8b86f9a049052fe71031
  - kind: registry
    name: target-lexicon
    version: 0.12.16
    sha: 61c41af27dd6d1e27b1b16b489db798443478cef1f06a660c96db617ba5de3b1
  - kind: registry
    name: tempfile
    version: 3.10.1
    sha: 85b77fafb263dd9d05cbeac119526425676db3784113aa9295c88498cbf8bff1
  - kind: registry
    name: thiserror
    version: 1.0.63
    sha: c0342370b38b6a11b6cc11d6a805569958d54cfa061a29969c3b5ce2ea405724
  - kind: registry
    name: thiserror-impl
    version: 1.0.63
    sha: a4558b58466b9ad7ca0f102865eccc95938dca1a74a856f2b57b6629050da261
  - kind: registry
    name: thread_local
    version: 1.1.8
    sha: 8b9ef9bad013ada3808854ceac7b46812a6465ba368859a37e2100283d2d719c
  - kind: registry
    name: tiff
    version: 0.9.1
    sha: ba1310fcea54c6a9a4fd1aad794ecc02c31682f6bfbecdf460bf19533eed1e3e
  - kind: registry
    name: tokio
    version: 1.39.2
    sha: daa4fb1bc778bd6f04cbfc4bb2d06a7396a8f299dc33ea1900cedaa316f467b1
  - kind: registry
    name: tokio-stream
    version: 0.1.15
    sha: 267ac89e0bec6e691e5813911606935d77c476ff49024f98abcea3e7b15e37af
  - kind: registry
    name: toml
    version: 0.8.19
    sha: a1ed1f98e3fdc28d6d910e6737ae6ab1a93bf1985935a1193e68f93eeb68d24e
  - kind: registry
    name: toml_datetime
    version: 0.6.8
    sha: 0dd7358ecb8fc2f8d014bf86f6f638ce72ba252a2c3a2572f2a795f1d23efb41
  - kind: registry
    name: toml_edit
    version: 0.22.20
    sha: 583c44c02ad26b0c3f3066fe629275e50627026c51ac2e595cca4c230ce1ce1d
  - kind: registry
    name: tracing
    version: 0.1.40
    sha: c3523ab5a71916ccf420eebdf5521fcef02141234bbc0b8a49f2fdc4544364ef
  - kind: registry
    name: tracing-attributes
    version: 0.1.27
    sha: 34704c8d6ebcbc939824180af020566b01a7c01f80641264eba0999f6c2b6be7
  - kind: registry
    name: tracing-core
    version: 0.1.32
    sha: c06d3da6113f116aaee68e4d601191614c9053067f9ab7f6edbcb161237daa54
  - kind: registry
    name: tracing-log
    version: 0.2.0
    sha: ee855f1f400bd0e5c02d150ae5de3840039a3f54b025156404e34c23c03f47c3
  - kind: registry
    name: tracing-subscriber
    version: 0.3.18
    sha: ad0f048c97dbd9faa9b7df56362b8ebcaa52adb06b498c050d2f4e32f90a7a8b
  - kind: registry
    name: typenum
    version: 1.17.0
    sha: 42ff0bf0c66b8238c6f3b578df37d0b7848e55df8577b3f74f92a69acceeb825
  - kind: registry
    name: uds_windows
    version: 1.1.0
    sha: 89daebc3e6fd160ac4aa9fc8b3bf71e1f74fbf92367ae71fb83a037e8bf164b9
  - kind: registry
    name: unicode-ident
    version: 1.0.12
    sha: 3354b9ac3fae1ff6755cb6db53683adb661634f67557942dea4facebec0fee4b
  - kind: registry
    name: valuable
    version: 0.1.0
    sha: 830b7e5d4d90034032940e4ace0d9a9a057e7a45cd94e6c007832e39edb82f6d
  - kind: registry
    name: vcpkg
    version: 0.2.15
    sha: accd4ea62f7bb7a82fe23066fb0957d48ef677f6eeb8215f372f52e48bb32426
  - kind: registry
    name: version-compare
    version: 0.2.0
    sha: 852e951cb7832cb45cb1169900d19760cfa39b82bc0ea9c0e5a14ae88411c98b
  - kind: registry
    name: version_check
    version: 0.9.5
    sha: 0b928f33d975fc6ad9f86c8f283853ad26bdd5b10b7f1542aa2fa15e2289105a
  - kind: registry
    name: walkdir
    version: 2.5.0
    sha: 29790946404f91d9c5d06f9874efddea1dc06c5efe94541a7d6863108e3a5e4b
  - kind: registry
    name: wasi
    version: 0.11.0+wasi-snapshot-preview1
    sha: 9c8d87e72b64a3b4db28d11ce29237c246188f4f51057d65a7eab63b7987e423
  - kind: registry
    name: weezl
    version: 0.1.8
    sha: 53a85b86a771b1c87058196170769dd264f66c0782acf1ae6cc51bfd64b39082
  - kind: registry
    name: winapi
    version: 0.3.9
    sha: 5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419
  - kind: registry
    name: winapi-i686-pc-windows-gnu
    version: 0.4.0
    sha: ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6
  - kind: registry
    name: winapi-util
    version: 0.1.8
    sha: 4d4cc384e1e73b93bafa6fb4f1df8c41695c8a91cf9c4c64358067d15a7b6c6b
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
    version: 0.6.18
    sha: 68a9bda4691f099d435ad181000724da8e5899daa10713c2d432552b9ccd3a6f
  - kind: registry
    name: xdg-home
    version: 1.2.0
    sha: ca91dcf8f93db085f3a0a29358cd0b9d670915468f4290e8b85d118a34211ab8
  - kind: registry
    name: yeslogic-fontconfig-sys
    version: 6.0.0
    sha: 503a066b4c037c440169d995b869046827dbc71263f6e8f3be6d77d4f3229dbd
  - kind: registry
    name: zbus
    version: 4.4.0
    sha: bb97012beadd29e654708a0fdb4c84bc046f537aecfde2c3ee0a9e4b4d48c725
  - kind: registry
    name: zbus_macros
    version: 4.4.0
    sha: 267db9407081e90bbfa46d841d3cbc60f59c0351838c4bc65199ecd79ab1983e
  - kind: registry
    name: zbus_names
    version: 3.0.0
    sha: 4b9b1fef7d021261cc16cba64c351d291b715febe0fa10dc3a443ac5a5022e6c
  - kind: registry
    name: zerocopy
    version: 0.7.35
    sha: 1b9b4fd18abc82b8136838da5d50bae7bdea537c574d8dc1a34ed098d6c166f0
  - kind: registry
    name: zerocopy-derive
    version: 0.7.35
    sha: fa4f8080344d4671fb4e831a13ad1e68092748387dfc4f55e356242fae12ce3e
  - kind: registry
    name: zune-core
    version: 0.4.12
    sha: 3f423a2c17029964870cfaabb1f13dfab7d092a62a29a89264f4d36990ca414a
  - kind: registry
    name: zune-inflate
    version: 0.2.54
    sha: 73ab332fe2f6680068f3582b16a24f90ad7096d5d39b974d1c0aff0125116f02
  - kind: registry
    name: zune-jpeg
    version: 0.4.13
    sha: 16099418600b4d8f028622f73ff6e3deaabdff330fb9a2a131dea781ee8b0768
  - kind: registry
    name: zvariant
    version: 4.2.0
    sha: 2084290ab9a1c471c38fc524945837734fbf124487e105daec2bb57fd48c81fe
  - kind: registry
    name: zvariant_derive
    version: 4.2.0
    sha: 73e2ba546bda683a90652bac4a279bc146adad1386f25379cf73200d2002c449
  - kind: registry
    name: zvariant_utils
    version: 2.1.0
    sha: c51bcff7cc3dbb5055396bcf774748c3dab426b4b8659046963523cee4808340
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/libheif.bst
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/libjxl.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  # Only build loaders, not the C bindings
  meson-local: >-
    -Dlibglycin=false
