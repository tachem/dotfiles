(add-to-list 'auto-mode-alist '("\\.plim\\'" . slim-mode))

(defun slim-mode-hook ()
  "Hooks for Slim mode."
  (setq slim-indent-offset 2))
(add-hook 'slim-mode-hook 'slim-mode-hook)

(provide 'set-slim-mode)
