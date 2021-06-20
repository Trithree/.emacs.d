;;; init-completion --- text completion

;;; Commentary:

;;; Code:

;; ******************** text completion ********************
;; Settings for company
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

(use-package company-quickhelp
  :config
  (eval-after-load 'company
    '(define-key company-active-map
       (kbd "C-c h") #'company-quickhelp-manual-begin)))

;; Better sorting and filtering
(use-package company-prescient
  :init (company-prescient-mode 1))

;; Settings for yasnippet
(use-package yasnippet
  :diminish yas-minor-mode
  :config (yas-global-mode))

(use-package yasnippet-snippets
  :after yasnippet)

;; ********************     ivy    ********************
;; Settings for ivy & counsel & swiper
(use-package ivy
  :demand
  :diminish
  :hook (after-init . ivy-mode)
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t
        ivy-initial-inputs-alist nil
        ivy-count-format "%d/%d "
        enable-recursive-minibuffers t
        ivy-re-builders-alist '((t . ivy--regex-ignore-order))))

(use-package ivy-rich
  :init (ivy-rich-mode 1))

(use-package counsel
  :after (ivy)
  :bind
  (("M-x" . counsel-M-x)
   ("C-h b" . counsel-descbinds)
   ("C-h f" . counsel-describe-function)
   ("C-h v" . counsel-describe-variable)
   ("C-x C-f" . counsel-find-file)
   ("C-c f" . counsel-recentf)
   ("C-c g" . counsel-git)))

(use-package swiper
  :after (ivy)
  :bind
  (("C-s" . swiper)
   ("C-r" . swiper-isearch-backward))
  :config
  (setq swiper-action-recenter t
        swiper-include-line-number-in-search t))

(use-package counsel-fd)

;; ********************      lsp      ********************
(use-package lsp-mode
  ;; add prog-mode to lsp instead of adding one by one
  :hook ((lsp-mode . lsp-enable-which-key-integration))
  :commands (lsp lsp-deferred)
  :custom
  (lsp-keep-workspace-alive nil) ;; Auto kill LSP server
  (lsp-enable-folding nil)           ;; use 'hideshow' instead
  (lsp-enable-file-watchers nil)     ;; turn off for better performance
  (lsp-enable-indentation nil)       ;; indent by myself
  (lsp-modeline-code-actions-enable nil) ;; keep modeline clean
  (lsp-enable-on-type-formatting nil)
  (lsp-eldoc-enable-hover nil) ;; Disable eldoc displays in minibuffer
  (lsp-log-io t)                     ;; enable log only for debug
  (lsp-auto-guess-root t)
  (lsp-enable-snippet t))

;;; Optionally: lsp-ui, company-lsp
(use-package lsp-ui
  :after lsp-mode
  :hook (lsp-mode . lsp-ui-mode)
  :init (setq lsp-ui-doc-enable nil
              lsp-ui-doc-use-webkit nil
              lsp-ui-doc-delay 0
              lsp-ui-doc-position 'at-point
              lsp-ui-peek-enable t
              lsp-ui-sideline-enable nil
              lsp-ui-sideline-show-hover nil
              lsp-ui-sideline-show-diagnostics nil
              lsp-ui-sideline-ignore-duplicate t)
  :bind (:map lsp-ui-mode-map
              ("C-c d" . xref-find-definitions)
              ("C-c r" . xref-find-references))
  :config
  (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
  (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
  :commands lsp-ui-mode)

(provide 'init-completion)
;;; init-completion.el ends here
