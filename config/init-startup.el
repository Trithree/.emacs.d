;;; init-startup.el --- Works when startup Emacs

;;; Commentary:

;;; Code:

;; Settings for system encoding
(prefer-coding-system 'utf-8)
;; (setq locale-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

;; Settings for backup files
(setq make-backup-files nil
      auto-save-default nil)

;; Use y/n to replace yes/no
(defalias 'yes-or-no-p 'y-or-n-p)

;; 选中文本后输入会覆盖
(delete-selection-mode t)

;; 关闭多编辑器同时编辑同一文件时锁文件操作
(setq create-lockfiles nil)

;; 自动刷新被修改过的文件
(global-auto-revert-mode t)

;; 随时重新加载发生修改过的文件
(setq load-prefer-newer t)

;; 关闭字体缓存gc
(setq inhibit-compacting-font-caches nil)

;; Adjust garbage collection thresholds during startup

(setq-default frame-title-format '("%f"))

(setq inhibit-startup-screen t)

(provide 'init-startup)
;;; init-startup.el ends here
