LIBDIR := lib
CLONE  := https://github.com/martinthomson/i-d-template

ifeq (,$(wildcard $(LIBDIR)/main.mk))
$(shell git clone --depth=1 $(CLONE) $(LIBDIR) >&2)
endif

# Paginate txt output so idnits sees form-feed separators and per-page
# Expires headers (fixes EXPIRES_LINE_MISSING and PAGES_NOT_SEPARATED).
TEXT_PAGINATION := true

include $(LIBDIR)/main.mk
