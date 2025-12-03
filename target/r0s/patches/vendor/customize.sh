if ! grep -q "init_31_0 tee_file" "$WORK_DIR/vendor/etc/selinux/vendor_sepolicy.cil"; then
    {
        echo "(allow init_31_0 tee_file (dir (mounton)))"
        echo "(allow priv_app_31_0 tee_file (dir (getattr)))"
        echo "(allow init_31_0 vendor_fw_file (file (mounton)))"
        echo "(allow priv_app_31_0 vendor_fw_file (file (getattr)))"
        echo "(allow init_31_0 vendor_npu_firmware_file (file (mounton)))"
        echo "(allow priv_app_31_0 vendor_npu_firmware_file (file (getattr)))"
    } >> "$WORK_DIR/vendor/etc/selinux/vendor_sepolicy.cil"
fi