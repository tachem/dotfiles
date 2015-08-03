;; cask
(require 'cask "/usr/local/share/emacs/site-lisp/cask.el")
(cask-initialize)


;; load path
(add-to-list 'load-path "~/.emacs.d/config")
(require 'load-paths)

;; Visual Studio Code theme
(load-theme 'vsc t)
(enable-theme 'vsc)
