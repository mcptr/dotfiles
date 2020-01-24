;; LOAD: (load-file (convert-standard-filename "~/.custom-configs/emacs.d/init.el"))

(setq custom-emacs-directory "~/.dotfiles/emacs/")

(byte-recompile-directory (concat custom-emacs-directory "base") 0)
(byte-recompile-directory (concat custom-emacs-directory "lib") 0)
(byte-recompile-directory (concat custom-emacs-directory "ext") 0)
(byte-recompile-directory (concat custom-emacs-directory "ext/ide") 0)


(mapc 'load-library (file-expand-wildcards (concat custom-emacs-directory "base/*.elc")))
(mapc 'load-library (file-expand-wildcards (concat custom-emacs-directory "lib/*.elc")))
(mapc 'load-library (file-expand-wildcards (concat custom-emacs-directory "ext/*.elc")))
(mapc 'load-library (file-expand-wildcards (concat custom-emacs-directory "functions/*.elc")))
