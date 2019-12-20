default:

install: touchpad gsettings theme git

touchpad:
	cp -rt $(HOME)/ .wm_profile
	grep -q \\.wm_profile $(HOME)/.profile || echo ". .wm_profile" >> $(HOME)/.profile

gsettings:
	gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true
	gsettings set org.gnome.Terminal.Legacy.Settings headerbar false
	gsettings set org.gnome.Terminal.Legacy.Settings confirm-close false

theme:
	cp -rt $(HOME)/ .config .icons

git:
	cp -rt $(HOME)/ .git_prompt
	grep -q \\.git_prompt $(HOME)/.bashrc || echo ". .git_prompt" >> $(HOME)/.bashrc

.PHONY: default install touchpad gsettings theme git
