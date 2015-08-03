;; cask
(require 'cask "/usr/local/share/emacs/site-lisp/cask.el")
(cask-initialize)

;; Ctrl-hでBackspace
(global-set-key "\C-h" 'delete-backward-char)

;; load-pathの追加
(add-to-list 'load-path "/Users/H1-127/.emacs.d/elisp")

;; コピー&ペーストをクリップボードで行う
(setq x-select-enable-clipboard t)

;; 対応する括弧を光らせる
(show-paren-mode 1)

;; tabは4文字分、改行後に自動インデント
(setq-default tab-width 4 indent-tabs-mode nil)

;; backup_file(*.~) nil
(setq make-backup-files nil)

;; auto-save_file(#*.#) nil
(setq auto-save-default nil)

;; Visual Studio Code theme
(load-theme 'vsc t)
(enable-theme 'vsc)

;; 前回終了時のウィンドウサイズ・位置を記憶
(defun my-window-size-save ()
  (let* ((rlist (frame-parameters (selected-frame)))
         (ilist initial-frame-alist)
         (nCHeight (frame-height))
         (nCWidth (frame-width))
         (tMargin (if (integerp (cdr (assoc 'top rlist)))
                      (cdr (assoc 'top rlist)) 0))
         (lMargin (if (integerp (cdr (assoc 'left rlist)))
                      (cdr (assoc 'left rlist)) 0))
         buf
         (file "~/.framesize.el"))
    (if (get-file-buffer (expand-file-name file))
        (setq buf (get-file-buffer (expand-file-name file)))
      (setq buf (find-file-noselect file)))
    (set-buffer buf)
    (erase-buffer)
    (insert (concat
             ;; 初期値をいじるよりも modify-frame-parameters
             ;; で変えるだけの方がいい?
             "(delete 'width initial-frame-alist)\n"
             "(delete 'height initial-frame-alist)\n"
             "(delete 'top initial-frame-alist)\n"
             "(delete 'left initial-frame-alist)\n"
             "(setq initial-frame-alist (append (list\n"
             "'(width . " (int-to-string nCWidth) ")\n"
             "'(height . " (int-to-string nCHeight) ")\n"
             "'(top . " (int-to-string tMargin) ")\n"
             "'(left . " (int-to-string lMargin) "))\n"
             "initial-frame-alist))\n"
             ;;"(setq default-frame-alist initial-frame-alist)"
             ))
    (save-buffer)
    ))

(defun my-window-size-load ()
  (let* ((file "~/.framesize.el"))
    (if (file-exists-p file)
        (load file))))

(my-window-size-load)

;; Call the function above at C-x C-c.
(defadvice save-buffers-kill-emacs
  (before save-frame-size activate)
  (my-window-size-save))




;; メニューバー非表示
;(menu-bar-mode -1)

;; ツールバー非表示
;(tool-bar-mode -1)

;; 行番号の表示
(global-linum-mode t)

;; スクロールバーを右側へ
;(set-scroll-bar-mode 'right)

;; 配色関係
;(progn
    ;; 背景色
;    (add-to-list 'default-frame-alist '(background-color . "black"))
    ;; 文字色
;    (add-to-list 'default-frame-alist '(foreground-color . "azure1"))
;)

;; ====================================
;  全角スペースとかに色を付ける
;; ====================================
(defface my-face-b-1 '((t (:background "SeaGreen"))) nil)
(defface my-face-b-1 '((t (:background "SeaGreen"))) nil)
(defface my-face-b-2 '((t (:background "SeaGreen"))) nil)
(defface my-face-b-2 '((t (:background "SeaGreen"))) nil)
(defface my-face-u-1 '((t (:foreground "SeaGreen" :underline t))) nil)
(defvar my-face-b-1 'my-face-b-1)
(defvar my-face-b-2 'my-face-b-2)
(defvar my-face-u-1 'my-face-u-1)
(defadvice font-lock-mode (before my-font-lock-mode ())
  (font-lock-add-keywords
   major-mode
   '(
     ("　" 0 my-face-b-1 append)
     ("\t" 0 my-face-b-2 append)
     ("[ ]+$" 0 my-face-u-1 append)
     )))
(ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
(ad-activate 'font-lock-mode)
(add-hook 'find-file-hooks '(lambda ()
                              (if font-lock-mode
                                  nil
                                (font-lock-mode t))))

;; 背景透過
;(set-frame-parameter nil 'alpha 85)

;; ウィンドウ位置とサイズ
;(setq initial-frame-alist
;      '((top . 323) (left . 646) (width . 126) (height . 42)))



;; window_resize (キーバインド vi)
(defun window-resizer ()
  "Control window size and position."
  (interactive)
  (let ((window-obj (selected-window))
        (current-width (window-width))
        (current-height (window-height))
        (dx (if (= (nth 0 (window-edges)) 0) 1
              -1))
        (dy (if (= (nth 1 (window-edges)) 0) 1
              -1))
        c)
    (catch 'end-flag
      (while t
        (message "size[%dx%d]"
                 (window-width) (window-height))
        (setq c (read-char))
        (cond ((= c ?l)
               (enlarge-window-horizontally dx))
              ((= c ?h)
               (shrink-window-horizontally dx))
              ((= c ?j)
               (enlarge-window dy))
              ((= c ?k)
               (shrink-window dy))
              ;; otherwise
              (t
               (message "Quit")
               (throw 'end-flag t)))))))
(global-set-key "\C-c\C-r" 'window-resizer)

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

;; add web-mode
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\'" . web-mode))
(defun web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
)
(add-hook 'web-mode-hook 'web-mode-hook)

;; add markdown-mode
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; add exec-path-from-shell
; shellとpathの共有
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)
; flycheck-pop-tip
(eval-after-load 'flycheck
  '(custom-set-variables
    '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))

;; vagrant-tramp
(eval-after-load 'tramp
  '(vagrant-tramp-enable))

;; ddskk
; set input method
(setq default-input-method "japanese-skk")
; ddskk jisyo
(setq skk-user-directory "~/Library/Application Support/AquaSKK/")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-display-errors-function (function flycheck-pos-tip-error-messages))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
