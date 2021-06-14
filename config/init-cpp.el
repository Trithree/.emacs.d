;;; init-cpp.el --- cpp settings

;;; Commentary:

;;; Code:
(use-package ccls
  :hook ((c-mode c++-mode objc-mode cuda-mode) .
         (lambda () (require 'ccls) (lsp-deferred))))

(provide 'init-cpp)
;;; init-cpp.el ends here
