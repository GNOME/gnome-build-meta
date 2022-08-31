kind: import

sources:
- kind: local
  path: files/backgrounds/GnomeBackground.webp

depends: 
  - core/gnome-backgrounds.bst
  - custom/testing-wallpaper-override.bst

config:
  source: /
  target: /usr/share/backgrounds/gnome/