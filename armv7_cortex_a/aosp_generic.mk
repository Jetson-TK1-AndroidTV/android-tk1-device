PRODUCT_PACKAGES := BluetoothMidiService Camera2 Gallery2 OneTimeInitializer Provision SystemUI WallpaperCropper
PRODUCT_PACKAGES += clatd clatd.conf pppd screenrecord
PRODUCT_PACKAGES += librs_jni
PRODUCT_PACKAGES += audio.primary.default audio_policy.default local_time.default power.default
PRODUCT_COPY_FILES := frameworks/av/media/libeffects/data/audio_effects.conf:system/etc/audio_effects.conf
PRODUCT_PROPERTY_OVERRIDES += ro.carrier=unknown
$(call inherit-product-if-exists, frameworks/base/data/fonts/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/dancing-script/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/carrois-gothic-sc/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/coming-soon/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/cutive-mono/fonts.mk)
$(call inherit-product-if-exists, external/noto-fonts/fonts.mk)
$(call inherit-product-if-exists, external/naver-fonts/fonts.mk)
$(call inherit-product-if-exists, external/roboto-fonts/fonts.mk)
$(call inherit-product-if-exists, external/hyphenation-patterns/patterns.mk)
$(call inherit-product-if-exists, frameworks/webview/chromium/chromium.mk)
PRODUCT_PACKAGES += BasicDreams Browser Calendar CalendarProvider CaptivePortalLogin CertInstaller Contacts DeskClock DocumentsUI DownloadProviderUi ExactCalculator Exchange2 ExternalStorageProvider FusedLocation InputDevices KeyChain Keyguard LatinIME Launcher2 ManagedProvisioning PicoTts PacProcessor libpac PrintSpooler ProxyHandler Settings SharedStorageBackup Telecom TeleService VpnDialogs
PRODUCT_PROPERTY_OVERRIDES := ro.config.notification_sound=OnTheHunt.ogg ro.config.alarm_alert=Alarm_Classic.ogg
PRODUCT_PACKAGES += ContactsProvider DefaultContainerService Home TelephonyProvider UserDictionaryProvider atrace libandroidfw libaudiopreprocessing libaudioutils libfilterpack_imageproc libgabi++ libmdnssd libnfc_ndef libpowermanager libspeexresampler libstagefright_soft_aacdec libstagefright_soft_aacenc libstagefright_soft_amrdec libstagefright_soft_amrnbenc libstagefright_soft_amrwbenc libstagefright_soft_avcdec libstagefright_soft_avcenc libstagefright_soft_flacenc libstagefright_soft_g711dec libstagefright_soft_gsmdec libstagefright_soft_hevcdec libstagefright_soft_mp3dec libstagefright_soft_mpeg2dec libstagefright_soft_mpeg4dec libstagefright_soft_mpeg4enc libstagefright_soft_opusdec libstagefright_soft_rawdec libstagefright_soft_vorbisdec libstagefright_soft_vpxdec libstagefright_soft_vpxenc libvariablespeed libwebrtc_audio_preprocessing mdnsd requestsync wifi-service
PRODUCT_PACKAGES += BackupRestoreConfirmation DownloadProvider HTMLViewer MediaProvider PackageInstaller SettingsProvider Shell StatementService bcc bu com.android.future.usb.accessory com.android.location.provider com.android.location.provider.xml com.android.media.remotedisplay com.android.media.remotedisplay.xml com.android.mediadrm.signer com.android.mediadrm.signer.xml drmserver ethernet-service framework-res idmap installd ims-common ip ip-up-vpn ip6tables iptables gatekeeperd keystore keystore.default ld.mc libbcc libOpenMAXAL libOpenSLES libdownmix libdrmframework libdrmframework_jni libfilterfw libkeystore libgatekeeper libsqlite_jni libwilhelm logd make_ext4fs e2fsck resize2fs screencap sensorservice telephony-common uiautomator uncrypt voip-common webview wifi-service
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.software.webview.xml:system/etc/permissions/android.software.webview.xml
PRODUCT_BOOT_JARS := core-libart conscrypt okhttp core-junit bouncycastle ext framework telephony-common voip-common ims-common apache-xml org.apache.http.legacy.boot
PRODUCT_SYSTEM_SERVER_JARS := services ethernet-service wifi-service
PRODUCT_PACKAGES += e2fsck make_ext4fs fsck.f2fs make_f2fs
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.zygote=zygote32
PRODUCT_COPY_FILES += system/core/rootdir/init.zygote32.rc:root/init.zygote32.rc
PRODUCT_PACKAGES += apache-xml bouncycastle cacerts conscrypt core-junit core-libart dalvikvm dex2oat dexdeps dexdump dexlist dmtracedump dx ext hprof-conv libart libcrypto libexpat libicui18n libicuuc libjavacore libnativehelper libssl libz oatdump okhttp patchoat
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += dalvik.vm.image-dex2oat-Xms=64m dalvik.vm.image-dex2oat-Xmx=64m dalvik.vm.dex2oat-Xms=64m dalvik.vm.dex2oat-Xmx=512m ro.dalvik.vm.native.bridge=0
PRODUCT_PACKAGES += 20-dns.conf 95-configured org.apache.http.legacy.boot appwidget appops am android.policy android.test.runner app_process applypatch blkid bmgr bugreport content dhcpcd dhcpcd-run-hooks dnsmasq dpm framework fsck_msdos hid ime input javax.obex libandroid libandroid_runtime libandroid_servers libaudioeffect_jni libaudioflinger libaudiopolicyservice libaudiopolicymanager libbundlewrapper libcamera_client libcameraservice libdl libdrmclearkeyplugin libeffectproxy libeffects libinput libinputflinger libiprouteutil libjnigraphics libldnhncr libmedia libmedia_jni libmediaplayerservice libmtp libnetd_client libnetlink libnetutils libpdfium libradio libradioservice libradio_metadata libreference-ril libreverbwrapper libril librtp_jni libsensorservice libskia libsonic libsonivox libsoundpool libsoundtrigger libsoundtriggerservice libsqlite libstagefright libstagefright_amrnb_common libstagefright_avc_common libstagefright_enc_common libstagefright_foundation libstagefright_omx libstagefright_yuv libusbhost libutils libvisualizer libvorbisidec libmediandk libwifi-service media media_cmd mediaserver monkey mtpd ndc netd ping ping6 platform.xml pppd pm racoon run-as schedtest sdcard secdiscard services settings sgdisk sm svc tc telecom vdc vold wm
PRODUCT_COPY_FILES += $(call add-to-product-copy-files-if-exists, frameworks/base/preloaded-classes:system/etc/preloaded-classes)
PRODUCT_COPY_FILES += $(call add-to-product-copy-files-if-exists, frameworks/base/compiled-classes:system/etc/compiled-classes)
PRODUCT_PACKAGES += adb adbd atrace bootanimation debuggerd dumpstate dumpsys fastboot gralloc.default grep gzip healthd init init.environ.rc init.rc libEGL libETC1 libFFTEm libGLESv1_CM libGLESv2 libbinder libc libcutils libdl libgui libhardware libhardware_legacy libjpeg liblog libm libpixelflinger libpower libsigchain libstdc++ libsurfaceflinger libsurfaceflinger_ddmconnection libsysutils libui libutils linker lmkd logcat logwrapper mkshrc reboot recovery service servicemanager sh surfaceflinger toolbox toybox tzdatacheck
PRODUCT_PACKAGES += sepolicy file_contexts seapp_contexts property_contexts mac_permissions.xml selinux_version service_contexts
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += debug.atrace.tags.enableflags=0
PRODUCT_COPY_FILES += system/core/rootdir/init.usb.rc:root/init.usb.rc system/core/rootdir/init.usb.configfs.rc:root/init.usb.configfs.rc system/core/rootdir/init.trace.rc:root/init.trace.rc system/core/rootdir/ueventd.rc:root/ueventd.rc system/core/rootdir/etc/hosts:system/etc/hosts
