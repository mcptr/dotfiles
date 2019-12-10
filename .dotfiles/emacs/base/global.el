;; OVERRIDE custom-set-variables added by Custom.
(custom-set-variables
 '(make-backup-files nil)
 ;;'(confirm-kill-emacs 'y-or-n-p)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(menu-bar-mode nil)
 '(column-number-mode t)
 '(current-language-environment "UTF-8")
 '(default-input-method "utf-8")
 '(case-fold-search t)
 '(global-font-lock-mode t)
 '(global-visual-line-mode t)
 '(inhibit-startup-screen t)
 '(show-paren-mode t)
 '(show-parent-style (quote mixed))
 ;; '(size-indication-mode t)
 ;; '(speedbar-show-unknown-files t)
 ;; '(speedbar-use-images nil)
 ;; '(sr-speedbar-auto-refresh t)
 ;; '(sr-speedbar-default-width 20)
 ;; '(sr-speedbar-max-width 50)
 ;; '(sr-speedbar-skip-other-window-p nil)
 ;; '(sr-speedbar-width-x 50)
 '(tab-always-indent t)
 '(transient-mark-mode t)
 '(which-function-mode t)
 '(initial-scratch-message nil)
 )

(defun x11-setup ()
  ;;(custom-set-variables '(confirm-kill-emacs 'y-or-n-p))
  (custom-set-faces
   '(default ((t (:inherit nil :stipple nil :background "#002b36" :foreground "#839496" :inverse-video nil :strike-through nil :overline nil :underline nil :slant normal :weight bold :height 113 :width normal :foundry "PfEd" :family "Noto Sans Mono"))))
   )
  )


(if (eq window-system 'x)
    (x11-setup)
  (custom-set-variables '(confirm-kill-emacs nil))
  )

(when (window-system) (x11-setup))

(setq tab-width 4)


(delete-selection-mode 1)
(fset 'yes-or-no-p 'y-or-n-p)


(setq man-notify-method 'newframe)


;; treat underscore as a word class char (M-f, M-b, etc)
;; (defun change-major-mode-hook ()
;;   (modify-syntax-entry ?_ "_"))


;; display unique buffer names 
(require 'uniquify) 
(setq uniquify-buffer-name-style 'forward)
