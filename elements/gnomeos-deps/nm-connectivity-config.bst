kind: import

sources:
- kind: local
  path: files/nm-connectivity-config/connectivity.conf

config:
  target: "%{indep-libdir}/NetworkManager/conf.d"
