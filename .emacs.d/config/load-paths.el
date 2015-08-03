(add-to-list 'load-path "~/.emacs.d/config/interfaces")
(add-to-list 'load-path "~/.emacs.d/config/keybindings")
(add-to-list 'load-path "~/.emacs.d/config/settings")
(add-to-list 'load-path "~/.emacs.d/config/tools")

(require 'interface)
(require 'keybind)
(require 'setting)
(require 'tool)

(provide 'load-paths)
