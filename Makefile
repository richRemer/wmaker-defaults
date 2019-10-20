default:

install: gsettings
	cp -rt $(HOME)/ .wm_profile .config .icons
	grep -q \\.wm_profile $(HOME)/.profile || echo ". .wm_profile" >> $(HOME)/.profile

gsettings:
	gsettings set org.gnome.Terminal.Legacy.Settings headerbar false

.PHONY: default install
