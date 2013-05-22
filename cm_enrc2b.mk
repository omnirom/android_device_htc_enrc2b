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
    
  # Prebuilt Alsa configs
PRODUCT_COPY_FILES += \
    device/htc/enrc2b/usr/share/alsa/alsa.conf:system/usr/share/alsa/alsa.conf \
    device/htc/enrc2b/usr/share/alsa/cards/aliases.conf:system/usr/share/alsa/cards/aliases.conf \
    device/htc/enrc2b/usr/share/alsa/pcm/center_lfe.conf:system/usr/share/alsa/pcm/center_lfe.conf \
    device/htc/enrc2b/usr/share/alsa/pcm/default.conf:system/usr/share/alsa/pcm/default.conf \
    device/htc/enrc2b/usr/share/alsa/pcm/dmix.conf:system/usr/share/alsa/pcm/dmix.conf \
    device/htc/enrc2b/usr/share/alsa/pcm/dpl.conf:system/usr/share/alsa/pcm/dpl.conf \
    device/htc/enrc2b/usr/share/alsa/pcm/dsnoop.conf:system/usr/share/alsa/pcm/dsnoop.conf \
    device/htc/enrc2b/usr/share/alsa/pcm/front.conf:system/usr/share/alsa/pcm/front.conf \
    device/htc/enrc2b/usr/share/alsa/pcm/iec958.conf:system/usr/share/alsa/pcm/iec958.conf \
    device/htc/enrc2b/usr/share/alsa/pcm/modem.conf:system/usr/share/alsa/pcm/modem.conf \
    device/htc/enrc2b/usr/share/alsa/pcm/rear.conf:system/usr/share/alsa/pcm/rear.conf \
    device/htc/enrc2b/usr/share/alsa/pcm/side.conf:system/usr/share/alsa/pcm/side.conf \
    device/htc/enrc2b/usr/share/alsa/pcm/surround40.conf:system/usr/share/alsa/pcm/surround40.conf \
    device/htc/enrc2b/usr/share/alsa/pcm/surround41.conf:system/usr/share/alsa/pcm/surround41.conf \
    device/htc/enrc2b/usr/share/alsa/pcm/surround50.conf:system/usr/share/alsa/pcm/surround50.conf \
    device/htc/enrc2b/usr/share/alsa/pcm/surround51.conf:system/usr/share/alsa/pcm/surround51.conf \
    device/htc/enrc2b/usr/share/alsa/pcm/surround71.conf:system/usr/share/alsa/pcm/surround71.conf

# Vold.fstab
PRODUCT_COPY_FILES += \
    device/htc/enrc2b/vold.fstab:system/etc/vold.fstab

# Input device configeration files
# for remapped APP_SWITCH to MENU
PRODUCT_COPY_FILES += \
    device/htc/enrc2b/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl

# properitary ones
PRODUCT_COPY_FILES += \
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

#Vendor Section Start#

PRODUCT_COPY_FILES += \
    device/htc/enrc2b/proprietary/bin/agpsd:system/bin/agpsd \
    device/htc/enrc2b/proprietary/bin/hdmid:system/bin/hdmid \
    device/htc/enrc2b/proprietary/bin/glgps:system/bin/glgps \
    device/htc/enrc2b/proprietary/bin/gpslogd:system/bin/gpslogd \
    device/htc/enrc2b/proprietary/bin/atpipe_plain:system/bin/atpipe_plain \
    device/htc/enrc2b/proprietary/bin/cand:system/bin/cand \
    device/htc/enrc2b/proprietary/bin/fild:system/bin/fild \
    device/htc/enrc2b/proprietary/bin/getnvm.sh:system/bin/getnvm.sh \
    device/htc/enrc2b/proprietary/bin/rild:system/bin/rild \
    device/htc/enrc2b/proprietary/bin/tf_daemon:system/bin/tf_daemon \
    device/htc/enrc2b/proprietary/bin/hdmid:system/bin/hdmid \
    device/htc/enrc2b/proprietary/bin/htcbatt:system/bin/htcbatt \
    device/htc/enrc2b/proprietary/bin/mtpd:system/bin/mtpd \
    device/htc/enrc2b/proprietary/bin/InjectionTool:system/bin/InjectionTool \
    device/htc/enrc2b/proprietary/bin/gsm0710muxd:system/bin/gsm0710muxd \
    device/htc/enrc2b/proprietary/bin/make_sec_bin:system/bin/make_sec_bin \
    device/htc/enrc2b/proprietary/bin/mknod:system/bin/mknod \
    device/htc/enrc2b/proprietary/bin/nvm_client:system/bin/nvm_client \
    device/htc/enrc2b/proprietary/bin/nvm_server:system/bin/nvm_server \
    device/htc/enrc2b/proprietary/bin/poweron_modem_fls.sh:system/bin/poweron_modem_fls.sh \
    device/htc/enrc2b/proprietary/bin/poweron_modem_hboot.sh:system/bin/poweron_modem_hboot.sh \
    device/htc/enrc2b/proprietary/bin/poweroff_modem.sh:system/bin/poweroff_modem.sh \
    device/htc/enrc2b/proprietary/bin/logcat2:system/bin/logcat2 \
    device/htc/enrc2b/proprietary/bin/getnvm.sh:system/bin/getnvm.sh \
    device/htc/enrc2b/proprietary/bin/hdcp_test:system/bin/hdcp_test \
    device/htc/enrc2b/proprietary/bin/nvtest:system/bin/nvtest \
    device/htc/enrc2b/proprietary/etc/nfcee_access.xml:system/etc/nfcee_access.xml \
    device/htc/enrc2b/proprietary/bin/DxDrmServerIpc:system/bin/DxDrmServerIpc \
    device/htc/enrc2b/proprietary/bin/htcfs:system/bin/htcfs \
    device/htc/enrc2b/proprietary/etc/voicemail-conf.xml:system/etc/voicemail-conf.xml \
    device/htc/enrc2b/proprietary/bin/IMCdownload:system/bin/IMCdownload \
    device/htc/enrc2b/proprietary/bin/htc_ebdlogd:system/bin/htc_ebdlogd \
    device/htc/enrc2b/proprietary/etc/uilock.yuv:system/etc/uilock.yuv

PRODUCT_COPY_FILES += \
    device/htc/enrc2b/proprietary.IceColdJelly/lib/libnvwinsys.so:system/lib/libnvwinsys.so

# sensors prop files - doesnt work if build from source!
PRODUCT_COPY_FILES += \
    device/htc/enrc2b/proprietary/lib/libmllite.so:system/lib/libmllite.so \
    device/htc/enrc2b/proprietary/lib/libmlplatform.so:system/lib/libmlplatform.so \
    device/htc/enrc2b/proprietary/lib/libmpl.so:system/lib/libmpl.so \
    device/htc/enrc2b/proprietary/lib/libmpl_jni.so:system/lib/libmpl_jni.so

PRODUCT_COPY_FILES += \
    device/htc/enrc2b/proprietary/lib/egl/libEGL_perfhud.so:system/lib/egl/libEGL_perfhud.so \
    device/htc/enrc2b/proprietary/lib/egl/libEGL_tegra.so:system/lib/egl/libEGL_tegra.so \
    device/htc/enrc2b/proprietary/lib/egl/libEGL_tegra_impl.so:system/lib/egl/libEGL_tegra_impl.so \
    device/htc/enrc2b/proprietary/lib/egl/libGLESv1_CM_perfhud.so:system/lib/egl/libGLESv1_CM_perfhud.so \
    device/htc/enrc2b/proprietary/lib/egl/libGLESv1_CM_tegra.so:system/lib/egl/libGLESv1_CM_tegra.so \
    device/htc/enrc2b/proprietary/lib/egl/libGLESv1_CM_tegra_impl.so:system/lib/egl/libGLESv1_CM_tegra_impl.so \
    device/htc/enrc2b/proprietary/lib/egl/libGLESv2_perfhud.so:system/lib/egl/libGLESv2_perfhud.so \
    device/htc/enrc2b/proprietary/lib/egl/libGLESv2_tegra.so:system/lib/egl/libGLESv2_tegra.so \
    device/htc/enrc2b/proprietary/lib/egl/libGLESv2_tegra_impl.so:system/lib/egl/libGLESv2_tegra_impl.so \
    device/htc/enrc2b/proprietary/lib/hw/hwcomposer.tegra.so:system/lib/hw/hwcomposer.tegra.so \
    device/htc/enrc2b/proprietary/lib/hw/gralloc.tegra.so:system/lib/hw/gralloc.tegra.so \
    device/htc/enrc2b/proprietary/lib/hw/gralloc.default.so:system/lib/hw/gralloc.default.so \
    device/htc/enrc2b/proprietary/lib/hw/gps.tegra.so:system/lib/hw/gps.tegra.so \
    device/htc/enrc2b/proprietary/lib/hw/audio.primary.tegra.so:system/lib/hw/audio.primary.tegra.so \
    device/htc/enrc2b/proprietary/lib/hw/audio_policy.tegra.so:system/lib/hw/audio_policy.tegra.so \
    device/htc/enrc2b/proprietary/lib/hw/camera.tegra.so:system/lib/hw/camera.tegra.so \
    device/htc/enrc2b/proprietary/lib/hw/sensors.enrc2b.so:system/lib/hw/sensors.enrc2b.so \
    device/htc/enrc2b/proprietary/lib/hw/nfc.enrc2b.so:system/lib/hw/nfc.enrc2b.so \
    device/htc/enrc2b/proprietary/lib/libardrv_dynamic.so:system/lib/libardrv_dynamic.so \
    device/htc/enrc2b/proprietary/lib/libcall_volume.so:system/lib/libcall_volume.so \
    device/htc/enrc2b/proprietary/lib/libcgdrv.so:system/lib/libcgdrv.so \
    device/htc/enrc2b/proprietary/lib/libhtc_dis.so:system/lib/libhtc_dis.so \
    device/htc/enrc2b/proprietary/lib/libhtc_ril.so:system/lib/libhtc_ril.so \
    device/htc/enrc2b/proprietary/lib/libhtc_rilhook.so:system/lib/libhtc_rilhook.so \
    device/htc/enrc2b/proprietary/lib/libhtcsurfaces.so:system/lib/libhtcsurfaces.so \
    device/htc/enrc2b/proprietary/lib/libnvapputil.so:system/lib/libnvapputil.so \
    device/htc/enrc2b/proprietary/lib/libnvasfparserhal.so:system/lib/libnvasfparserhal.so \
    device/htc/enrc2b/proprietary/lib/libnvaudioservice.so:system/lib/libnvaudioservice.so \
    device/htc/enrc2b/proprietary/lib/libnvaviparserhal.so:system/lib/libnvaviparserhal.so \
    device/htc/enrc2b/proprietary/lib/libnvavp.so:system/lib/libnvavp.so \
    device/htc/enrc2b/proprietary/lib/libnvcameracallbacks.so:system/lib/libnvcameracallbacks.so \
    device/htc/enrc2b/proprietary/lib/libnvcamerahdr.so:system/lib/libnvcamerahdr.so \
    device/htc/enrc2b/proprietary/lib/libnvcam_imageencoder.so:system/lib/libnvcam_imageencoder.so \
    device/htc/enrc2b/proprietary/lib/libnvcapclk.so:system/lib/libnvcapclk.so \
    device/htc/enrc2b/proprietary/lib/libnvcap.so:system/lib/libnvcap.so \
    device/htc/enrc2b/proprietary/lib/libnvcap_video.so:system/lib/libnvcap_video.so \
    device/htc/enrc2b/proprietary/lib/libnvcontrol_jni.so:system/lib/libnvcontrol_jni.so \
    device/htc/enrc2b/proprietary/lib/libnvcpud.so:system/lib/libnvcpud.so \
    device/htc/enrc2b/proprietary/lib/libnvddk_2d.so:system/lib/libnvddk_2d.so \
    device/htc/enrc2b/proprietary/lib/libnvddk_2d_v2.so:system/lib/libnvddk_2d_v2.so \
    device/htc/enrc2b/proprietary/lib/libnvglsi.so:system/lib/libnvglsi.so \
    device/htc/enrc2b/proprietary/lib/libnvmm_asfparser.so:system/lib/libnvmm_asfparser.so \
    device/htc/enrc2b/proprietary/lib/libnvmm_audio.so:system/lib/libnvmm_audio.so \
    device/htc/enrc2b/proprietary/lib/libnvmm_aviparser.so:system/lib/libnvmm_aviparser.so \
    device/htc/enrc2b/proprietary/lib/libnvmm_camera.so:system/lib/libnvmm_camera.so \
    device/htc/enrc2b/proprietary/lib/libnvmm_contentpipe.so:system/lib/libnvmm_contentpipe.so \
    device/htc/enrc2b/proprietary/lib/libnvmm_image.so:system/lib/libnvmm_image.so \
    device/htc/enrc2b/proprietary/lib/libnvmmlite_audio.so:system/lib/libnvmmlite_audio.so \
    device/htc/enrc2b/proprietary/lib/libnvmmlite_image.so:system/lib/libnvmmlite_image.so \
    device/htc/enrc2b/proprietary/lib/libnvmmlite_msaudio.so:system/lib/libnvmmlite_msaudio.so \
    device/htc/enrc2b/proprietary/lib/libnvmmlite.so:system/lib/libnvmmlite.so \
    device/htc/enrc2b/proprietary/lib/libnvmmlite_utils.so:system/lib/libnvmmlite_utils.so \
    device/htc/enrc2b/proprietary/lib/libnvmmlite_video.so:system/lib/libnvmmlite_video.so \
    device/htc/enrc2b/proprietary/lib/libnvmm_manager.so:system/lib/libnvmm_manager.so \
    device/htc/enrc2b/proprietary/lib/libnvmm_msaudio.so:system/lib/libnvmm_msaudio.so \
    device/htc/enrc2b/proprietary/lib/libnvmm_parser.so:system/lib/libnvmm_parser.so \
    device/htc/enrc2b/proprietary/lib/libnvmm_service.so:system/lib/libnvmm_service.so \
    device/htc/enrc2b/proprietary/lib/libnvmm.so:system/lib/libnvmm.so \
    device/htc/enrc2b/proprietary/lib/libnvmm_utils.so:system/lib/libnvmm_utils.so \
    device/htc/enrc2b/proprietary/lib/libnvmm_vc1_video.so:system/lib/libnvmm_vc1_video.so \
    device/htc/enrc2b/proprietary/lib/libnvmm_video.so:system/lib/libnvmm_video.so \
    device/htc/enrc2b/proprietary/lib/libnvmm_writer.so:system/lib/libnvmm_writer.so \
    device/htc/enrc2b/proprietary/lib/libnvodm_dtvtuner.so:system/lib/libnvodm_dtvtuner.so \
    device/htc/enrc2b/proprietary/lib/libnvodm_hdmi.so:system/lib/libnvodm_hdmi.so \
    device/htc/enrc2b/proprietary/lib/libnvodm_imager.so:system/lib/libnvodm_imager.so \
    device/htc/enrc2b/proprietary/lib/libnvodm_misc.so:system/lib/libnvodm_misc.so \
    device/htc/enrc2b/proprietary/lib/libnvodm_query.so:system/lib/libnvodm_query.so \
    device/htc/enrc2b/proprietary/lib/libnvomxadaptor.so:system/lib/libnvomxadaptor.so \
    device/htc/enrc2b/proprietary/lib/libnvomxilclient.so:system/lib/libnvomxilclient.so \
    device/htc/enrc2b/proprietary/lib/libnvomx.so:system/lib/libnvomx.so \
    device/htc/enrc2b/proprietary/lib/libnvos.so:system/lib/libnvos.so \
    device/htc/enrc2b/proprietary/lib/libnvparser.so:system/lib/libnvparser.so \
    device/htc/enrc2b/proprietary/lib/libnvremoteevtmgr.so:system/lib/libnvremoteevtmgr.so \
    device/htc/enrc2b/proprietary/lib/libnvremotell.so:system/lib/libnvremotell.so \
    device/htc/enrc2b/proprietary/lib/libnvremoteprotocol.so:system/lib/libnvremoteprotocol.so \
    device/htc/enrc2b/proprietary/lib/libnvrm_graphics.so:system/lib/libnvrm_graphics.so \
    device/htc/enrc2b/proprietary/lib/libnvrm.so:system/lib/libnvrm.so \
    device/htc/enrc2b/proprietary/lib/libnvsm.so:system/lib/libnvsm.so \
    device/htc/enrc2b/proprietary/lib/libnvtestio.so:system/lib/libnvtestio.so \
    device/htc/enrc2b/proprietary/lib/libnvtestresults.so:system/lib/libnvtestresults.so \
    device/htc/enrc2b/proprietary/lib/libnvtvmr.so:system/lib/libnvtvmr.so \
    device/htc/enrc2b/proprietary/lib/libnvwsi.so:system/lib/libnvwsi.so \
    device/htc/enrc2b/proprietary/lib/libOlaEngineNew.so:system/lib/libOlaEngineNew.so \
    device/htc/enrc2b/proprietary/lib/libposteffect.so:system/lib/libposteffect.so \
    device/htc/enrc2b/proprietary/lib/libscalado.so:system/lib/libscalado.so \
    device/htc/enrc2b/proprietary/lib/libsensors_mpl.so:system/lib/libsensors_mpl.so \
    device/htc/enrc2b/proprietary/lib/libhtcsunny2engine.so:system/lib/libhtcsunny2engine.so \
    device/htc/enrc2b/proprietary/lib/libhtcsunnyengine.so:system/lib/libhtcsunnyengine.so \
    device/htc/enrc2b/proprietary/lib/libhtccamera.so:system/lib/libhtccamera.so \
    device/htc/enrc2b/proprietary/lib/libBeautyChat.so:system/lib/libBeautyChat.so \
    device/htc/enrc2b/proprietary/lib/libcameraface.so:system/lib/libcameraface.so \
    device/htc/enrc2b/proprietary/lib/libcameraasd.so:system/lib/libcameraasd.so \
    device/htc/enrc2b/proprietary/lib/libcamerapp.so:system/lib/libcamerapp.so \
    device/htc/enrc2b/proprietary/lib/libasound.so:system/lib/libasound.so \
    device/htc/enrc2b/proprietary/vendor/lib/libwvm.so:system/lib/libwvm.so \
    device/htc/enrc2b/proprietary/vendor/lib/libwvdrm_L1.so:system/lib/libwvdrm_L1.so \
    device/htc/enrc2b/proprietary/vendor/lib/libWVStreamControlAPI_L1.so:system/lib/libWVStreamControlAPI_L1.so \
    device/htc/enrc2b/proprietary/vendor/lib/libdrmwvmplugin.so:system/lib/drm/libdrmwvmplugin.so \
    device/htc/enrc2b/proprietary/lib/libcapsjava.so:system/lib/libcapsjava.so \
    device/htc/enrc2b/proprietary/lib/libbt-aptx-4.1.1.so:system/lib/libbt-aptx-4.1.1.so \
    device/htc/enrc2b/proprietary/lib/libdumppcm.so:system/lib/libdumppcm.so \
    device/htc/enrc2b/proprietary/lib/libril.so:system/lib/libril.so \
    device/htc/enrc2b/proprietary/lib/libril-icera.so:system/lib/libril-icera.so \
    device/htc/enrc2b/proprietary/lib/libscaladoapi.so:system/lib/libscaladoapi.so \
    device/htc/enrc2b/proprietary/lib/libscalado_htcalbum2.so:system/lib/libscalado_htcalbum2.so \
    device/htc/enrc2b/proprietary/lib/libscaladoutil.so:system/lib/libscaladoutil.so \
    device/htc/enrc2b/proprietary/lib/libhtc-opt2.so:system/lib/libhtc-opt2.so


# Firmware
PRODUCT_COPY_FILES += \
    device/htc/enrc2b/proprietary/etc/firmware/BCM4334B0_002.001.013.0767.0777.hcd:system/etc/firmware/bcm4334.hcd \
    device/htc/enrc2b/proprietary/etc/firmware/fw_bcm4334.bin:system/etc/firmware/fw_bcm4334.bin \
    device/htc/enrc2b/proprietary/etc/firmware/fw_bcm4334_apsta.bin:system/etc/firmware/fw_bcm4334_apsta.bin \
    device/htc/enrc2b/proprietary/etc/firmware/fw_bcm4334_p2p.bin:system/etc/firmware/fw_bcm4334_p2p.bin \
    device/htc/enrc2b/proprietary/etc/firmware/nvavp_aud_ucode.bin:system/etc/firmware/nvavp_aud_ucode.bin \
    device/htc/enrc2b/proprietary/etc/firmware/nvavp_os_0ff00000.bin:system/etc/firmware/nvavp_os_0ff00000.bin \
    device/htc/enrc2b/proprietary/etc/firmware/nvavp_os_eff00000.bin:system/etc/firmware/nvavp_os_eff00000.bin \
    device/htc/enrc2b/proprietary/etc/firmware/nvavp_vid_ucode.bin:system/etc/firmware/nvavp_vid_ucode.bin \
    device/htc/enrc2b/proprietary/etc/firmware/nvavp_vid_ucode_alt.bin:system/etc/firmware/nvavp_vid_ucode_alt.bin \
    device/htc/enrc2b/proprietary/vendor/firmware/libpn544_fw.so:system/vendor/firmware/libpn544_fw.so

# Sound
PRODUCT_COPY_FILES += \
    device/htc/enrc2b/proprietary/etc/soundimage/CodecDSPID.txt:system/etc/soundimage/CodecDSPID.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/CodecDSPID_XA.txt:system/etc/soundimage/CodecDSPID_XA.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_BT_CarMode.txt:system/etc/soundimage/Sound_BT_CarMode.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_FM_HP.txt:system/etc/soundimage/Sound_FM_HP.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_FM_HP_XA.txt:system/etc/soundimage/Sound_FM_HP_XA.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_FM_SPK.txt:system/etc/soundimage/Sound_FM_SPK.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_FM_SPK_XA.txt:system/etc/soundimage/Sound_FM_SPK_XA.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Note_Recording.txt:system/etc/soundimage/Sound_Note_Recording.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Original_DOCK.txt:system/etc/soundimage/Sound_Original_DOCK.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Original_HP.txt:system/etc/soundimage/Sound_Original_HP.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Original_HP_XA.txt:system/etc/soundimage/Sound_Original_HP_XA.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Original_SPK_RING.txt:system/etc/soundimage/Sound_Original_SPK_RING.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Original_SPK_RING_XA.txt:system/etc/soundimage/Sound_Original_SPK_RING_XA.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Original_SPK_XA.txt:system/etc/soundimage/Sound_Original_SPK_XA.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Phone_Original_BT.txt:system/etc/soundimage/Sound_Phone_Original_BT.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Phone_Original_DOCK.txt:system/etc/soundimage/Sound_Phone_Original_DOCK.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Phone_Original_HAC.txt:system/etc/soundimage/Sound_Phone_Original_HAC.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Phone_Original_SPK_XA.txt:system/etc/soundimage/Sound_Phone_Original_SPK_XA.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Phone_Original_TTY.txt:system/etc/soundimage/Sound_Phone_Original_TTY.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_SpeakerVR_Recording.txt:system/etc/soundimage/Sound_SpeakerVR_Recording.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Voice_Recording_AMR.txt:system/etc/soundimage/Sound_Voice_Recording_AMR.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Voip_Original_BT.txt:system/etc/soundimage/Sound_Voip_Original_BT.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Voip_Original_BT_AEC.txt:system/etc/soundimage/Sound_Voip_Original_BT_AEC.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Voip_Original_HP.txt:system/etc/soundimage/Sound_Voip_Original_HP.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Voip_Original_HP_AEC.txt:system/etc/soundimage/Sound_Voip_Original_HP_AEC.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Voip_Original_REC.txt:system/etc/soundimage/Sound_Voip_Original_REC.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Voip_Original_REC_AEC.txt:system/etc/soundimage/Sound_Voip_Original_REC_AEC.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Voip_Original_SPK.txt:system/etc/soundimage/Sound_Voip_Original_SPK.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Voip_Original_SPK_XA.txt:system/etc/soundimage/Sound_Voip_Original_SPK_XA.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Voip_Original_SPK_AEC.txt:system/etc/soundimage/Sound_Voip_Original_SPK_AEC.txt \
    device/htc/enrc2b/proprietary/etc/soundimage/Sound_Voip_Original_SPK_AEC_XA.txt:system/etc/soundimage/Sound_Voip_Original_SPK_AEC_XA.txt

# audio tfa - actually useless but keep it 
PRODUCT_COPY_FILES += \
    device/htc/enrc2b/proprietary/etc/tfa/fm.config:system/etc/tfa/fm.config \
    device/htc/enrc2b/proprietary/etc/tfa/fm.eq:system/etc/tfa/fm.eq \
    device/htc/enrc2b/proprietary/etc/tfa/fm.preset:system/etc/tfa/fm.preset \
    device/htc/enrc2b/proprietary/etc/tfa/fm.speaker:system/etc/tfa/fm.speaker \
    device/htc/enrc2b/proprietary/etc/tfa/playback.config:system/etc/tfa/playback.config \
    device/htc/enrc2b/proprietary/etc/tfa/playback.eq:system/etc/tfa/playback.eq \
    device/htc/enrc2b/proprietary/etc/tfa/playback.preset:system/etc/tfa/playback.preset \
    device/htc/enrc2b/proprietary/etc/tfa/playback.speaker:system/etc/tfa/playback.speaker \
    device/htc/enrc2b/proprietary/etc/tfa/recorder.config:system/etc/tfa/recorder.config \
    device/htc/enrc2b/proprietary/etc/tfa/recorder.eq:system/etc/tfa/recorder.eq \
    device/htc/enrc2b/proprietary/etc/tfa/recorder.preset:system/etc/tfa/recorder.preset \
    device/htc/enrc2b/proprietary/etc/tfa/recorder.speaker:system/etc/tfa/recorder.speaker \
    device/htc/enrc2b/proprietary/etc/tfa/ReleaseNote.txt:system/etc/tfa/ReleaseNote.txt \
    device/htc/enrc2b/proprietary/etc/tfa/ring.config:system/etc/tfa/ring.config \
    device/htc/enrc2b/proprietary/etc/tfa/ring.eq:system/etc/tfa/ring.eq \
    device/htc/enrc2b/proprietary/etc/tfa/ring.preset:system/etc/tfa/ring.preset \
    device/htc/enrc2b/proprietary/etc/tfa/ring.speaker:system/etc/tfa/ring.speaker \
    device/htc/enrc2b/proprietary/etc/tfa/tcoef.speaker:system/etc/tfa/tcoef.speaker \
    device/htc/enrc2b/proprietary/etc/tfa/tfa9887.config:system/etc/tfa/tfa9887.config \
    device/htc/enrc2b/proprietary/etc/tfa/tfa9887.patch:system/etc/tfa/tfa9887.patch \
    device/htc/enrc2b/proprietary/etc/tfa/tfa9887.speaker:system/etc/tfa/tfa9887.speaker \
    device/htc/enrc2b/proprietary/etc/tfa/video.config:system/etc/tfa/video.config \
    device/htc/enrc2b/proprietary/etc/tfa/video.eq:system/etc/tfa/video.eq \
    device/htc/enrc2b/proprietary/etc/tfa/video.preset:system/etc/tfa/video.preset \
    device/htc/enrc2b/proprietary/etc/tfa/video.speaker:system/etc/tfa/video.speaker \
    device/htc/enrc2b/proprietary/etc/tfa/voice.config:system/etc/tfa/voice.config \
    device/htc/enrc2b/proprietary/etc/tfa/voice.eq:system/etc/tfa/voice.eq \
    device/htc/enrc2b/proprietary/etc/tfa/voice.preset:system/etc/tfa/voice.preset \
    device/htc/enrc2b/proprietary/etc/tfa/voice.speaker:system/etc/tfa/voice.speaker

# GPS
#PRODUCT_COPY_FILES += \
#    device/htc/enrc2b/proprietary/etc/gps/RXN/license.key:system/etc/gps/RXN/license.key \
#    device/htc/enrc2b/proprietary/etc/gps/RXN/MSLConfig.txt:system/etc/gps/RXN/MSLConfig.txt \
#    device/htc/enrc2b/proprietary/etc/gps/RXN/security.key:system/etc/gps/RXN/security.key \
#    device/htc/enrc2b/proprietary/etc/gps/agps.truststore:system/etc/gps/agps.truststore \
#    device/htc/enrc2b/proprietary/etc/gps/agps.truststore_lab:system/etc/gps/agps.truststore_lab \
#    device/htc/enrc2b/proprietary/etc/gps/tigpsrouter:system/etc/gps/tigpsrouter

# RIL
PRODUCT_COPY_FILES += \
    device/htc/enrc2b/proprietary/etc/Flash_Loader.conf:system/etc/Flash_Loader.conf \
    device/htc/enrc2b/proprietary/etc/QUO_6260.fls.clean:system/etc/QUO_6260.fls.clean


##Vendor Section Finish##



##keep if needed at some point##

