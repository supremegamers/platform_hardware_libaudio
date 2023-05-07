#
# Copyright (C) 2012 The Android-x86 Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#

TARGET_ALSA_CONF_DIR := system/usr/share/alsa
LOCAL_ALSA_CONF_DIR  := external/alsa-lib/src/conf

copy_conf := \
	alsa.conf \
	cards/aliases.conf \
	ctl/default.conf \
	pcm/center_lfe.conf \
	pcm/default.conf \
	pcm/dmix.conf \
	pcm/dpl.conf \
	pcm/dsnoop.conf \
	pcm/front.conf \
	pcm/hdmi.conf \
	pcm/iec958.conf \
	pcm/modem.conf \
	pcm/rear.conf \
	pcm/side.conf \
	pcm/surround21.conf \
	pcm/surround40.conf \
	pcm/surround41.conf \
	pcm/surround50.conf \
	pcm/surround51.conf \
	pcm/surround71.conf \
	smixer.conf \

LOCAL_ALSA_INIT_DIR  := external/alsa-utils/alsactl/init

copy_init := \
	00main \
	ca0106 \
	default \
	hda \
	help \
	info \
	test

PRODUCT_COPY_FILES := \
	$(foreach f,$(copy_conf),$(LOCAL_ALSA_CONF_DIR)/$(f):$(TARGET_ALSA_CONF_DIR)/$(f)) \
	$(foreach f,$(copy_init),$(LOCAL_ALSA_INIT_DIR)/$(f):$(TARGET_ALSA_CONF_DIR)/init/$(f)) \
	$(LOCAL_PATH)/primary_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/primary_audio_policy_configuration.xml \
	$(LOCAL_PATH)/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration_7_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration_7_0.xml \
	frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration_7_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration_7_0.xml \
	frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
	frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
	frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/surround_sound_configuration_5_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/surround_sound_configuration_5_0.xml \

PRODUCT_PACKAGES := \
	alsa_mixer \
	alsa_amixer \
	alsa_aplay \
	alsa_ctl \
	alsa_ucm \
	alsa_iecset \
	audio.primary.x86 \
	audio.primary.hdmi \
	audio.bluetooth.default \
	audio.usb.default \
	audio.r_submix.default \
