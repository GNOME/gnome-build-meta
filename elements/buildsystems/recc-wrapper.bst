kind: import

sources:
- kind: local
  path: files/recc-wrapper/recc-wrapper

config:
  target: /usr/recc/bin

runtime-depends:
- freedesktop-sdk.bst:components/buildbox.bst
- freedesktop-sdk.bst:public-stacks/runtime-gnu.bst

public:
  bst:
    integration-commands:
    - |
      for COMPILER in /usr/bin/{,*-}{cc,c++,gcc,g++,clang,clang++};
      do
        if [ -e $COMPILER ]; then
          ln -s recc-wrapper /usr/recc/bin/`basename $COMPILER`;
        fi
      done
