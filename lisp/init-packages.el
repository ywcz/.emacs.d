;;; package --- Summar
;;; Commentary:
;;; Code:
;;测试启动耗时
(use-package benchmark-init
  :init (benchmark-init/activate)
  :hook (after-init . benchmark-init/deactivate))

;;删除行
(use-package crux
  :bind (("C-a" . crux-move-beginning-of-line)
	 ("C-S-k" . crux-smart-kill-line)
	 ("C-c C-o" . crux-top-join-line)
	 ("C-S-d" . crux-duplicate-current-line-or-region)))

;;快速删除空格
(use-package hungry-delete
  :bind (("C-c DEL" . hungry-delete-backward))
  :bind (("C-c d" . hungry-delete-forward)))

;;代码块移动
(use-package drag-stuff
  :bind (("<M-up>" . drag-stuff-up)
	 ("<M-down>" . drag-stuff-down)))

;;重启emcas
(use-package restart-emacs)

;;强化搜索
(use-package ivy
  :defer 1
  :demand
  :hook (after-init . ivy-mode)
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t
	ivy-initial-inputs-alist nil
	ivy-count-format "%d/%d "
	enable-recursive-minibuffers t
	ivy-re-builders-alist '((t . ivy--regex-ignore-order))))

(use-package counsel
  :after ivy
  :bind (("M-x" . counsel-M-x)
	 ("C-x C-f" . counsel-find-file)
	 ("C-c f" . counsel-recentf)
	 ("C-c g" . counsel-git)))

(use-package swiper
  :after ivy
  :bind (("C-s" . swiper)
	 ("C-r" . swiper-isearch-backward))
  :config (setq swiper-action-recenter t
		swiper-include-line-number-in-search t))

(use-package ivy-posframe
  :ensure t
  :after ivy
  :diminish
  :config
  (setq ivy-posframe-display-functions-alist
	'((swiper          . ivy-posframe-display-at-frame-center)
          (complete-symbol . ivy-posframe-display-at-point)
          (counsel-M-x     . ivy-posframe-display-at-frame-center)
	  (counsel-find-file . ivy-posframe-display-at-frame-center)
	  (ivy-switch-buffer . ivy-posframe-display-at-frame-center)
          (t               . ivy-posframe-display-at-frame-center))))
(ivy-posframe-mode 1)

;;自动补全插件
(use-package company
  :diminish (company-mode " Com.")
  :defines (company-dabbrev-ignore-case company-dabbrev-downcase)
  :hook (after-init . global-company-mode)
  :config (setq company-dabbrev-code-everywhere t
		company-dabbrev-code-modes t
		company-dabbrev-code-other-buffers 'all
		company-dabbrev-downcase nil
		company-dabbrev-ignore-case t
		company-dabbrev-other-buffers 'all
		company-require-match nil
		company-minimum-prefix-length 2
		company-show-numbers t
		company-tooltip-limit 20
		company-idle-delay 0
		company-echo-delay 0
		company-tooltip-offset-display 'scrollbar
		company-begin-commands '(self-insert-command)))

;;全局启用语法检查
(use-package flycheck
  :hook (after-init . global-flycheck-mode))

;;只在编程语言下启用
;;(use-package flycheck
;;  :hook (prog-mode . flycheck-mode))

;;功能键提示
(use-package which-key
  :defer nil
  :config (which-key-mode))

;;快速切换分屏
(use-package ace-window
  :bind (("M-o" . 'ace-window)))



(provide 'init-packages)

;;; init-packages.el ends here

;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:
