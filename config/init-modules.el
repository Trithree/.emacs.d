;;; init-modules.el --- modules

;;; Commentary:

;;; Code:

;;;;;;;;;;;;;
;; 基础模块 ;;
;;;;;;;;;;;;;
(require 'init-package)
(require 'init-variables)

;;;;;;;;;;;;;;
;; 基础配置  ;;
;;;;;;;;;;;;;;
(require 'init-startup)

;;;;;;;;;;;;;
;; evil mode ;;
;;;;;;;;;;;;;
(require 'init-evil)

;;;;;;;;;;;;;
;;  meow   ;;
;;;;;;;;;;;;;
;(require 'init-meow)

;;;;;;;;;;;;;
;; 用户界面 ;;
;;;;;;;;;;;;;
(require 'init-ui)

;;;;;;;;;;;;;
;; OrgMode ;;
;;;;;;;;;;;;;
;(require 'init-org)

;;;;;;;;;;;;;
;; MrkDown ;;
;;;;;;;;;;;;;
;(require 'init-markdown)

;;;;;;;;;;;;;
;; 实用工具 ;;
;;;;;;;;;;;;;
(require 'init-tools)

;;;;;;;;;;;;;;
;;   补全   ;;
;;;;;;;;;;;;;;
(require 'init-completion)

;;;;;;;;;;;;
;; Python ;;
;;;;;;;;;;;;
(require 'init-python)

;;;;;;;;;;;
;; C/C++ ;;
;;;;;;;;;;;
(require 'init-cpp)

(provide 'init-modules)
;;; init-modules.el ends here
