kind: import
description: An element to ensure that /usr/lib is always the priority linker path
sources:
- kind: local
  path: files/linker-priority
depends:
- junction: base/freedesktop-sdk-junction.bst
  filename: desktop-image.bst
