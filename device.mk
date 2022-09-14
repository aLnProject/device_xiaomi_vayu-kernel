# Kernel Headers
PRODUCT_VENDOR_KERNEL_HEADERS := device/xiaomi/vayu-kernel/sm8150/kernel-headers

# Kernel
LOCAL_KERNEL := device/xiaomi/vayu-kernel/Image
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
