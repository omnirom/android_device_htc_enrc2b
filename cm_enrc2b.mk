#
# Copyright (C) 2012 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PACKAGE_OVERLAYS := device/htc/enrc2b/overlay

#Recovery

PRODUCT_COPY_FILES += \
    device/htc/enrc2b/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/enrc2b/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/enrc2b/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/enrc2b/recovery/sbin/power_test:recovery/root/sbin/power_test \
    device/htc/enrc2b/recovery/sbin/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

# Files needed for boot image
PRODUCT_COPY_FILES := \
    device/htc/enrc2b/ramdisk/init.rc:root/init.rc \
    device/htc/enrc2b/ramdisk/init.enrc2b.rc:root/init.enrc2b.rc \
    device/htc/enrc2b/ramdisk/init.usb.rc:root/init.usb.rc \
    device/htc/enrc2b/ramdisk/init.trace.rc:root/init.trace.rc \
    device/htc/enrc2b/ramdisk/init.scripts.sh:root/init.scripts.sh \
    device/htc/enrc2b/ramdisk/ueventd.rc:root/ueventd.rc \
    device/htc/enrc2b/ramdisk/ueventd.enrc2b.rc:root/ueventd.enrc2b.rc \
    device/htc/enrc2b/ramdisk/fstab.enrc2b:root/fstab.enrc2b


# Prebuilt Audio/GPS/Camera/Wi-Fi configs
PRODUCT_COPY_FILES += \
    device/htc/enrc2b/dsp/AIC3008_REG_DualMic_XA.csv:system/etc/AIC3008_REG_DualMic_XA.csv \
    device/htc/enrc2b/dsp/AIC3008_REG_DualMic.csv:system/etc/AIC3008_REG_DualMic.csv \
    device/htc/enrc2b/dsp/DSP_number.txt:system/etc/DSP_number.txt \
    device/htc/enrc2b/configs/nvcamera.conf:system/etc/nvcamera.conf \
    device/htc/enrc2b/configs/nvcamera_2nd.conf:system/etc/nvcamera_2nd.conf \
    device/htc/enrc2b/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/htc/enrc2b/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/htc/enrc2b/configs/gps.conf:system/etc/gps.conf \
    device/htc/enrc2b/configs/gps/gpsconfig.xml:system/etc/gps/gpsconfig.xml \
    device/htc/enrc2b/configs/gps/gpsconfig_release.xml:system/etc/gps/gpsconfig_release.xml \
    device/htc/enrc2b/configs/htcfs.conf:system/etc/htcfs.conf \
    device/htc/enrc2b/configs/hostapd.conf:system/etc/wifi/hostapd.conf \
    device/htc/enrc2b/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/htc/enrc2b/configs/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
    device/htc/enrc2b/configs/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/htc/enrc2b/configs/calibration:system/etc/calibration \
    device/htc/enrc2b/configs/asound.conf:system/etc/asound.conf \
    device/htc/enrc2b/configs/audio_policy.conf:system/etc/audio_policy.conf \
    device/htc/enrc2b/configs/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf \
    device/htc/enrc2b/configs/enctune.conf:system/etc/enctune.conf \
    device/htc/enrc2b/configs/sysctl.conf:system/etc/sysctl.conf \
    device/htc/enrc2b/configs/audio_effects.conf:system/etc/audio_effects.conf
   
# Vold.fstab
PRODUCT_COPY_FILES += \
    device/htc/enrc2b/vold.fstab:system/etc/vold.fstab

# Input device configeration files
# for remapped APP_SWITCH to MENU
#PRODUCT_COPY_FILES += \
    device/htc/enrc2b/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl

# properitary ones
#PRODUCT_COPY_FILES += \
    device/htc/enrc2b/proprietary/usr/keylayout/tegra-kbc.kl:system/usr/keylayout/tegra-kbc.kl \
    device/htc/enrc2b/proprietary/usr/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl \
    device/htc/enrc2b/proprietary/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/htc/enrc2b/proprietary/usr/idc/tv-touchscreen.idc:system/usr/idc/tv-touchscreen.idc \
    device/htc/enrc2b/proprietary/usr/idc/projector_input.idc:system/usr/idc/projector_input.idc

# Any prebuilt kernel modules
# maxwen: MUST BE BLADE MODULES!!!!
#PRODUCT_COPY_FILES += \
#        device/htc/enrc2b/modules/baseband_usb_chr.ko:system/lib/modules/baseband_usb_chr.ko \
#        device/htc/enrc2b/modules/baseband-xmm-power2.ko:system/lib/modules/baseband-xmm-power2.ko \
#        device/htc/enrc2b/modules/cdc-acm.ko:system/lib/modules/cdc-acm.ko \
#        device/htc/enrc2b/modules/bcmdhd.ko:system/lib/modules/bcmdhd.ko \
#        device/htc/enrc2b/modules/raw_ip_net.ko:system/lib/modules/raw_ip_net.ko \
#        device/htc/enrc2b/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko

# maxwen: init.d scripts that makes sure kernel modules 
# in /system/lib/modules are equal to /lib/modules
PRODUCT_COPY_FILES += \
        device/htc/enrc2b/scripts/01-module-check:system/etc/init.d/01-module-check
   
# patched zram scripts
PRODUCT_COPY_FILES += \
    device/htc/enrc2b/scripts/compcache:system/bin/compcache \
    device/htc/enrc2b/scripts/handle_compcache:system/bin/handle_compcache

# Hostapd
PRODUCT_COPY_FILES += \
    device/htc/enrc2b/hostap/hostapd:system/bin/hostapd

    
PRODUCT_PACKAGES += \
	hostapd_cli \
        calibrator

# video
PRODUCT_PACKAGES += \
	libstagefrighthw
	
# lights
PRODUCT_PACKAGES += \
	lights.tegra

# power
PRODUCT_PACKAGES += \
	power.tegra
        
#NFC
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_ndef \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    libtinyalsa \
    libaudioutils \
    libinvensense_mpl

# iw
PRODUCT_PACKAGES += \
    iw 

# pollyd
PRODUCT_PACKAGES += \
    Polly \
    pollyd

# other apps
PRODUCT_PACKAGES += \
    Apollo \
    DSPManager \
    libcyanogen-dsp \
    libncurses \
    bash \
    CMFileManager \
    PinyinIME \
    PerformanceTool \
    Torch \
    CellBroadcastReceiver \
    EndeavoruParts
    CMTorch

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    librs_jni 

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs \
    sdcard \
    libmtp

# for bugmailer
ifneq ($(TARGET_BUILD_VARIANT),user)
    PRODUCT_PACKAGES += send_bug
    PRODUCT_COPY_FILES += \
        system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
        system/extras/bugmailer/send_bug:system/bin/send_bug    
endif

# Permissions
PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
        frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
        frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
        frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
        frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
        frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
        frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
        frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
        frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
        frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
        frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
        frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
        frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
        frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
        frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
	    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

PRODUCT_PROPERTY_OVERRIDES += \
        ro.com.google.locationfeatures=1 \
        ro.setupwizard.enable_bypass=1 \
        dalvik.vm.execution-mode=int:jit \
        dalvik.vm.lockprof.threshold=500 \
        dalvik.vm.dexopt-flags=m=y \
        persist.sys.usb.config=mtp,adb \
        ro.adb.secure=0

# Cell Broadcasts
PRODUCT_PROPERTY_OVERRIDES += \
        ro.cellbroadcast.emergencyids=0-65534 

# Tegra 3 spacific overrides
PRODUCT_PROPERTY_OVERRIDES += \
	    persist.tegra.nvmmlite=1 \
        ro.vendor.extension_library=/system/lib/libhtc-opt2.so \
        tf.enable=y

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += en_GB xhdpi

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, vendor/htc/encr2b/enrc2b-vendor.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
