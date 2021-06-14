;;; init-ui.el --- settings for the Emacs UI

;;; Commentary:

;;; Code:

(tool-bar-mode 0)
(menu-bar-mode 0)
(show-paren-mode t)

;; Settings for UI theme
(use-package doom-themes
  :init (load-theme 'doom-material t))
(use-package doom-modeline
  :init (doom-modeline-mode 1))

;; misc
;; 解决Emacs在KDE下最大化出现间隙的问题
(setq frame-resize-pixelwise t)

;; 更友好及平滑的滚动
(setq scroll-step 2
      scroll-margin 6
      hscroll-step 2
      hscroll-margin 2
      scroll-conservatively 101
      scroll-up-aggressively 0.01
      scroll-down-aggressively 0.01
      scroll-preserve-screen-position 'always)

;; 关闭自动调节行高
(setq auto-window-vscroll nil)

;; 关闭自动换行的功能
(setq-default truncate-lines t)

;; Settings for the TAB behavior
(setq-default tab-width 4
	      indent-tabs-mode nil)

;; Settings for the TAB behavior
(setq-default tab-width 4
	      indent-tabs-mode nil)

;; Settings for line number
(setq display-line-numbers-type 'visual)
(global-display-line-numbers-mode t)

;; Set fonts global
(when window-system 
  (progn
    ;; English Font
    (set-face-attribute 'default nil :font "Hack 16")
    ;; Chinese Font
    (dolist (charset '(kana han symbol cjk-misc bopomofo))
      (set-fontset-font (frame-parameter nil 'font)
                        charset (font-spec :family "Source Han Sans CN" :size 21)))))

;; need M-x all-the-icons-install-fonts
;; Better experience with icons for ivy
(use-package all-the-icons-ivy-rich
  :init (all-the-icons-ivy-rich-mode 1))
;; Display icons for all buffers in ibuffer
(use-package all-the-icons-ibuffer
  :init (all-the-icons-ibuffer-mode 1))

(setq display-time-format "%Y-%m-%d %H:%M")
(setq display-time-default-load-average nil)
(display-time-mode t)

;; (use-package highlight-indent-guides
;;   :init
;;   (add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
;;   (setq highlight-indent-guides-method 'character
;;         highlight-indent-guides-character ?|))
(use-package indent-guide
  :config
  (indent-guide-global-mode)
  (setq indent-guide-char "|"))

(use-package rainbow-delimiters
  :init (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(provide 'init-ui)
;;; init-ui.el ends here
