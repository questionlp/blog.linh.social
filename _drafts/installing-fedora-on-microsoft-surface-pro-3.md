---
layout: post
title:  "Installing Fedora on a Microsoft Surface Pro 3"
# date:   2024-02-26 12:05:00 -0800
tags:   hardware laptops linux
excerpt_separator: <!--more-->
---

```text
Invalid image
Failed to read header: Unsupported
Failed to load image: Unsupported
start_image() returned Unsupported
```

```bash
sudo dd bs=4M if=Fedora-KDE-Live-x86_64-39-1.5.iso of=/dev/sda status=progress oflag=sync
```

```bash
sudo mount /dev/sda2 /mnt
```

```bash
rpm2cpio shim-x64-15.4-5.x86_64.rpm | cpio -idmv 
```

```bash
cd /mnt/EFI/BOOT
sudo rm BOOTX64.EFI BOOTIA32.EFI grubia32.efi
sudo cp {Path to extracted shim-x64-15.4-5.x86_64.rpm}/boot/efi/EFI/BOOT/BOOTX64.EFI .
```

```text
../../grub-core/commands/efi/tpm.c:x:Unknown TPM error.
../../grub-core/commands/efi/tpm.c:x:Unknown TPM error.
../../grub-core/commands/efi/tpm.c:x:Unknown TPM error.
```
