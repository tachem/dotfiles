;; backup_file(*.~) nil
(setq make-backup-files nil)

;; auto-save_file(#*.#) nil
(setq auto-save-default nil)

;; 対応する括弧を光らせる
(show-paren-mode 1)

;; tabは4文字分、改行後に自動インデント
(setq-default tab-width 4 indent-tabs-mode nil)

;; メニューバー非表示
; (menu-bar-mode -1)

;; ツールバー非表示
; (tool-bar-mode -1)

;; 行番号の表示
(global-linum-mode t)

;; カラム番号の表示
(column-number-mode t)

;; 編集行のハイライト
(global-hl-line-mode)

;; スクロールバーを右側へ
; (set-scroll-bar-mode 'right)

;; add web-mode
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\'" . web-mode))
(defun web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
)
(add-hook 'web-mode-hook 'web-mode-hook)

;; markdown-mode
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)
;; flycheck-pop-tip
(eval-after-load 'flycheck
  '(custom-set-variables
    '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))

;; exec-path-from-shell -> shellとpathの共有
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; vagrant-tramp
(eval-after-load 'tramp
  '(vagrant-tramp-enable))

;;;; ddskk
;; set input method
(setq default-input-method "japanese-skk")
;; ddskk jisyo
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

;; smooth-scroll
(require 'smooth-scroll)
(smooth-scroll-mode t)
(setq scroll-step 1)

;; auto-complete
(ac-config-default)

;; anzu
(global-anzu-mode +1)

(provide 'settings)
