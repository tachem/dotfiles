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

;; indent depth
(require 'indent-guide)
(indent-guide-global-mode)
(setq indent-guide-recursive t)

;; flycheck
(global-flycheck-mode)
;; flycheck-pos-tip
(with-eval-after-load 'flycheck (flycheck-pos-tip-mode))

;; neotree
(define-key global-map (kbd "s-\\") 'neotree-toggle)

;; inactive window's mode line color
(set-face-background 'mode-line-inactive "DarkSlateGray")

;; fullscreen
(set-frame-parameter nil 'fullscreen 'maximized)

(provide 'set-screen)
