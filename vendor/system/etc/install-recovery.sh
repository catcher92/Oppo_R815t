#!/system/bin/sh
if ! applypatch -c EMMC:recovery:7567360:7faf15506f4f3ecb3b130e044420658b491155ae; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:boot:4956160:2c2951fa438586ae336c09808e4cbedfe752e1c9 EMMC:recovery 7faf15506f4f3ecb3b130e044420658b491155ae 7567360 2c2951fa438586ae336c09808e4cbedfe752e1c9:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
