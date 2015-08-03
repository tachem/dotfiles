; load path
(add-to-list 'load-path "~/.emacs.d/config")
(require 'load-paths)

;; cask
(require 'cask "/usr/local/share/emacs/site-lisp/cask.el")
(cask-initialize)

;; Visual Studio Code theme
(load-theme 'vsc t)
(enable-theme 'vsc)



;; exec-path-from-shell -> shellとpathの共有
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
