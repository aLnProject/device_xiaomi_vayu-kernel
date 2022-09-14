BOARD_PREBUILT_DTBOIMAGE := device/xiaomi/vayu-kernel/dtbo.img
TARGET_PREBUILT_KERNEL := device/xiaomi/vayu-kernel/Image
TARGET_PREBUILT_DTB := device/xiaomi/vayu-kernel/dtb.img
PRODUCT_COPY_FILES += \
    device/xiaomi/vayu-kernel/dtb.img:$(TARGET_COPY_OUT)/dtb.img
