#
# Applies sed PATTERN on FILE. FILE is relative to 'product out' directory.
# $(call sed-filter, FILE, PATTERN)
#
define sed-filter
$(eval sed_filter_file := $(PRODUCT_OUT)/$(strip $(1))) \
$(eval sed_filter_pat := $(2)) \
$(eval sed_filter_target_base := sed_filter.$(sed_filter_file)) \
$(eval $(sed_filter_target_base) := $(if $($(sed_filter_target_base)), $(shell expr $($(sed_filter_target_base)) + 1), 0)) \
$(eval sed_filter_target := $(sed_filter_target_base).$($(sed_filter_target_base))) \
$(eval $(sed_filter_target): $(sed_filter_file)
	@echo "Sed filter: $(sed_filter_file)"
	$(hide) sed -i -e $(sed_filter_pat) $(sed_filter_file)) \
$(eval .PHONY: $(sed_filter_target)) \
$(eval ALL_DEFAULT_INSTALLED_MODULES += $(sed_filter_target)) \
$(eval sed_filter_file:=) \
$(eval sed_filter_pat:=) \
$(eval sed_filter_target_base:=)
endef


#
# Creates a symlink. NAME and DEPS are relative to 'product out' directory.
# $(call create-symlink, TARGET, NAME, DEPS)
#
define create-symlink
$(eval symlink_deps := $(addprefix $(PRODUCT_OUT)/,$(strip $(3)))) \
$(eval symlink_target := $(strip $(1))) \
$(eval symlink_name := $(strip $(2))) \
$(eval symlink_path := $(PRODUCT_OUT)/$(symlink_name)) \
$(eval $(symlink_path): $(symlink_deps)
	@echo "Symlink: $(symlink_name) -> $(symlink_target)"
	@mkdir -p $(dir $(symlink_path))
	@rm -rf $(symlink_path)
	$(hide) ln -sf $(symlink_target) $(symlink_path)) \
$(eval ALL_DEFAULT_INSTALLED_MODULES += $(symlink_path)) \
$(eval symlink_deps:=) \
$(eval symlink_target:=) \
$(eval symlink_name:=) \
$(eval symlink_path:=)
endef
