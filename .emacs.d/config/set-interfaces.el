;; font set ricty
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

;; 背景の透過
; (set-frame-parameter nil 'alpha 85)

(provide 'set-interfaces)
