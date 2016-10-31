;; column
(column-number-mode t)

;; whitespace line-tail/tab
(require 'whitespace)
(setq whitespace-style '(face trailing tabs tab-mark))
(global-whitespace-mode t)

(defvar my/bg-color "#171717")
(set-face-attribute 'whitespace-trailing nil
                    :background my/bg-color
                    :foreground "DeepPink"
                    :underline t)
(set-face-attribute 'whitespace-tab nil
                    :background my/bg-color
                    :foreground "DeepSkyBlue"
                    :underline t)

;; ;; indent depth
;; (require 'indent-guide)
;; (indent-guide-global-mode)
;; (setq indent-guide-recursive t)

;; flycheck
;; (global-flycheck-mode)
;; flycheck-pos-tip
;; (with-eval-after-load 'flycheck (flycheck-pos-tip-mode))

;; neotree
(define-key global-map (kbd "s-\\") 'neotree-toggle)

;; inactive window's mode line color
(set-face-background 'mode-line-inactive "DarkSlateGray")

;; fullscreen
(set-frame-parameter nil 'fullscreen 'maximized)

;; git
(global-auto-revert-mode t)

;; highlight-symbol
(add-hook 'prog-mode-hook 'highlight-symbol-mode)
(add-hook 'prog-mode-hook 'highlight-symbol-nav-mode)

(setq highlight-symbol-idle-delay 0.1)

;; spaceline
(setq ns-use-srgb-colorspace nil)

(require 'spaceline-config)
;; (spaceline-spacemacs-theme)
(spaceline-emacs-theme)


;; mode-icons
(mode-icons-mode)
(setq mode-icons-change-mode-name nil)
