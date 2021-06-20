;;; init-package --- initialize elpa repository

;;; Commentary:

;;; Code:

;;; Settings for package archives
;; (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
;;                          ("melpa" . "http://elpa.emacs-china.org/melpa/")))
;; (package-initialize)
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize) ;; You might already have this line

;; Settings for use-package package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

;; use-package-always-ensure to be global for all packages
(require 'use-package-ensure)
(setq use-package-always-ensure t)

;; auto update packages
(use-package auto-package-update
  :config
  (setq auto-package-update-delete-old-version t
        auto-package-update-hide-results t)
  (auto-package-update-maybe))

(provide 'init-package)
;;; init-package.el ends here
