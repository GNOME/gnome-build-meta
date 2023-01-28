"""test_pinephone_image.py: Boots a PinePhone disk image and tests that it works."""

import argparse
import asyncio
import asyncio.subprocess
import logging
import sys
import os
import signal

FAILURE_TIMEOUT = 3600  # seconds
BUFFER_SIZE = 80  # how many characters to read at once

DIALOGS = {
    'default':
    [
        # Login
        'login:',
        'root',
        'Password:',
        'root',
        '#',
        # Check release
        'cat /etc/os-release',
        'ID=org.gnome.gnomeos',
        # Modem status
        'eg25-manager',
        '#',  # currently errors
        # Check usb utils
        'lsusb',
        '#',  # Output irrelevant
        # Check iw
        'iw',
        '#',  # Output irrelevant
        # Check atinout
        'atinout',
        '#',  # No modem in VM
        # Check iputils
        'timeout 15 ping 127.0.0.1',
        '#',
        'timeout 15 tracepath 127.0.0.1',
        '#',
        'timeout 15 clockdiff 127.0.0.1',
        '#',
        # Test calls and feedbackd
        'fbcli',
        'Triggering feedback for event \'phone-incoming-call\'',
        # Check kernel config
        'cat /proc/config.gz | gunzip > running.config',
        '#',
        'cat running.config | grep GOODIX',  # Check for goodix touchscreen config
        'CONFIG_TOUCHSCREEN_GOODIX=m',
        'cat running.config | grep TOUCHSCREEN',  # Check touchscreen enabled config
        'CONFIG_INPUT_TOUCHSCREEN=y',
        'cat running.config | grep RTL8723CS',  # Check for rtl8723cs wifi config
        'CONFIG_RTL8723CS=m',
        # Test poweroff
        'sudo shutdown now',
        'Power down'
    ]
}


def argument_parser():
    parser = argparse.ArgumentParser(
        description="Test that PinePhone image works as expected")
    parser.add_argument('--dialog', dest='dialog', default='default',
                        help='dialog to follow\
                            (valid values {}, default: default)'
                        .format(DIALOGS.keys()))

    return parser


async def await_line(stream, marker):
    """Read from 'stream' until a line appears contains 'marker'."""
    marker = marker.encode("utf-8")
    buf = b""

    while not stream.at_eof():
        chunk = await stream.read(BUFFER_SIZE)
        sys.stdout.buffer.write(chunk)
        buf += chunk
        lines = buf.split(b'\n')
        for line in lines:
            if marker in line:
                try:
                    return line.decode("utf-8")
                except UnicodeDecodeError:
                    break
        buf = lines[-1]


async def run_test(command, dialog):
    dialog = DIALOGS[dialog]

    logging.debug("Starting process: {}", command)
    process = await asyncio.create_subprocess_exec(
        *command,
        stdin=asyncio.subprocess.PIPE,
        stdout=asyncio.subprocess.PIPE,
        start_new_session=True)

    success = False
    try:
        while dialog:
            prompt = await await_line(process.stdout, dialog.pop(0))

            assert prompt is not None
            if dialog:
                process.stdin.write(dialog.pop(0).encode('ascii') + b'\n')

        print("Test successful")
        success = True
    except asyncio.CancelledError:
        # Move straight to killing the process group
        pass
    finally:
        try:
            os.killpg(os.getpgid(process.pid), signal.SIGKILL)
        except ProcessLookupError:
            pass

    await process.communicate()
    await process.wait()
    return success


def fail_timeout(qemu_task):
    sys.stderr.write("Test failed as timeout of %i seconds was reached.\n" %
                     FAILURE_TIMEOUT)
    qemu_task.cancel()


def main():
    args = argument_parser().parse_args()

    command = ['qemu-system-aarch64', '-enable-kvm', '-nographic', '-machine', 'virt,gic-version=max', '-m', '512M', '-cpu', 'max', '-smp', '4',
               '-netdev', 'user,id=vnet,hostfwd=:127.0.0.1:0-:22', '-device', 'virtio-net-pci,netdev=vnet',
               '-drive', 'file=disk.img,format=raw,if=none,id=drive0,cache=writeback', '-device', 'virtio-blk,drive=drive0,bootindex=0',
               '-drive', 'file=flash0.img,format=raw,if=pflash', '-drive', 'file=flash1.img,format=raw,if=pflash']

    loop = asyncio.get_event_loop()
    qemu_task = loop.create_task(run_test(command, args.dialog))
    loop.call_later(FAILURE_TIMEOUT, fail_timeout, qemu_task)
    loop.run_until_complete(qemu_task)
    loop.close()

    if qemu_task.result():
        return 0
    return 1


if __name__ == '__main__':
    result = main()
    sys.exit(result)
