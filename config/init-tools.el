;;; init-tools --- initialize the tools

;;; Commentary:

;;; Code:

;; Settings for which-key - suggest next key
(use-package which-key
  :config (which-key-mode))

;; undo tree
(use-package undo-tree
  :config (global-undo-tree-mode))

;; vterm
(use-package vterm)

;; Settings for magit
(use-package magit)

;; 在Emacs中使用终端程序ranger
(use-package ranger
  :config (ranger-override-dired-mode t))

;; Smartparens is a minor mode for dealing with pairs
(use-package smartparens
  :config
  (smartparens-global-mode))

;; text folding minor mode
(defconst hideshow-folded-face '((t (:inherit 'font-lock-comment-face :box t))))
(defun hideshow-folded-overlay-fn (ov)
  (when (eq 'code (overlay-get ov 'hs))
    (let* ((nlines (count-lines (overlay-start ov) (overlay-end ov)))
           (info (format " ... #%d " nlines)))
      (overlay-put ov 'display (propertize info 'face hideshow-folded-face)))))
(setq hs-set-up-overlay 'hideshow-folded-overlay-fn)

(use-package hideshow
  :diminish hs-minor-mode
  :hook (prog-mode . hs-minor-mode))

;; ******************** syntax checking ********************
(use-package flycheck
  :hook (prog-mode . flycheck-mode)
  :bind (("M-n" . flycheck-next-error)
         ("M-p" . flycheck-previous-error)))

;; ******************** quickrun ********************
(use-package quickrun)

;; ******************** Emacs Optimize ********************
;; Settings for jump windows, use M-NUM to switch
(use-package ace-window
  :bind ("M-o" . 'ace-window))

(provide 'init-tools)
;;; init-tools.el ends here
