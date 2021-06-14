;;; init-evil.el --- evil mode

;;; Commentary:

;;; Code:

;; evil mode
(use-package evil-nerd-commenter)
(use-package evil-leader
  :config
  (global-evil-leader-mode)
   ;; evil-nerd-commenter vim key bindings
  (evil-leader/set-leader "<SPC>")
  (evil-leader/set-key
    "b" 'switch-to-buffer
    "k" 'kill-buffer
    "ci" 'evilnc-comment-or-uncomment-lines
    "cc" 'evilnc-copy-and-comment-lines
    "cp" 'evilnc-comment-or-uncomment-paragraphs
    "r" 'xref-find-references
    "d" 'xref-find-definitions
    "n" 'flycheck-next-error
    "p" 'flycheck-previous-error))

(use-package evil
  :config
  (evil-mode 1)
  (setcdr evil-insert-state-map nil)
  (define-key evil-insert-state-map [escape] 'evil-normal-state))
(use-package evil-surround
  :config
  (global-evil-surround-mode 1))

(provide 'init-evil)
;;; init-evil.el ends here
