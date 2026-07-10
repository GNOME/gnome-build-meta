# Contributing to GNOME OS

This guide covers the GNOME OS-specific parts of contributing. Read the [contribution guide](./contributing.md) first for the general setup.

For [automated integration tests](#5-running-automated-integration-tests), you also need to install the [ssam_openqa](https://gitlab.gnome.org/sthursfield/ssam_openqa) tool manually like so:

```shell
cargo install --git https://gitlab.gnome.org/sthursfield/ssam_openqa.git
```

Or if you don't have a [rust](https://rustup.rs/) toolchain already setup, you could use the precompiled the binaries:

```shell
curl -Lo ~/.local/bin/ssam_openqa "https://gitlab.gnome.org/api/v4/projects/sthursfield%2Fssam_openqa/packages/generic/$(uname -m)-unknown-linux-gnu/$(curl "https://gitlab.gnome.org/api/v4/projects/sthursfield%2Fssam_openqa/packages?package_name=$(uname -m)-unknown-linux-gnu&sort=desc" | jq -r '.[0].version')/ssam_openqa"
chmod +x ~/.local/bin/ssam_openqa
```

The [TigerVNC viewer](https://flathub.org/apps/org.tigervnc.vncviewer) can be helpful in order to follow along as the automated integration tests are running. Field Monitor and Remote Viewer can not connect to the VNC server used for the automated integration tests.

## 1. Setting up secure boot keys

Before building images, you need to generate secure boot keys. For fast local development, you can use the `snakeoil` keys; these are the same keys CI/CD uses, which means that you can re-use the CI/CD caches for your local builds instead of rebuilding everything from source. Keep in mind however that these keys are publicly known and as a result provide zero security. To use them, run the following:

```shell
make -C files/boot-keys clean
make -C files/boot-keys IMPORT_MODE=snakeoil
```

If you want to deploy your local builds to your system, use the `local` import mode, which uses the `snakeoil` keys for the bootloader components but generates random keys for all other components by running the following:

```shell
make -C files/boot-keys clean
make -C files/boot-keys IMPORT_MODE=local
```

You can also generate completely fresh keys, which causes all components to be rebuilt by running the following:

```shell
make -C files/boot-keys clean
make -C files/boot-keys
```

For more information on the secure boot keys, see the [secure boot keys guide](./keys.md).

## 2. Building and booting a GNOME OS image

If you're already running GNOME OS (e.g. if you installed it by using the [prebuilt images](https://os.gnome.org/)) and want to deploy your changes to it directly, you can skip this step and jump directly to the [Rebuilding GNOME OS with your changes and deploying them](#4-rebuilding-gnome-os-with-your-changes-and-deploying-them) section instead

### 2.1 Option 1: In a virtual machine

First, build and serve a local sysupdate repository in a separate terminal so the virtual machine can later enable the `devel` extension and others:

```shell
utils/run-sysupdate-repo.sh --devel # Append `--same-version` to avoid rebuilding the whole chain on the next run
```

Then, in another terminal, build and start a virtual machine with secure boot and a TPM by running the following; if you didn't already generate the secure boot keys in [Setting up secure boot keys](#1-setting-up-secure-boot-keys), they will be generated automatically:

```shell
./utils/run-secure-vm.sh --gtk --debug-systemd --local-updates # Append `--rebuild-iso --reset-installed --reset-secure-state` to rebuild the image and completely reset the virtual machine, or drop `--gtk` to use a SPICE display (e.g. Field Monitor or Remote Viewer) instead
```

You can find more options with `--help`. The virtual machine image and state can be found at `./current-secure-vm/`; the GTK display will open and allow you to interact with the virtual machine. The SSH command (and SPICE address, if enabled) to connect to the virtual machine will be printed to your console.

### 2.2 Option 2: On physical hardware

First, generate the secure boot keys as described in [Setting up secure boot keys](#1-setting-up-secure-boot-keys). Then build the ISO by running the following:

```shell
bst build gnomeos/live-image.bst
bst artifact checkout gnomeos/live-image.bst --directory ./iso
```

The ISO can be found at `./iso/disk.iso`.

You can now write the ISO to a USB stick and boot from it on physical hardware, or manually boot from it in a virtual machine.

We also [experimentally support some Android phones](./phones.md). Installation on those devices requires special steps and some things may not work, so please consult the linked documentation.

## 3. Installing your locally built GNOME OS image to disk

If you have secure boot enabled, `systemd-boot` will offer to auto-enroll the secure boot keys on the first boot.

After booting, you should install GNOME OS to disk by following the [install section in the installation guide](./install.md#install).

## 4. Rebuilding GNOME OS with your changes and deploying them

While it's possible to rebuild the GNOME OS images on each change and reinstall them each time you make changes, this leads to a very slow iteration cycle and is not recommended. Instead, use the `systemd-sysext` and/or `systemd-sysupdate` workflows described in the following sections to build and deploy your changes to your local workstation, a remote machine, or a virtual machine in a much faster way.

The following uses `$SSH_ARGS` as placeholder SSH arguments when targeting a virtual machine or a remote machine. For a virtual machine started with `./utils/run-secure-vm.sh`, use the arguments printed after running `./utils/run-secure-vm.sh` (e.g. `export SSH_ARGS="-i ssh/ephemeral -o IdentitiesOnly=yes root@vsock/777"`). For a remote machine, set `export SSH_ARGS="user@remote-machine-hostname-or-ip"`.

### 4.1 Option 1: By building and installing a system extension (`systemd-sysext`)

This option works best if you want to temporarily and quickly deploy your changes to your local workstation, a remote machine, or a virtual machine. No reboot is required to see your changes in action. The one component that can't be iterated on with system extensions is the kernel. For that, use the [`systemd-sysupdate` option](#42-option-2-by-building-serving-and-updating-from-a-local-sysupdate-repository-systemd-sysupdate) instead.

While this works for any of the included apps too, not just system components, iterating on apps directly using Flatpak via for example [GNOME Builder](https://apps.gnome.org/Builder/) or [Foundry](https://gitlab.gnome.org/GNOME/foundry) is preferred.

First, open a workspace for the component you want to work on as described in [Making changes](./contributing.md#3-making-changes). Then, each time you want to build a system extension with your changes, run the following:

```shell
sysext-build-element --verbose zz-gnome-control-center core/gnome-control-center.bst
```

The system extension should now be available at `./zz-gnome-control-center.sysext.raw`.

System extensions are applied alphabetically, so you want to prefix them (as we did above with `zz-`) in order to avoid being overwritten by other system extensions that will be loaded.

<details>
<summary>Expand instructions for deploying to your local workstation</summary>

To deploy the system extension on your local workstation, run the following:

```shell
run0 sysext-add --persistent zz-gnome-control-center.sysext.raw
run0 systemd-sysext refresh --force
```

If the component includes systemd units, reload the daemon by running the following:

```shell
run0 systemctl daemon-reload
```

To remove the system extension from your local workstation, run the following:

```shell
run0 rm /var/lib/extensions/zz-gnome-control-center.sysext.raw
run0 systemd-sysext refresh --force
```

</details>

<details>
<summary>Expand instructions for deploying to a virtual or remote machine</summary>

First, enable the `devel` extension to get `sysext-add` (skip this step if it's already enabled):

On a virtual machine, enabling the `devel` extension pulls from the local sysupdate repository, so `utils/run-sysupdate-repo.sh --devel` must be running as described in [In a virtual machine](#21-option-1-in-a-virtual-machine).

```shell
ssh $SSH_ARGS run0 updatectl enable devel --now
ssh $SSH_ARGS run0 systemd-sysext refresh --force
```

Then copy the system extension to the target. For a **remote machine** use `scp`:

```shell
scp zz-gnome-control-center.sysext.raw $SSH_ARGS:/tmp/
```

For a **virtual machine**, `scp` can't parse the vsock address, so pipe the file over `ssh` instead:

```shell
$ ssh $SSH_ARGS "cat > /tmp/zz-gnome-control-center.sysext.raw" < zz-gnome-control-center.sysext.raw
```

Then apply the system extension by running the following:

```shell
ssh $SSH_ARGS run0 sysext-add --persistent /tmp/zz-gnome-control-center.sysext.raw
ssh $SSH_ARGS run0 systemd-sysext refresh --force
```

If the component includes systemd units, reload the daemon by running the following:

```shell
ssh $SSH_ARGS run0 systemctl daemon-reload
```

To remove the system extension from the target, run the following:

```shell
ssh $SSH_ARGS run0 sysext-remove zz-gnome-control-center.sysext.raw
ssh $SSH_ARGS run0 systemd-sysext refresh --force
```

</details>

### 4.2 Option 2: By building, serving and updating from a local sysupdate repository (`systemd-sysupdate`)

This option works best if you want to permanently deploy your changes to your local workstation, a remote machine, or a virtual machine. A reboot is required to see your changes in action. Unlike with the [`systemd-sysext` option](#41-option-1-by-building-and-installing-a-system-extension-systemd-sysext), this option can be used to iterate on the kernel.

First, open a workspace for the component you want to work on as described in [Making changes](./contributing.md#3-making-changes). Then, each time you want to build a `systemd-sysupdate` image with your changes and serve it from a local repository, run the following:

```shell
utils/run-sysupdate-repo.sh --devel # Append `--same-version` to avoid rebuilding the whole chain on the next run
```

In a second terminal, configure `systemd-sysupdate` to use the local repository and update to the images you've built.

<details>
<summary>Expand instructions for updating your local workstation</summary>

To configure your local workstation to use the local repository and update, run the following:

```shell
run0 utils/enable-local-repo.sh --local
updatectl update host@l.1 # Without passing `--same-version` to run-sysupdate-repo.sh, the number after `l.` increments on each run
systemctl reboot
```

After rebooting, select the new version (`l.1`) from the `systemd-boot` menu. If you're using disk encryption, at the TPM PIN prompt enter your disk recovery key, not your TPM PIN.

</details>

<details>
<summary>Expand instructions for updating a virtual or remote machine</summary>

If you're targeting a virtual machine started with `./utils/run-secure-vm.sh --local-updates`, the local repository is already enabled, so you can skip the copy and `enable-local-repo.sh` steps below and go straight to `updatectl update`.

Otherwise, copy `utils/` and `files/boot-keys/` to the target. For a **remote machine**, use `scp`:

```shell
ssh $SSH_ARGS mkdir -p /tmp/gnome-build-meta
scp -r utils/ files/boot-keys/ $SSH_ARGS:/tmp/gnome-build-meta/
```

For a **virtual machine**, `scp` can't parse the vsock address, so pipe a tar stream over `ssh` instead:

```shell
tar -cf - utils/ files/boot-keys/ | ssh $SSH_ARGS "mkdir -p /tmp/gnome-build-meta && tar -xf - -C /tmp/gnome-build-meta"
```

Then enable the local repository. For a **remote machine** point at the host serving the repository:

```shell
ssh $SSH_ARGS run0 /tmp/gnome-build-meta/utils/enable-local-repo.sh --pubring /tmp/gnome-build-meta/files/boot-keys/import-pubring.pgp http://your-hostname-or-ip:8080
```

For a **virtual machine**, point at the QEMU user-networking gateway to the host:

```shell
ssh $SSH_ARGS run0 /tmp/gnome-build-meta/utils/enable-local-repo.sh --pubring /tmp/gnome-build-meta/files/boot-keys/import-pubring.pgp http://10.0.2.2:8080
```

Finally, update and reboot:

```shell
ssh $SSH_ARGS run0 updatectl update host@l.1 # Without passing `--same-version` to run-sysupdate-repo.sh, the number after `l.` increments on each run
ssh $SSH_ARGS run0 systemctl reboot
```

After rebooting, select the new version (`l.1`) from the `systemd-boot` menu. If the target uses disk encryption, at the TPM PIN prompt enter your disk recovery key, not your TPM PIN.

</details>

To configure `systemd-sysupdate` to no longer use your local repository:

<details>
<summary>Expand instructions for cleaning up your local workstation</summary>

On your local workstation, run the following:

```shell
run0 utils/enable-local-repo.sh --clean
```

</details>

<details>
<summary>Expand instructions for cleaning up a virtual or remote machine</summary>

On a virtual machine not started with `./utils/run-secure-vm.sh --local-updates`, or on a remote machine, run the following:

```shell
ssh $SSH_ARGS run0 /tmp/gnome-build-meta/utils/enable-local-repo.sh --clean
```

</details>

## 5. Running automated integration tests

The automated integration tests, which also run in CI/CD, can be used to make sure that your changes didn't break anything that already exists. To get started, fetch the test code and needles:

```shell
git clone https://gitlab.gnome.org/gnome/openqa-utils tests/openqa/utils
git clone https://gitlab.gnome.org/gnome/openqa-needles tests/openqa/needles
```

Then build the ISO as described in [On physical hardware](#22-option-2-on-physical-hardware). The ISO is required because the tests run in a virtual machine. Once the ISO is ready, convert it to an image by running the following:

```shell
run0 ./utils/to-raw.sh ./iso/disk.iso ./iso/disk.img
run0 ./tests/openqa/utils/expand_disk.sh ./iso/disk.img 12 GB
```

Next, start the automated integration tests:

```shell
rm -rf ./iso/test-output
ssam_openqa run --hdd-path ./iso/disk.img --iso-path ./iso/disk.iso --tests-path ./tests/openqa --output-path ./iso/test-output
```

To debug tests interactively or follow along as they are running, press <kbd>Ctrl</kbd>+<kbd>C</kbd>, and enter `t` to get the TigerVNC command you can use to connect. You can then enter `c` to continue or `a` to abort. To connect with TigerVNC, run the following, replacing the example command below with the one printed after entering `t`:

```shell
flatpak run org.tigervnc.vncviewer localhost:43681 -Shared -ViewOnly
```

For more information on OpenQA, see [End-to-end tests for GNOME OS](../tests/openqa/README.md).

## 6. Troubleshooting

For common troubleshooting steps, see the [debugging guide](./debugging.md).

## 7. Opening a merge request with your changes

See [Opening a merge request with your changes](./contributing.md#4-opening-a-merge-request-with-your-changes).
