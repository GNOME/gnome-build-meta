#!/usr/bin/python3
# This saves extended attributes and permissions that BuildStream would lose

import argparse
import json
import os
import stat

parser = argparse.ArgumentParser()
parser.add_argument('--save', action='store_true')
parser.add_argument('backup')
parser.add_argument('root')
args = parser.parse_args()

def apply_one(doc, root, rel):
    p = os.path.join(root, rel)
    if rel in doc:
        data = doc[rel]
        mode = data.get('mode')
        if mode is not None:
            os.chmod(p, mode, follow_symlinks=False)
        for attribute, value in data.get('attributes', {}).items():
            os.setxattr(p, attribute, bytes.fromhex(value), flags=os.XATTR_CREATE, follow_symlinks=False)

def apply(doc, root):
    for dirpath, dirnames, filenames in os.walk(root):
        for d in dirnames:
            p = os.path.join(dirpath, d)
            if os.path.islink(p):
                continue
            apply_one(doc, root, os.path.relpath(p, root))
        for f in filenames:
            p = os.path.join(dirpath, f)
            if os.path.islink(p):
                continue
            apply_one(doc, root, os.path.relpath(p, root))

def retrieve_one(doc, root, rel):
    mode = None
    attributes = {}
    p = os.path.join(root, rel)
    st = os.lstat(p)
    if stat.S_ISREG(st.st_mode):
        if stat.S_IMODE(st.st_mode) != 0o755 and stat.S_IMODE(st.st_mode) != 0o644:
            mode = stat.S_IMODE(st.st_mode)
    elif stat.S_ISDIR(st.st_mode):
        if stat.S_IMODE(st.st_mode) != 0o755:
            mode = stat.S_IMODE(st.st_mode)
    else:
        return None
    for attribute in os.listxattr(p, follow_symlinks=False):
        value = os.getxattr(p, attribute, follow_symlinks=False)
        print(type(attribute))
        print(type(value))
        attributes[attribute] = value.hex()
    ret = {}
    if mode is not None:
        ret['mode'] = mode
        print('mode', rel, mode)
    if len(attributes) > 0:
        ret['attributes'] = attributes
        print('attrs', rel, attributes)
    if len(ret) > 0:
        doc[rel] = ret

def retrieve(root):
    doc = {}
    for dirpath, dirnames, filenames in os.walk(root):
        for d in dirnames:
            p = os.path.join(dirpath, d)
            if os.path.islink(p):
                continue
            retrieve_one(doc, root, os.path.relpath(p, root))
        for f in filenames:
            p = os.path.join(dirpath, f)
            if os.path.islink(p):
                continue
            retrieve_one(doc, root, os.path.relpath(p, root))
    return doc

if args.save:
    doc = retrieve(args.root)
    with open(args.backup, 'w') as f:
        json.dump(doc, f)
else:
    with open(args.backup, 'r') as f:
        apply(json.load(f), args.root)
