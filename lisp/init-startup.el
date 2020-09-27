;;; package --- Summar
;;; Commentary:
;;; Code:
;;解决乱码问题
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

;;垃圾回收
(setq gc-cons-threshold most-positive-fixnum)


(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

;;默认全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; 关闭启动帮助画面
(setq inhibit-startup-screen t)

;;高亮当前行
(global-hl-line-mode 1)

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

;;禁止 Emacs 自动生成备份文件
(setq make-backup-files nil)

;;选中替换
(delete-selection-mode 1)

;;关闭提示音
(setq visible-bell 0)

(provide 'init-startup)
;;; init-startup.el ends here

;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:
