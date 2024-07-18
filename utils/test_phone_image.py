'''
test_phone_image.py: Boots a mobile disk image and tests that it works as
                     expected.
'''

import argparse
import asyncio
import asyncio.subprocess
import logging
import sys
import os
import signal

PINEPHONE_PRO_DIALOGS = {
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
        'ID=org.gnome.os',

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

        # Check expected kernel configs
        'cat /proc/config.gz | gunzip > running.config',
        '#',

        # Check for goodix touchscreen config
        'cat running.config | grep GOODIX',
        'CONFIG_TOUCHSCREEN_GOODIX=',

        # Check touchscreen enabled config
        'cat running.config | grep TOUCHSCREEN',
        'CONFIG_INPUT_TOUCHSCREEN=',

        # Check for net_vendor_broadcom wifi config
        'cat running.config | grep NET_VENDOR',
        'CONFIG_NET_VENDOR_BROADCOM=',

        # Check for VIDEO_ROCKCHIP_ISP1 config
        'cat running.config | grep VIDEO_ROCKCHIP_ISP1',
        'CONFIG_VIDEO_ROCKCHIP_ISP1=',
        # Check for VIDEO_ROCKCHIP_RGA config
        'cat running.config | grep VIDEO_ROCKCHIP_RGA',
        'CONFIG_VIDEO_ROCKCHIP_RGA=',
        # Check for VIDEO_ROCKCHIP_VDEC config
        'cat running.config | grep VIDEO_ROCKCHIP_VDEC',
        'CONFIG_VIDEO_ROCKCHIP_VDEC=',
        # Check for VIDEO_HANTRO config
        'cat running.config | grep CONFIG_VIDEO_HANTRO',
        'CONFIG_VIDEO_HANTRO=',
        # Check for VIDEO_OV8858 config
        'cat running.config | grep VIDEO_OV8858',
        'CONFIG_VIDEO_OV8858=',
        # Check for VIDEO_IMX258 config
        'cat running.config | grep VIDEO_IMX258',
        'CONFIG_VIDEO_IMX258=',
        # Check for VIDEO_DW9714 config
        'cat running.config | grep VIDEO_DW9714',
        'CONFIG_VIDEO_DW9714=',

        # Check for ROCKCHIP_SARADC config
        'cat running.config | grep ROCKCHIP_SARADC',
        'CONFIG_ROCKCHIP_SARADC=',
        # Check for ROCKCHIP_MBOX config
        'cat running.config | grep ROCKCHIP_MBOX',
        'CONFIG_ROCKCHIP_MBOX=y',
        # Check for ROCKCHIP_THERMAL config
        'cat running.config | grep ROCKCHIP_THERMAL',
        'CONFIG_ROCKCHIP_THERMAL=',
        # Check for ROCKCHIP_RGB config
        'cat running.config | grep ROCKCHIP_RGB',
        'CONFIG_ROCKCHIP_RGB=y',

        # Check for CRYPTO_DEV_ROCKCHIP config
        'cat running.config | grep CRYPTO_DEV_ROCKCHIP',
        'CONFIG_CRYPTO_DEV_ROCKCHIP=',

        # Check for PHY_ROCKCHIP_DPHY_RX0 config
        'cat running.config | grep PHY_ROCKCHIP_DPHY_RX0',
        'CONFIG_PHY_ROCKCHIP_DPHY_RX0=',

        # Check for BACKLIGHT_CLASS_DEVICE config
        'cat running.config | grep BACKLIGHT_CLASS_DEVICE',
        'CONFIG_BACKLIGHT_CLASS_DEVICE=y',

        # Check for V4L2_FLASH_LED_CLASS config
        'cat running.config | grep V4L2_FLASH_LED_CLASS',
        'CONFIG_V4L2_FLASH_LED_CLASS=',

        # Check for INPUT_GPIO_VIBRA config
        'cat running.config | grep INPUT_GPIO_VIBRA',
        'CONFIG_INPUT_GPIO_VIBRA=',
        # Check for KEYBOARD_PINEPHONE config
        'cat running.config | grep KEYBOARD_PINEPHONE',
        'CONFIG_KEYBOARD_PINEPHONE=',

        # Check for DRM_PANEL_HIMAX_HX8394 config
        'cat running.config | grep DRM_PANEL_HIMAX_HX8394',
        'CONFIG_DRM_PANEL_HIMAX_HX8394=',

        # Check for LEDS_SGM3140 config
        'cat running.config | grep LEDS_SGM3140',
        'CONFIG_LEDS_SGM3140=',

        # Test poweroff
        'sudo shutdown now',
        'Power down'
    ]
}

PINEPHONE_DIALOGS = {
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
        'ID=org.gnome.os',
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
        # Check for goodix touchscreen config
        'cat running.config | grep GOODIX',
        'CONFIG_TOUCHSCREEN_GOODIX=',
        # Check touchscreen enabled config
        'cat running.config | grep TOUCHSCREEN',
        'CONFIG_INPUT_TOUCHSCREEN=',
        # Check for rtl8723cs wifi config
        'cat running.config | grep RTL8723CS',
        'CONFIG_RTL8723CS=',
        # Test poweroff
        'sudo shutdown now',
        'Power down'
    ]
}

FAILURE_TIMEOUT = 3600  # seconds
BUFFER_SIZE = 80  # how many characters to read at once
PINEPHONE_PRO_ARG = 'test-pinephone-pro-aarch64'
PINEPHONE_ARG = 'test-pinephone-aarch64'


def argument_parser(phone_model):
    parser = argparse.ArgumentParser(
        description="Execute {}".format(phone_model)
    )
    parser.add_argument('phone_model', help='determine phone to test',
                        choices=[PINEPHONE_PRO_ARG, PINEPHONE_ARG])
    if phone_model == PINEPHONE_PRO_ARG:
        parser.add_argument('--dialog', dest='dialog', default='default',
                            help='dialog to follow\
                                (valid values {}, default: default)'
                            .format(PINEPHONE_PRO_DIALOGS.keys()))
    else:
        parser.add_argument('--dialog', dest='dialog', default='default',
                            help='dialog to follow\
                                (valid values {}, default: default)'
                            .format(PINEPHONE_DIALOGS.keys()))
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


async def run_test(command, phone_model, dialog):
    if phone_model == PINEPHONE_PRO_ARG:
        dialog = PINEPHONE_PRO_DIALOGS[dialog]
    else:
        dialog = PINEPHONE_DIALOGS[dialog]
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


def main(phone_model):
    args = argument_parser(phone_model).parse_args()

    cmd = [
        'qemu-system-aarch64', '-nographic', '-machine',
        'virt,gic-version=max', '-m', '4096M', '-cpu', 'cortex-a72',
        '-smp', '8', '-netdev', 'user,id=vnet,hostfwd=:127.0.0.1:0-:22',
        '-device', 'virtio-net-pci,netdev=vnet',
        '-device', 'virtio-blk,drive=drive0,bootindex=0',
        '-drive', 'file=disk.img,format=raw,if=none,id=drive0,cache=writeback',
        '-drive', 'file=flash0.img,format=raw,if=pflash',
        '-drive', 'file=flash1.img,format=raw,if=pflash'
    ]

    loop = asyncio.new_event_loop()
    asyncio.set_event_loop(loop)

    qemu_task = loop.create_task(run_test(cmd, phone_model, args.dialog))
    loop.call_later(FAILURE_TIMEOUT, fail_timeout, qemu_task)
    loop.run_until_complete(qemu_task)
    loop.close()

    if qemu_task.result():
        return 0
    return 1


if __name__ == '__main__':
    ARG_SIZE = 2
    if len(sys.argv) != ARG_SIZE:
        raise Exception(
            'Required number of additional arguments: {}'.format(ARG_SIZE-1)
        )
    phone_model = str(sys.argv[1])
    result = main(phone_model)
    sys.exit(result)
