#!/usr/bin/env python3

import argparse

parser = argparse.ArgumentParser(description="URLs for GNOME test media")
group = parser.add_mutually_exclusive_group(required=True)
group.add_argument("--latest", action="store_true", help="Use latest")
group.add_argument("--tag", type=str, help="Specify tag")
group.add_argument("--pipeline", type=int, help="Specify pipeline ID")
parser.add_argument("--sysupdate", action="store_true", help="Use sysupdate variant")
parser.add_argument(
    "--kind", required=True, choices=["iso", "disk"], help="Specify kind (iso or disk)"
)

args = parser.parse_args()

version = args.tag or args.pipeline
if args.sysupdate:
    if args.latest:
        raise RuntimeError("No 'stable' version of sysupdate image, use `--pipeline`")
    if args.kind == "iso":
        print(f"https://os.gnome.org/download/{version}/gnome_os_sysupdate_installer_{version}-x86_64.iso")
    elif args.kind == "disk":
        print(f"https://os.gnome.org/download/{version}/disk_sysupdate_{version}-x86_64.img.xz")
else:
    if args.kind == "iso":
        if args.latest:
            print("https://os.gnome.org/download/latest/gnome_os_installer.iso")
        else:
            print(f"https://os.gnome.org/download/{version}/gnome_os_installer_{version}.iso")
    elif args.kind == "disk":
        if args.latest:
            print("https://os.gnome.org/download/latest/gnome_os_disk.img.xz")
        else:
            print(f"https://os.gnome.org/download/{version}/disk_{version}.img.xz")
