(modify-coding-system-alist 'file "\\.tex\\'" 'euc-japan-unix)
(modify-coding-system-alist 'file "\\.bib\\'" 'euc-japan-unix)

(defun my-tex-mode-hook ()
  "Hooks for TeX mode."
  ;; (setq skk-kutouten-type '("." . ","))
  )
(add-hook 'tex-mode-hook 'my-tex-mode-hook)
