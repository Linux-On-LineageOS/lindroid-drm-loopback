#
# Copyright (c) 2015 - 2020 DisplayLink (UK) Ltd.
#
# Copyright (c) 2024 Lindroid Project.
#
# This file is subject to the terms and conditions of the GNU General Public
# License v2. See the file COPYING in the main directory of this archive for
# more details.
#

ccflags-y := -isystem include/uapi/drm $(CFLAGS) $(EL8FLAG) $(EL9FLAG) $(RPIFLAG)
evdi-y := evdi_platform_drv.o evdi_platform_dev.o evdi_sysfs.o evdi_modeset.o evdi_connector.o evdi_encoder.o evdi_drm_drv.o evdi_fb.o evdi_gem.o evdi_painter.o evdi_params.o evdi_cursor.o evdi_debug.o evdi_i2c.o
evdi-$(CONFIG_COMPAT) += evdi_ioc32.o
CONFIG_DRM_EVDI ?= m
obj-$(CONFIG_DRM_LINDROID_EVDI) := evdi.o
obj-y += tests/
