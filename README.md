# Google Speech Magisk Module

## DISCLAIMER
- Google apps are owned by Google LLC
- The MIT license specified here is for the Magisk Module only, not for Google apps.

## Descriptions
Speech app by Google LLC integrated as a Magisk Module for all supported and rooted devices with Magisk

## Sources
https://apkmirror.com com.google.android.tts by Google LLC

## Changelog

v0.6
- Prepare /storage/emulated/"$UID"/Android/data/$PKG/ directories
- Resets module folders/files permissions at post-fs-data
- Move _uninstall.log to /data/adb/logs/

v0.5
- Upgrade APK version googletts.google-speech-apk_20250623.02_p2.775877377 (210573084) for arm64-v8a variant

v0.4
- Abort installation if fail to mount mirror system

v0.3
- Update apk version
- Add Action button to clear app caches
- Fix extract libs
- Fix bug in uninstall.sh

v0.2
- Android Emulator support

v0.1
- Initial release

## Screenshots
https://t.me/androidryukimods/2443

## Requirements
- Android 8.0 (SDK 26) and up
- GApps installed
- Magisk or Kitsune Mask or KernelSU or Apatch installed

## Installation Guide & Download Link
- If you are using KernelSU, you need to disable Unmount Modules by Default in KernelSU app settings and install https://github.com/KernelSU-Modules-Repo/meta-overlayfs or https://github.com/KernelSU-Modules-Repo/magic_mount_rs or https://github.com/KernelSU-Modules-Repo/hybrid_mount or https://github.com/maxsteeel/nomount first depending on ROM compatibility
- Download the right module according to your device architecture:
  - arm64-v8a: https://bicolink.com/Ibyxo
  - armeabi-v7a: https://bicolink.com/D3OrAir
  - x86_64: https://bicolink.com/dV3vi0oyrB
  - x86: https://bicolink.com/TtkTup
- Install the module via Magisk app or Kitsune Mask app or KernelSU app or Apatch app or Recovery if Magisk or Kitsune Mask installed
- Reboot
- If you are using KernelSU, you need to allow superuser list manually all package name listed in package.txt (and your home launcher app also) (enable show system apps) and reboot afterwards
- To configure the settings, go to your Settings app, Accessiblity, Text-to-speech output.

## Download Tutorial
https://t.me/ryukinotes/97

## Optionals
Global: https://t.me/ryukinotes/35

## Troubleshootings
Global: https://t.me/ryukinotes/34

## Support & Bug Report
- https://t.me/ryukinotes/54
- If you don't do above, issues will be closed immediately

## Credits and Contributors
- @HuskyDG
- https://t.me/androidryukimodsdiscussions
- https://t.me/androidappsportdevelopment

## Sponsors
https://t.me/ryukinotes/25


