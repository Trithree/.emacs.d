;;; init.el --- Initialization file

;;; Commentary:

;;; Code:
(push (expand-file-name (concat user-emacs-directory "config/")) load-path)
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
;; 所有配置自带的模块

(require 'init-modules)
;;; init.el ends here
