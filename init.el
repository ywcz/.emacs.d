;;; package --- Summar
;;; Commentary:
;;; Code:
(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "lisp")))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-const)
(require 'init-startup)
(require 'init-kbd)
(require 'init-elpa)
(require 'init-packages)
(require 'init-ui)

(when (file-exists-p custom-file)
  (load-file custom-file))

;;; init.el ends here

(put 'narrow-to-region 'disabled nil)
