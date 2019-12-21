(package-initialize)

;;(load-file (convert-standard-filename "~/.emacs-configs.d/init.el"))
;;(load-file (convert-standard-filename "~/.custom-configs/emacs.d/init.el"))
(load-file (convert-standard-filename "~/.dotfiles/emacs/init.el"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(case-fold-search t)
 '(column-number-mode t)
 '(company-auto-complete t)
 '(confirm-kill-emacs (quote yes-or-no-p))
 '(current-language-environment "UTF-8")
 '(custom-safe-themes
   (quote
    ("2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "e39ff005e524c331b08d613109bff0b55fc21c64914c4a243faa70f330015389" "274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(default-input-method "utf-8")
 '(global-font-lock-mode t)
 '(global-visual-line-mode t)
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(org-agenda-files
   (quote
    ("/home/bartek/office/agenda/lifelog.org" "/home/bartek/office/agenda/logzilla.org" "/home/bartek/office/agenda/work.org")))
 '(package-selected-packages
   (quote
    (bison-mode counsel-gtags projectile rtags jinja2-mode emacs-setup solarized-theme zerodark-theme dracula-theme w3m muse god-mode magit markdown-mode flucui-themes dired-hide-dotfiles nova-theme elscreen yaml-mode ## org-clock-csv python-mode smart-mode-line company-quickhelp elpy)))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(show-parent-style (quote mixed))
 '(tab-always-indent t)
 '(tool-bar-mode nil)
 '(transient-mark-mode t)
 '(w3m-home-page "http://duckduckgo.com/html")
 '(which-function-mode t))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight bold :height 120 :width normal :family "DejaVu Sans Mono" :foundry "PfEd")))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#002b36" :foreground "#839496" :inverse-video nil :strike-through nil :overline nil :underline nil :slant normal :weight bold :height 113 :width normal :foundry "PfEd" :family "Noto Sans Mono")))))

;;(menu-bar-mode -1)
(load-theme 'solarized-dark)
