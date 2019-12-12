default:

install: gsettings
	cp -rt $(HOME)/ .wm_profile .config .icons
	grep -q \\.wm_profile $(HOME)/.profile || echo ". .wm_profile" >> $(HOME)/.profile
	grep -q \\.git_prompt $(HOME)/.bashrc || echo ". .git_prompt" >> $(HOME)/.bashrc

gsettings:
	gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true
	gsettings set org.gnome.Terminal.Legacy.Settings headerbar false
	gsettings set org.gnome.Terminal.Legacy.Settings confirm-close false

.PHONY: default install
