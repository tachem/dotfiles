;; cask
(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)

;; load theme on Emacs theme framework
(load-theme 'vsc t)
(enable-theme 'vsc)

;; path
(add-to-list 'load-path "~/.emacs.d/config")

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; load config files
(require 'set-base)
(require 'set-input)
(require 'set-screen)
(require 'set-helm)
(require 'set-web-mode)
