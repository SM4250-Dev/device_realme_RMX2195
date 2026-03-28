/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>

#include "vendor_init.h"

static const variant_info_t RMX2195_global_info = {
    .hwc_value = "",
    .sku_value = "",

    .brand = "realme",
    .device = "bengal",
    .marketname = "Realme C15",
    .model = "RMX2196",
    .build_fingerprint = "realme/bengal_global/bengal:11/RKQ1.211001.001/C.16:user/release-keys",

    .nfc = false,
};

static const variant_info_t RMX2101_global_info = {
    .hwc_value = "",
    .sku_value = "",

    .brand = "realme",
    .device = "bengal",
    .marketname = "Realme C17",
    .model = "RMX2101",
    .build_fingerprint = "realme/bengal_global/bengal:11/RKQ1.211001.001/C.16:user/release-keys",

    .nfc = false,
};

static const std::vector<variant_info_t> variants = {
    RMX2195_global_info,
    RMX2101_global_info,
};

void vendor_load_properties() {
    search_variant(variants);
    set_dalvik_heap();
}
