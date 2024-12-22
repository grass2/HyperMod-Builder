DEVICE="$1"
WORKSPACE="$2"

MAGISK_PATCH="${WORKSPACE}/magisk/init_boot_patch.sh"

echo -e "${YELLOW}- Patching init_boot image"
chmod +x "${MAGISK_PATCH}"
${MAGISK_PATCH} "${WORKSPACE}/${DEVICE}/images/init_boot.img"
if [ $? -ne 0 ]; then
    echo -e "${RED}- Failed to patch init_boot image"
    exit 1
fi
echo -e "${BLUE}- Patched init_boot image"