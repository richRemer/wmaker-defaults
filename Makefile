default:

install:
	cp -rt $(HOME)/ .wm_profile
	grep -q \\.wm_profile $(HOME)/.profile || echo ". .wm_profile" >> $(HOME)/.profile

.PHONY: default install
