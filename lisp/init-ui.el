;;; package --- Summar
;;; Commentary:
;;; Code:

(use-package gruvbox-theme
  :init (load-theme 'gruvbox-dark-soft t))

(use-package smart-mode-line
  :init (setq sml/no-confirm-load-theme t
	      sml/theme 'respectful)
  (sml/setup))

(use-package emacs
  :if (display-graphic-p)
  :config
  ;; Font setting
  (if *is-windows*
      (progn
	(set-face-attribute 'default nil :font "JetBrains Mono 12")
	(dolist (charset '(kana han symbol cjk-misc bopomofo))
	  (set-fontset-font (frame-parameter nil 'font)
			    charset (font-spec :family "楷体" :size 24))))
    (set-face-attribute 'default nil :font "Source Code Pro for Powerline 11")))

;;相对行号
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode t)

;;暴露名称
(provide 'init-ui)

;;; init-ui.el ends here

;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:
