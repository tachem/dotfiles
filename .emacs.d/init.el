;; cask
;(require 'cask "/usr/local/share/emacs/site-lisp/cask.el")
(require 'cask "/usr/local/Cellar/cask/0.7.2_1/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)

;; load path
(add-to-list 'load-path "~/.emacs.d/config")
(require 'load-paths)

;; Visual Studio Code theme
(load-theme 'vsc t)
(enable-theme 'vsc)
