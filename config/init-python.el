;;; init-python.el --- python settings

;;; Commentary:

;;; Code:
(setq-default python-indent-offset 4)

(use-package lsp-jedi
  :hook (python-mode . (lambda ()
                         (require 'lsp-jedi)
                         (lsp-deferred))))

(use-package elpy
  :init (elpy-enable))

(provide 'init-python)
;;; init-python.el ends here
