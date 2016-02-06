;; C-h to backspace
(keyboard-translate ?\C-h ?\C-?)

;; ddskk
(setq default-input-method "japanese-skk")
(setq skk-sticky-key ";")
(global-set-key "\C-xj" 'skk-mode)

;; tab width
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; font
(set-face-attribute 'default nil
                    :family "Ricty Discord"
                    :height 140)
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0208
                  (cons "Ricty Discord" "iso10646-1"))
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0212
                  (cons "Ricty Discord" "iso10646-1"))
(set-fontset-font (frame-parameter nil 'font)
                  'katakana-jisx0201
                  (cons "Ricty Discord" "iso10646-1"))

;; auto-complete
(ac-config-default)

;; anzu
(global-anzu-mode t)

(provide 'set-input)
