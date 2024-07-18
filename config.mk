# Copyright (C) 2017-2022 crDroid Android Project
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
LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Apps
PRODUCT_PACKAGES += \
	XperiaMusic

# Include ChiTang UI audios
AUDIO_BASE_PATH := $(LOCAL_PATH)/base

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(AUDIO_BASE_PATH),$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms) \
    $(call find-copy-subdir-files,*,$(AUDIO_BASE_PATH),$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones)