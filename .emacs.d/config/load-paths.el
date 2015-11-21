(add-to-list 'load-path "~/.emacs.d/config/interfaces")
(add-to-list 'load-path "~/.emacs.d/config/keybindings")
(add-to-list 'load-path "~/.emacs.d/config/settings")
(add-to-list 'load-path "~/.emacs.d/config/tools")

(require 'interface)
(require 'keybind)
(require 'setting)
(require 'set-helm)
(require 'set-slim-mode)
(require 'set-scss-mode)
(require 'set-ddskk)
(require 'tool)

(provide 'load-paths)
