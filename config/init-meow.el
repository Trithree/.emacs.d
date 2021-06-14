;;; init-meow.el --- Meow is a complete modal editing

;;; Commentary:

;;; Code:

(defun meow-setup ()
  (setq meow-cheatsheet-layout meow-cheatsheet-layout-qwerty)
  (meow-motion-overwrite-define-key
   '("j" . meow-next)
   '("k" . meow-prev))
  (meow-leader-define-key
   ;; SPC j/k will run the original command in MOTION state.
   '("j" . meow-motion-origin-command)
   '("k" . meow-motion-origin-command)
   ;; Use SPC (0-9) for digit arguments.
   '("1" . meow-digit-argument)
   '("2" . meow-digit-argument)
   '("3" . meow-digit-argument)
   '("4" . meow-digit-argument)
   '("5" . meow-digit-argument)
   '("6" . meow-digit-argument)
   '("7" . meow-digit-argument)
   '("8" . meow-digit-argument)
   '("9" . meow-digit-argument)
   '("0" . meow-digit-argument)
   '("/" . meow-keypad-describe-key)
   '("?" . meow-cheatsheet))
  (meow-normal-define-key
   '("0" . meow-expand-0)
   '("9" . meow-expand-9)
   '("8" . meow-expand-8)
   '("7" . meow-expand-7)
   '("6" . meow-expand-6)
   '("5" . meow-expand-5)
   '("4" . meow-expand-4)
   '("3" . meow-expand-3)
   '("2" . meow-expand-2)
   '("1" . meow-expand-1)
   '("-" . negative-argument)
   '(";" . meow-reverse)
   '("," . meow-inner-of-thing)
   '("." . meow-bounds-of-thing)
   '("[" . meow-beginning-of-thing)
   '("]" . meow-end-of-thing)
   '("a" . meow-append)
   '("b" . meow-back-word)
   '("B" . meow-back-symbol)
   '("c" . meow-change)
   '("C" . meow-change-save)
   '("d" . meow-clipboard-kill)
   '("D" . meow-kill-append)
   '("e" . meow-line)
   '("E" . meow-swap-grab)
   '("f" . meow-find)
   '("F" . meow-find-expand)
   '("g" . meow-goto-line)
   '("h" . meow-head)
   '("H" . meow-head-expand)
   '("i" . meow-insert)
   '("j" . meow-next)
   '("J" . meow-next-expand)
   '("k" . meow-prev)
   '("K" . meow-prev-expand)
   '("l" . meow-tail)
   '("L" . meow-tail-expand)
   '("m" . meow-grab)
   '("n" . meow-search)
   '("N" . meow-pop-search)
   '("o" . meow-open-below)
   '("O" . meow-open-above)
   '("p" . meow-clipboard-yank)
   '("q" . meow-quit)
   '("r" . meow-replace)
   '("s" . meow-visit)
   '("S" . meow-kmacro-matches)
   '("t" . meow-till)
   '("u" . meow-undo)
   '("U" . meow-undo-in-selection)
   '("v" . meow-block)
   '("V" . meow-block-expand)
   '("w" . meow-next-word)
   '("W" . meow-next-symbol)
   '("x" . meow-C-d)
   '("y" . meow-clipboard-save)
   '("Y" . meow-sync-grab)
   '("&" . meow-query-replace)
   '("%" . meow-query-replace-regexp)
   '("'" . repeat)
   '("\\" . quoted-insert)
   '("<escape>" . meow-cancel)
;   '("" . meow-join)
;   '("" . meow-till-expand)
;   '("" . meow-mark-word)
;   '("" . meow-mark-symbol)
;   '("" . meow-kmacro-lines)
;   '("" . meow-pop-selection)
;   '("" . meow-pop-all-selection)
;   '("" . yank)
   ))

(use-package meow
  :init
  (meow-global-mode 1)
  (setq
   meow-visit-sanitize-completion nil
   meow-esc-delay 0.001
   meow-keypad-describe-delay 0.5
   meow-select-on-change t
   meow-cursor-type-normal 'box
   meow-cursor-type-insert '(bar . 4)
   meow-selection-command-fallback '((meow-replace . meow-replace-char)
                                     (meow-change . meow-change-char)
                                     (meow-save . meow-save-char)
                                     (meow-kill . meow-C-k)
                                     (meow-cancel . meow-keyboard-quit)
                                     (meow-pop . meow-pop-grab)
                                     (meow-delete . meow-C-d)))
  :config
  ;; meow-setup 用于自定义按键绑定，可以直接使用下文中的示例
  (meow-setup)
  ;; 如果你需要在 NORMAL 下使用相对行号（基于 display-line-numbers-mode）
  (meow-setup-line-number)
  ;; 如果你需要自动的 mode-line 设置（如果需要自定义见下文对 `meow-indicator' 说明）
  (meow-setup-indicator))

(provide 'init-meow)
;;; init-meow.el ends here
