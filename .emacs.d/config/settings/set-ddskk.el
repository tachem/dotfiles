(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install/")
(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup)

(require 'sticky)
(setq skk-sticky-key ";")

(provide 'set-ddskk)
