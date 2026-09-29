kind: meson

sources:
- kind: git_repo
  url: gnome:decibels.git
  track: main
  ref: 49.6.1-57-g9dd7d966658430b8984190d672193b330b33ced0
# Doing this manually for now, we need a plugin to do this
# See https://gitlab.gnome.org/GNOME/decibels/-/merge_requests/182#note_2884304
- kind: tar
  url: npm:@eslint-community/eslint-utils/-/eslint-utils-4.9.1.tgz
  directory: node_modules/@eslint-community/eslint-utils
  ref: 68dc3a4d91e5b9d8f10047e91cdb1879a3d19fca12576d62dfbdd1363f9fd5d8
- kind: tar
  url: npm:eslint-visitor-keys/-/eslint-visitor-keys-3.4.3.tgz
  directory: node_modules/@eslint-community/eslint-utils/node_modules/eslint-visitor-keys
  ref: 30ce592c610e46e141ffc5653545d33f24089e57316c1057e5a68d106841aaea
- kind: tar
  url: npm:@eslint-community/regexpp/-/regexpp-4.12.2.tgz
  directory: node_modules/@eslint-community/regexpp
  ref: b5cb22e604ad47f511e96b7aa57910995994f3e48744fbc507018da9efae0f12
- kind: tar
  url: npm:@eslint/config-array/-/config-array-0.21.2.tgz
  directory: node_modules/@eslint/config-array
  ref: d358e9d158bf96884ce0531748e536764a405dcf6343bff2eec5ebf4ccdff005
- kind: tar
  url: npm:@eslint/config-helpers/-/config-helpers-0.4.2.tgz
  directory: node_modules/@eslint/config-helpers
  ref: ce6808089af3ee67c17397f2950cea9d49b1e12db7efa5fccb23b5455e38e4e1
- kind: tar
  url: npm:@eslint/core/-/core-0.17.0.tgz
  directory: node_modules/@eslint/core
  ref: 87dc1678d6b85736fee1918b42b8c52b3b6470f786e8120a0108a7834dc23d18
- kind: tar
  url: npm:@eslint/eslintrc/-/eslintrc-3.3.6.tgz
  directory: node_modules/@eslint/eslintrc
  ref: aa84801553494fc868bd65c19bee581018ac40d7279ac9b070899d5ecf43878a
- kind: tar
  url: npm:@eslint/js/-/js-9.39.5.tgz
  directory: node_modules/@eslint/js
  ref: 76bb8901d39dd8b754f0eccfd36a1adf7e489da19f2380c6a210118bccc1d1b6
- kind: tar
  url: npm:@eslint/object-schema/-/object-schema-2.1.7.tgz
  directory: node_modules/@eslint/object-schema
  ref: e3cbec8032fe7248b362cdf32bcba216303f39421700e4748ebe4fe934188fe3
- kind: tar
  url: npm:@eslint/plugin-kit/-/plugin-kit-0.4.1.tgz
  directory: node_modules/@eslint/plugin-kit
  ref: 59df046122e0ab753b96c49d9246aa305e36893c7b6586e9c82d05f02ebee4c1
- kind: tar
  url: npm:@girs/adw-1/-/adw-1-4.1.0.tgz
  directory: node_modules/@girs/adw-1
  ref: d60cac94ab8ab0d89afc69bd82bba77c17d6b1ee335488e91fb97b617375f9ca
- kind: tar
  url: npm:@girs/cairo-1.0/-/cairo-1.0-4.1.0.tgz
  directory: node_modules/@girs/cairo-1.0
  ref: 723001297107f5dfa11eb8bdc038d1bf70b6d9d36cbb2ece06f6c48c9fe0dadd
- kind: tar
  url: npm:@girs/freetype2-2.0/-/freetype2-2.0-4.1.0.tgz
  directory: node_modules/@girs/freetype2-2.0
  ref: 7deaf001113e0eda617429ea22d5e570b9cd355ad341a3982001541ca846c530
- kind: tar
  url: npm:@girs/gdk-4.0/-/gdk-4.0-4.1.0.tgz
  directory: node_modules/@girs/gdk-4.0
  ref: ed336cce3e0e1cf26d2d14d879cef52e3fffef0efb91092e1cdcac93bb027874
- kind: tar
  url: npm:@girs/gdkpixbuf-2.0/-/gdkpixbuf-2.0-4.1.0.tgz
  directory: node_modules/@girs/gdkpixbuf-2.0
  ref: 82509170db1a6d98185cabbcca8eb5aa16c66f6d0ff5a38c16a390609a547e7f
- kind: tar
  url: npm:@girs/gio-2.0/-/gio-2.0-4.1.0.tgz
  directory: node_modules/@girs/gio-2.0
  ref: 70e3f91f770b016faef04a2061ca614cf086c8ff80095cadd2b856b2d4480f39
- kind: tar
  url: npm:@girs/gjs/-/gjs-4.1.0.tgz
  directory: node_modules/@girs/gjs
  ref: a18641064126dcc8fdea2125f80b98c2257bc8bbad2b31e3f94b56a35c45c244
- kind: tar
  url: npm:@girs/glib-2.0/-/glib-2.0-4.1.0.tgz
  directory: node_modules/@girs/glib-2.0
  ref: fc75f91ef0c7863adf8e3e4e7668a1989923f83955380cd2bde88fa65acbb936
- kind: tar
  url: npm:@girs/gmodule-2.0/-/gmodule-2.0-4.1.0.tgz
  directory: node_modules/@girs/gmodule-2.0
  ref: 8e47eb41bf3e8ca708557c43b7126a6049a4692e83ddd9da58c4e4c7d2b9ec34
- kind: tar
  url: npm:@girs/gobject-2.0/-/gobject-2.0-4.1.0.tgz
  directory: node_modules/@girs/gobject-2.0
  ref: 01f84fbf53b87244e59991d7e1520f38e06f03c94f348c66181c70cef8dc4394
- kind: tar
  url: npm:@girs/graphene-1.0/-/graphene-1.0-4.1.0.tgz
  directory: node_modules/@girs/graphene-1.0
  ref: f9f3c2c761281f3a5a556c4bd891e362f9444b80e21206266082c5ca4795385c
- kind: tar
  url: npm:@girs/gsk-4.0/-/gsk-4.0-4.1.0.tgz
  directory: node_modules/@girs/gsk-4.0
  ref: 15831e037ed3592a17a813e79e4b6d0330d0429414e342fe33265397d936cac6
- kind: tar
  url: npm:@girs/gst-1.0/-/gst-1.0-4.1.0.tgz
  directory: node_modules/@girs/gst-1.0
  ref: b8a760073556f2e669cf81965d02af6a4980b4d25ed9d5610d6a471ec571380e
- kind: tar
  url: npm:@girs/gstaudio-1.0/-/gstaudio-1.0-4.1.0.tgz
  directory: node_modules/@girs/gstaudio-1.0
  ref: 9166fab9ec1551a6f67a7ec27ab81ea083eb432bee2659ddb4ebec7e54ab50ed
- kind: tar
  url: npm:@girs/gstbase-1.0/-/gstbase-1.0-4.1.0.tgz
  directory: node_modules/@girs/gstbase-1.0
  ref: b022a70447c227d55ffdf413629df34d36eaf6a094c111ed5349e72621813d28
- kind: tar
  url: npm:@girs/gstpbutils-1.0/-/gstpbutils-1.0-4.1.0.tgz
  directory: node_modules/@girs/gstpbutils-1.0
  ref: b59a9cf3cb13359c655bc44fa7c1d8d8e52676ff241ab63fcf3eb35f1a924161
- kind: tar
  url: npm:@girs/gstplay-1.0/-/gstplay-1.0-4.1.0.tgz
  directory: node_modules/@girs/gstplay-1.0
  ref: 8569e78158fbec510217c36b072427b4e11f55a7bf6392a3b34e96fa50d21d3c
- kind: tar
  url: npm:@girs/gsttag-1.0/-/gsttag-1.0-4.1.0.tgz
  directory: node_modules/@girs/gsttag-1.0
  ref: 81fdcae7fa2fdb93bad31672128ebbbe4523a07ee0c4626ee11f68522d4ead12
- kind: tar
  url: npm:@girs/gstvideo-1.0/-/gstvideo-1.0-4.1.0.tgz
  directory: node_modules/@girs/gstvideo-1.0
  ref: 933a11f31290dd406f6b3523f0f0d78f5147b255ac7b0b5fa1a62807eb0d6e6f
- kind: tar
  url: npm:@girs/gtk-4.0/-/gtk-4.0-4.1.0.tgz
  directory: node_modules/@girs/gtk-4.0
  ref: dbc5ab57fa25b4483d281f0d2abe3efd0981694f3f3a7c845005a7f150bc63da
- kind: tar
  url: npm:@girs/harfbuzz-0.0/-/harfbuzz-0.0-4.1.0.tgz
  directory: node_modules/@girs/harfbuzz-0.0
  ref: 3ff9a7c70f87aa724fd1a4ea05561f4c2778b41795f2159dfc2f5c79157e9713
- kind: tar
  url: npm:@girs/pango-1.0/-/pango-1.0-4.1.0.tgz
  directory: node_modules/@girs/pango-1.0
  ref: d305164ced1997b5615058387548d4649e2a5550beb6bf7f1f9060d16456d4f2
- kind: tar
  url: npm:@girs/pangocairo-1.0/-/pangocairo-1.0-4.1.0.tgz
  directory: node_modules/@girs/pangocairo-1.0
  ref: 52d46d4964b5217810e0ceeedb657d1432c4ee002a46e50b8c329640e2aaebf4
- kind: tar
  url: npm:@humanfs/core/-/core-0.19.2.tgz
  directory: node_modules/@humanfs/core
  ref: 4d87476af7eb8e64fb45afebe22f09babd734122a430e64d40cee064ab8caeae
- kind: tar
  url: npm:@humanfs/node/-/node-0.16.8.tgz
  directory: node_modules/@humanfs/node
  ref: b7beb7c13d7cb80d5cf559973e89e24898414cc5ac2fb699341682e22540c6b6
- kind: tar
  url: npm:@humanfs/types/-/types-0.15.0.tgz
  directory: node_modules/@humanfs/types
  ref: 3c2942da7ba321f6ba27255a5faceee76eae502403129d8aa50d2dc8400a94d5
- kind: tar
  url: npm:@humanwhocodes/module-importer/-/module-importer-1.0.1.tgz
  directory: node_modules/@humanwhocodes/module-importer
  ref: 6916df30c976c50fb67af9d9693728b1d93e501f8fb4a46731b4ca3a0d1d0f1a
- kind: tar
  url: npm:@humanwhocodes/retry/-/retry-0.4.3.tgz
  directory: node_modules/@humanwhocodes/retry
  ref: 7774adde8013a91e5502d550f071ab61b1077ce5cc3c4933fb853bba55a02280
- kind: tar
  url: npm:@pkgr/core/-/core-0.3.6.tgz
  directory: node_modules/@pkgr/core
  ref: e2e38238b7d1fb836f2fb59adb1aae9d82eefdbbd1285d5798d41df7f475e5e3
- kind: tar
  url: npm:@types/estree/-/estree-1.0.9.tgz
  directory: node_modules/@types/estree
  ref: ec8f3c0dfb21497db5a3480c45a6cf6f9b18d3b337b2ea4d03e3ef2a9c2bb358
- kind: tar
  url: npm:@types/json-schema/-/json-schema-7.0.15.tgz
  directory: node_modules/@types/json-schema
  ref: 12dcb1dcff7099bff0663fc220551ba53fcf23c136a22375e323bb6626d95724
- kind: tar
  url: npm:@typescript-eslint/eslint-plugin/-/eslint-plugin-8.64.0.tgz
  directory: node_modules/@typescript-eslint/eslint-plugin
  ref: 77b0c6bb8d5c269bcb90ca7c16f16dea05ea636bf51c716061e5e7caa9784642
- kind: tar
  url: npm:ignore/-/ignore-7.0.6.tgz
  directory: node_modules/@typescript-eslint/eslint-plugin/node_modules/ignore
  ref: c47facddf618449cb90e606bbdd927120bf9613bc1579c168120de9b58c67d68
- kind: tar
  url: npm:@typescript-eslint/parser/-/parser-8.64.0.tgz
  directory: node_modules/@typescript-eslint/parser
  ref: b77926e3e587c4080369959a16d71859c17058e7260f499a602bb44a1a7a256d
- kind: tar
  url: npm:@typescript-eslint/project-service/-/project-service-8.64.0.tgz
  directory: node_modules/@typescript-eslint/project-service
  ref: b2b4096e5cf3d67eef85e18c4551fd602bed202556496ca2b36e107d56fe3ea0
- kind: tar
  url: npm:@typescript-eslint/scope-manager/-/scope-manager-8.64.0.tgz
  directory: node_modules/@typescript-eslint/scope-manager
  ref: 8ca3cc149634478039eede41a6439dd2f40759f0ce131ae9fe51a9bfea8f0818
- kind: tar
  url: npm:@typescript-eslint/tsconfig-utils/-/tsconfig-utils-8.64.0.tgz
  directory: node_modules/@typescript-eslint/tsconfig-utils
  ref: df39dce644fa9198b64b0dfb4a556d917f25f34cd1c11bbb7c439a82abeeab6e
- kind: tar
  url: npm:@typescript-eslint/type-utils/-/type-utils-8.64.0.tgz
  directory: node_modules/@typescript-eslint/type-utils
  ref: 55c48a945dbcbc633f050fe19ab8abd70d897a63d79faac6b29a9214be3648be
- kind: tar
  url: npm:@typescript-eslint/types/-/types-8.64.0.tgz
  directory: node_modules/@typescript-eslint/types
  ref: b8666d624ff60297aad6453f8decac06784fb15b234e622d3aef996cdce4d5d4
- kind: tar
  url: npm:@typescript-eslint/typescript-estree/-/typescript-estree-8.64.0.tgz
  directory: node_modules/@typescript-eslint/typescript-estree
  ref: 03804f3db32fc4f283a29a8a3ff1b0e46e53617ef6fe8d5e6a64e81a8885b845
- kind: tar
  url: npm:balanced-match/-/balanced-match-4.0.4.tgz
  directory: node_modules/@typescript-eslint/typescript-estree/node_modules/balanced-match
  ref: 9025508d9125eee531bbc49ce3ae560183975ad595f058c378bd56af4152fb16
- kind: tar
  url: npm:brace-expansion/-/brace-expansion-5.0.7.tgz
  directory: node_modules/@typescript-eslint/typescript-estree/node_modules/brace-expansion
  ref: e6f29666db5a9503146d8fd93a2a492a64694bc819ce158b18c584610f240fba
- kind: tar
  url: npm:minimatch/-/minimatch-10.2.5.tgz
  directory: node_modules/@typescript-eslint/typescript-estree/node_modules/minimatch
  ref: a6cea46915bfc6c3fae60f9bd003ea4f9d6a4233aa59a9ca729474d3824ca9e5
- kind: tar
  url: npm:@typescript-eslint/utils/-/utils-8.64.0.tgz
  directory: node_modules/@typescript-eslint/utils
  ref: 9350ee9d90d19a1c8e79c1d5f0e790db3439214d03dcc280e24824c2cddd5b5c
- kind: tar
  url: npm:@typescript-eslint/visitor-keys/-/visitor-keys-8.64.0.tgz
  directory: node_modules/@typescript-eslint/visitor-keys
  ref: 97227c773c89b59112e4930bcda35e74224d1819e3b148343e0be07df462a222
- kind: tar
  url: npm:eslint-visitor-keys/-/eslint-visitor-keys-5.0.1.tgz
  directory: node_modules/@typescript-eslint/visitor-keys/node_modules/eslint-visitor-keys
  ref: cc0945290fe3cc73aa7f04b03cdc0704ca7ac8d805ff19f43fa3f9e5e0b6728d
- kind: tar
  url: npm:acorn/-/acorn-8.17.0.tgz
  directory: node_modules/acorn
  ref: afa83fff751e6c9739eea552d84328414d3860408f98ce5c7f3cc7e2a3996424
- kind: tar
  url: npm:acorn-jsx/-/acorn-jsx-5.3.2.tgz
  directory: node_modules/acorn-jsx
  ref: d967b05e40c5396a56d70e0d3150477b969cb6cc1058d68bc2b95ab0159158cc
- kind: tar
  url: npm:ajv/-/ajv-6.15.0.tgz
  directory: node_modules/ajv
  ref: f52192ad895dee468f1d1d5bf8972f7114e2459ff126632a1963e7bd2a38ed0a
- kind: tar
  url: npm:ansi-styles/-/ansi-styles-4.3.0.tgz
  directory: node_modules/ansi-styles
  ref: 2c539a46d85ab6033183997434d2d9a5ca2ceefc12b4db9022f564784cd7987f
- kind: tar
  url: npm:argparse/-/argparse-2.0.1.tgz
  directory: node_modules/argparse
  ref: 27903847fc8215e6fc5a33e81490f7baba66403f8aade33771b988cca097728c
- kind: tar
  url: npm:balanced-match/-/balanced-match-1.0.2.tgz
  directory: node_modules/balanced-match
  ref: d854f7abdd0c7a8120cf381e0ad5f972cbd0255f5d987424bd672c8c4fcebcc1
- kind: tar
  url: npm:brace-expansion/-/brace-expansion-1.1.16.tgz
  directory: node_modules/brace-expansion
  ref: b8bdb6fc99e1b90c066b3b8fd71f03178a3dd6594196e46f8caf0a4626ead1fa
- kind: tar
  url: npm:callsites/-/callsites-3.1.0.tgz
  directory: node_modules/callsites
  ref: 170242bd32bf6e70c8521caeaa375209ce9585273d346ac6245aecbe84e3c89d
- kind: tar
  url: npm:chalk/-/chalk-4.1.2.tgz
  directory: node_modules/chalk
  ref: e84c643aa53e87ace6c3d368b3cddda24a2d1434a06b6dfbdb628ad2107df90a
- kind: tar
  url: npm:color-convert/-/color-convert-2.0.1.tgz
  directory: node_modules/color-convert
  ref: 920fa43538c019a085dbbf04cb6f72cc337624e5f5217519f0e7b2ef784e7ce1
- kind: tar
  url: npm:color-name/-/color-name-1.1.4.tgz
  directory: node_modules/color-name
  ref: 507b7c4461e8eb941355af9a59e9a7e02cd0e7c6176b48d1809766344f3f1708
- kind: tar
  url: npm:concat-map/-/concat-map-0.0.1.tgz
  directory: node_modules/concat-map
  ref: 35902dd620cf0058c49ea614120f18a889d984269a90381b7622e79c2cfe4261
- kind: tar
  url: npm:cross-spawn/-/cross-spawn-7.0.6.tgz
  directory: node_modules/cross-spawn
  ref: 188c320cdc413adfec03098fda72af7a9b02152ba13d3a8f87f172d93ced38ea
- kind: tar
  url: npm:debug/-/debug-4.4.3.tgz
  directory: node_modules/debug
  ref: 89c1ac9c946ee8905a875837114528e97eeae35e03be3190584b2216af43e4a7
- kind: tar
  url: npm:deep-is/-/deep-is-0.1.4.tgz
  directory: node_modules/deep-is
  ref: 0c03aa83c6bf68e7c2cc2c5b5a2d732c1879e7711b08011b0bc48df10d10bf3c
- kind: tar
  url: npm:escape-string-regexp/-/escape-string-regexp-4.0.0.tgz
  directory: node_modules/escape-string-regexp
  ref: 4b44a14da6987a3c0585c2ff16b3800425732ff35cad710c65e72d7f8e33b11b
- kind: tar
  url: npm:eslint/-/eslint-9.39.5.tgz
  directory: node_modules/eslint
  ref: dd56c240fad33d417edc347c67949c8b429e560fe7d7e656085395f8774fe13a
- kind: tar
  url: npm:eslint-config-prettier/-/eslint-config-prettier-9.1.2.tgz
  directory: node_modules/eslint-config-prettier
  ref: 6e74d12d22368974335ae1c8841f2e78e93cadd8dc89268d37314a75b2a420c4
- kind: tar
  url: npm:eslint-plugin-prettier/-/eslint-plugin-prettier-5.5.6.tgz
  directory: node_modules/eslint-plugin-prettier
  ref: 59288cf2d16c345a7a086c0c90fe62d58e606b53b3723e3f54c2950da5b24424
- kind: tar
  url: npm:eslint-scope/-/eslint-scope-8.4.0.tgz
  directory: node_modules/eslint-scope
  ref: c3a28a402da98e9d83b9beb82c18a0194d78f1450cd84c0b1abc5621a1dddb4b
- kind: tar
  url: npm:eslint-visitor-keys/-/eslint-visitor-keys-4.2.1.tgz
  directory: node_modules/eslint-visitor-keys
  ref: b77834169546330fa6ff3ea00a2d66c0cc15a0873f01e6dc4e7b2244d569d74f
- kind: tar
  url: npm:espree/-/espree-10.4.0.tgz
  directory: node_modules/espree
  ref: 4a5bbaef81b350ba5918fdd06e2081834401bbca14051d2276497caf200971d7
- kind: tar
  url: npm:esquery/-/esquery-1.7.0.tgz
  directory: node_modules/esquery
  ref: 19136a1e7ef183bc0f9757197de4a9539a380b70b930d1673ab2eb4097ba7aa5
- kind: tar
  url: npm:esrecurse/-/esrecurse-4.3.0.tgz
  directory: node_modules/esrecurse
  ref: 3ecf9370d7296b47b570c88a11f70b35bb965af8d536536b259eb55f9b793b61
- kind: tar
  url: npm:estraverse/-/estraverse-5.3.0.tgz
  directory: node_modules/estraverse
  ref: 3e8d45da5b8085a4a8d51368ffead5b551a502c286978962a05d5c8e0d72fda6
- kind: tar
  url: npm:esutils/-/esutils-2.0.3.tgz
  directory: node_modules/esutils
  ref: c5adbd730a495a3c635bbae9ee5f693b95c7e13b395f7036efab8232c5f0640f
- kind: tar
  url: npm:fast-deep-equal/-/fast-deep-equal-3.1.3.tgz
  directory: node_modules/fast-deep-equal
  ref: b019a0980f27638dc3f85836b0e478f188e00d7a6e5852c0819fa86f56e47b8f
- kind: tar
  url: npm:fast-diff/-/fast-diff-1.3.0.tgz
  directory: node_modules/fast-diff
  ref: 77f602d83366f68f4dfb5dd9ba636933dc0047502da4d48d914d1d361c517d4a
- kind: tar
  url: npm:fast-json-stable-stringify/-/fast-json-stable-stringify-2.1.0.tgz
  directory: node_modules/fast-json-stable-stringify
  ref: 1e2df822c43e0a2b448e5df79bf8e6d3e085c86e30456cd383a2f96215fd1687
- kind: tar
  url: npm:fast-levenshtein/-/fast-levenshtein-2.0.6.tgz
  directory: node_modules/fast-levenshtein
  ref: bb4b50306b8b0f048475efddae11810e245937dca8ae85498ab4a171697bbf3c
- kind: tar
  url: npm:fdir/-/fdir-6.5.0.tgz
  directory: node_modules/fdir
  ref: 241ddcd9f31e2a1fca405326017dbb8333ce174198e887f0f96387c29f0d365e
- kind: tar
  url: npm:file-entry-cache/-/file-entry-cache-8.0.0.tgz
  directory: node_modules/file-entry-cache
  ref: 67ac5a6cea2268114a1f8935ca3ad60fe634fed04dd7914939bf24ceaa2d57b8
- kind: tar
  url: npm:find-up/-/find-up-5.0.0.tgz
  directory: node_modules/find-up
  ref: f4a64efb583769c09638d81963fd3f7aa883b632f9992a256de3fbe962ca75b4
- kind: tar
  url: npm:flat-cache/-/flat-cache-4.0.1.tgz
  directory: node_modules/flat-cache
  ref: e2085ae2b084792812a4f4102f6b4967e93cfda8457361b7debe610cf2aedaf0
- kind: tar
  url: npm:flatted/-/flatted-3.4.2.tgz
  directory: node_modules/flatted
  ref: f4daa3f36ec5b9e5d354fccbc9eeb876228c8bee3da6e279bf1fe98783fc8025
- kind: tar
  url: npm:glob-parent/-/glob-parent-6.0.2.tgz
  directory: node_modules/glob-parent
  ref: 345bb942f3be1fe234cab09ddc1df2c443cb2e84aaf5743c1862cf2b4e8d5066
- kind: tar
  url: npm:globals/-/globals-14.0.0.tgz
  directory: node_modules/globals
  ref: fabbac02995dca1c432f08c675f3b40f871edd8d0609ac580a66cd7064f88e6a
- kind: tar
  url: npm:has-flag/-/has-flag-4.0.0.tgz
  directory: node_modules/has-flag
  ref: 77a7eb1411d927bb8a5ca7069dbe168886d63c88f446f0b81500a2cf23ddb5b1
- kind: tar
  url: npm:ignore/-/ignore-5.3.2.tgz
  directory: node_modules/ignore
  ref: 8e9652205f5fca36dec78e11650ed998e639f5744600e1dbfc024cd627eed8bd
- kind: tar
  url: npm:import-fresh/-/import-fresh-3.3.1.tgz
  directory: node_modules/import-fresh
  ref: cd60f450e2b1a585d8f19c14307f0396f7920ecdc9f933b93d7c3473e6f74ff7
- kind: tar
  url: npm:imurmurhash/-/imurmurhash-0.1.4.tgz
  directory: node_modules/imurmurhash
  ref: ac23a031966a7371d192e35c7852ab31c772b7d4e468ddd886ad3c014372cb60
- kind: tar
  url: npm:is-extglob/-/is-extglob-2.1.1.tgz
  directory: node_modules/is-extglob
  ref: 8c5d4286146ad62fc1096981700ce1c22a167708926fca01f9ca74f9bb50bc19
- kind: tar
  url: npm:is-glob/-/is-glob-4.0.3.tgz
  directory: node_modules/is-glob
  ref: 3fe453fb193bb58f6f0505dfb1151230935380b5b55e1f9864261c2aafc1bec6
- kind: tar
  url: npm:isexe/-/isexe-2.0.0.tgz
  directory: node_modules/isexe
  ref: 47cfe872e088e28c53b736fef305324b57cc1cfc9f72a9b0f769f92731cb8359
- kind: tar
  url: npm:js-yaml/-/js-yaml-4.3.0.tgz
  directory: node_modules/js-yaml
  ref: 8594ee34496dd2e41ec934fd202843dc993be9ab2d7d5d47579146962fbdfae6
- kind: tar
  url: npm:json-buffer/-/json-buffer-3.0.1.tgz
  directory: node_modules/json-buffer
  ref: d1f7464db9713c5f73c919da72de334fce0bcbd76fb08727d36712ef5dfef5a5
- kind: tar
  url: npm:json-schema-traverse/-/json-schema-traverse-0.4.1.tgz
  directory: node_modules/json-schema-traverse
  ref: f735add93641842e13096c8b3239f54e9b0b10e8ffd8a377400f4d61eabec065
- kind: tar
  url: npm:json-stable-stringify-without-jsonify/-/json-stable-stringify-without-jsonify-1.0.1.tgz
  directory: node_modules/json-stable-stringify-without-jsonify
  ref: 5dbd60ac858b8eb9fb8219cd0dbe89cb866405749cbac90c2f8bc18acc77aeea
- kind: tar
  url: npm:keyv/-/keyv-4.5.4.tgz
  directory: node_modules/keyv
  ref: eb26f1c561e57af4a4365e6b54f5f3e745e3963747a93845af1f000a747b6098
- kind: tar
  url: npm:levn/-/levn-0.4.1.tgz
  directory: node_modules/levn
  ref: 1f4457d4df0f93521899c0fdee0263de0f243ecb90ea6bc6d744fadd132067d1
- kind: tar
  url: npm:locate-path/-/locate-path-6.0.0.tgz
  directory: node_modules/locate-path
  ref: 71d20b2743581b997191a760edc54df51dcea7c53b12c613cabc360f636d832a
- kind: tar
  url: npm:lodash.merge/-/lodash.merge-4.6.2.tgz
  directory: node_modules/lodash.merge
  ref: a34e27a950d64a15ee31c652ff1f29c29b42eadaace1d203c680ca314959ef96
- kind: tar
  url: npm:minimatch/-/minimatch-3.1.5.tgz
  directory: node_modules/minimatch
  ref: d81817ecf72de3c8c5d3724407752d943c9e1a42af5c437d9cb923be8a72c648
- kind: tar
  url: npm:ms/-/ms-2.1.3.tgz
  directory: node_modules/ms
  ref: f6616e15e530ed552f9daa2d3ce71963947c6bc7c98c9b64fd3e673fd02622c6
- kind: tar
  url: npm:natural-compare/-/natural-compare-1.4.0.tgz
  directory: node_modules/natural-compare
  ref: 5e5569ecd12064f73632a8c18a45b1d1de4a27b699a671864801f1c35ee779ee
- kind: tar
  url: npm:optionator/-/optionator-0.9.4.tgz
  directory: node_modules/optionator
  ref: a772bbe141b4af2c1e65f7530353cd6e978f0349067ea3dc2b0aac2428c2826b
- kind: tar
  url: npm:p-limit/-/p-limit-3.1.0.tgz
  directory: node_modules/p-limit
  ref: 36e6519736cafaa158dc1bca8137683f5bf1bc1c476d40519028b3f3a96bc9e0
- kind: tar
  url: npm:p-locate/-/p-locate-5.0.0.tgz
  directory: node_modules/p-locate
  ref: 2ec11480a90965a753b141be5432d24f4ca98860b844fd1b10cab0a1023423fc
- kind: tar
  url: npm:parent-module/-/parent-module-1.0.1.tgz
  directory: node_modules/parent-module
  ref: 607e83127ea471fdf079c501148a17936cb4137ec779ce6ec52f083f149ae407
- kind: tar
  url: npm:path-exists/-/path-exists-4.0.0.tgz
  directory: node_modules/path-exists
  ref: dbb535c9302ce9b3f777ece3ff055cc8d88890a1e1deddc045340aef76fb775c
- kind: tar
  url: npm:path-key/-/path-key-3.1.1.tgz
  directory: node_modules/path-key
  ref: 4b8999acb914830edcd3c5b8fec632b32c6bc759ac3edc86336f5a9e08ba7b92
- kind: tar
  url: npm:picomatch/-/picomatch-4.0.5.tgz
  directory: node_modules/picomatch
  ref: e89c478225a42b3793bb4a39fd576de142c9829c26a5bd71782249e48b112f51
- kind: tar
  url: npm:prelude-ls/-/prelude-ls-1.2.1.tgz
  directory: node_modules/prelude-ls
  ref: 14e8fc397f1f852ffda5bed29d012605add8866feff1790b388ad8f7abb8d291
- kind: tar
  url: npm:prettier/-/prettier-3.9.5.tgz
  directory: node_modules/prettier
  ref: e9525d1e389f8ab0543fef69d3af87a999db99dcb02a73dc9aeb93e3c48aebbe
- kind: tar
  url: npm:prettier-linter-helpers/-/prettier-linter-helpers-1.0.1.tgz
  directory: node_modules/prettier-linter-helpers
  ref: fd79698bb27357e89f6335aecda86a9fb7b40464fb76c4dac44473c29cf0f2f5
- kind: tar
  url: npm:punycode/-/punycode-2.3.1.tgz
  directory: node_modules/punycode
  ref: e4ce59f9fbac44349abab87279ab658f6b4614916bec5e088ae3be9323e193bb
- kind: tar
  url: npm:resolve-from/-/resolve-from-4.0.0.tgz
  directory: node_modules/resolve-from
  ref: 244228f4c2bdeb058f2ceaac25e22124897145c400a7267aaa0da37fc10021dc
- kind: tar
  url: npm:semver/-/semver-7.8.5.tgz
  directory: node_modules/semver
  ref: d85045d4300d7d57c891336b95df532e73f34c22ffcd222452b6d08b9d127d5d
- kind: tar
  url: npm:shebang-command/-/shebang-command-2.0.0.tgz
  directory: node_modules/shebang-command
  ref: 9acba5bd18a51e9cdf5898380e4df63f803e1844def64ae1a46f88cff86d556e
- kind: tar
  url: npm:shebang-regex/-/shebang-regex-3.0.0.tgz
  directory: node_modules/shebang-regex
  ref: fedbabaa6db26c6be0183f82777dfa852d59a62f8885de93bd32ebc28758958f
- kind: tar
  url: npm:strip-json-comments/-/strip-json-comments-3.1.1.tgz
  directory: node_modules/strip-json-comments
  ref: 0213fe6b1c1c470cf5c60ffca0d362142117c8e303ffbcabbd9a4c4700b6ceed
- kind: tar
  url: npm:supports-color/-/supports-color-7.2.0.tgz
  directory: node_modules/supports-color
  ref: f16acafd1634624e60c24a5538004c4e168c82607f10dbe28395e9df3e7d5e4a
- kind: tar
  url: npm:synckit/-/synckit-0.11.13.tgz
  directory: node_modules/synckit
  ref: 3e3ee301e44d9bea17a29dd936f9162bd9a5fd5ef8743466d5375cc3265fa96e
- kind: tar
  url: npm:tinyglobby/-/tinyglobby-0.2.17.tgz
  directory: node_modules/tinyglobby
  ref: afb4afae9175f8b873ac13e1d21cea0997a0bcb40c3598613a834490058cb562
- kind: tar
  url: npm:ts-api-utils/-/ts-api-utils-2.5.0.tgz
  directory: node_modules/ts-api-utils
  ref: 9fd0819602af4103a593d6def4a09a26446ec4c644246a511dc1cb3513d87994
- kind: tar
  url: npm:type-check/-/type-check-0.4.0.tgz
  directory: node_modules/type-check
  ref: 8035d10cc48e2692358ac06cbadfa795279aaf6b3c04f29bd322f6df09513f8e
- kind: tar
  url: npm:typescript/-/typescript-5.9.3.tgz
  directory: node_modules/typescript
  ref: 10e108c9cf7d5f2879053dff18515fb405abf2ccef63eaaf017d9c571687a1d3
- kind: tar
  url: npm:typescript-eslint/-/typescript-eslint-8.64.0.tgz
  directory: node_modules/typescript-eslint
  ref: 58b298b9748ccc407d1c23960c3a623395a17b1894d230270400876e11e83fab
- kind: tar
  url: npm:uri-js/-/uri-js-4.4.1.tgz
  directory: node_modules/uri-js
  ref: 5612de52afe83da73e66b519e83aa56aa81151c844b90bcf8e045df5ecec8d2d
- kind: tar
  url: npm:which/-/which-2.0.2.tgz
  directory: node_modules/which
  ref: a13adf5fddeb769655edce551e81fbb11904b9c9be76d95e41da8c4c499d4edc
- kind: tar
  url: npm:word-wrap/-/word-wrap-1.2.5.tgz
  directory: node_modules/word-wrap
  ref: d0d7cc3b19863faa09d3822d1386b6b62ccc4551f7190ffaa25c792bbaf59dec
- kind: tar
  url: npm:yocto-queue/-/yocto-queue-0.1.0.tgz
  directory: node_modules/yocto-queue
  ref: c772bceca58f20f0ea08ac6121ba385f55db715cd3c2c46b2b38d06d3c6129f1

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- core-deps/typescript.bst
- sdk/blueprint-compiler.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-bad.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-good.bst
