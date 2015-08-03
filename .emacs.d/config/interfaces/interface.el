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

;; font set source_han_code_jp
;(set-face-attribute 'default nil
;                    :family "Source Han Code JP ExtraLight"
;                    :height 140)
;(set-fontset-font (frame-parameter nil 'font)
;                  'japanese-jisx0208
;                  '("Source Han Code JP ExtraLight" . "iso10646-*"))

;; 背景の透過
;(set-frame-parameter nil 'alpha 85)

;; 配色関係
;(progn
    ;; 背景色
;    (add-to-list 'default-frame-alist '(background-color . "black"))
    ;; 文字色
;    (add-to-list 'default-frame-alist '(foreground-color . "azure1"))
;)

(provide 'interface)
