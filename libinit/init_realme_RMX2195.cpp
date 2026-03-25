/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>

#include "vendor_init.h"

static const variant_info_t bengal_global_info = {
    .hwc_value = "",
    .sku_value = "",

    .brand = "Realme",
    .device = "bengal",
    .marketname = "Realme C15",
    .model = "RMX2196",
    .build_fingerprint = "Realme/bengal_global/bengal:11/RKQ1.211001.001/C.16.RGCMIXM:user/release-keys",

    .nfc = false,
};

static const variant_info_t bengal_in_info = {
    .hwc_value = "",
    .sku_value = "",

    .brand = "Realme",
    .device = "bengal",
    .marketname = "Realme C15",
    .model = "RMX2195",
    .build_fingerprint = "Realme/bengal_global/bengal:11/RKQ1.211001.001/C.16.5.0.RGCMIXM:user/release-keys",

    .nfc = false,
};

static const variant_info_t bengal_global_info = {
    .hwc_value = "",
    .sku_value = "",

    .brand = "Realme",
    .device = "bengal",
    .marketname = "Realme C15",
    .model = "RMX2197",
    .build_fingerprint = "Realme/bengal_global/bengal:11/RKQ1.211001.001/C.16.7.0.RGKMIXM:user/release-keys",

    .nfc = false,
};

static const std::vector<variant_info_t> variants = {
    bengal_global_info,
    bengal_in_info,
    bengal_global_info,
};

void vendor_load_properties() {
    search_variant(variants);
    set_dalvik_heap();
}
