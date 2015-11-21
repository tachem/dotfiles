;; cask
(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)

;; load path
(add-to-list 'load-path "~/.emacs.d/auto-install")
(add-to-list 'load-path "~/.emacs.d/config")

;;;; packages merge/purge
;; base
(require 'set-interfaces)
(require 'set-keybindings)
(require 'set-auto-install)
(require 'set-sticky)
(require 'set-helm)
(require 'set-scss-mode)
(require 'set-slim-mode)
(require 'settings)
(require 'tools)

;; Visual Studio Code theme
(load-theme 'vsc t)
(enable-theme 'vsc)
