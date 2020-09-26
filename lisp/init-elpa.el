;;; package --- Summar
;;; Commentary:
;;; Code:
(setq package-archives '(("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
			 ("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))

;;签名校验
(setq package-check-signature nil)

(require 'package)

;;初始化包管理器
(unless (bound-and-true-p package--initialized)
  (package-initialize))

;;刷新软件源索引
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(setq use-package-always-ensure t
      use-package-always-defer t
      use-package-always-demand nil
      use-package-expand-minimally t
      use-package-verbose t)

(require 'use-package)

(provide 'init-elpa)
;;; init-elpa.el ends here

;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:
