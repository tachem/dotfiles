(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

(add-hook 'ruby-mode-hook
          '(lambda ()
             (setq indent-tabs-mode nil)
             (setq ruby-indent-level 2)
             (setq ruby-deep-indent-paren-style nil)

             (setq flycheck-checker 'ruby-rubocop)))
