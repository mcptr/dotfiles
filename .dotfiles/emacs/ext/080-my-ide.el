;; (require 'etags-table)
;; (require 'etags-select)
;; (setq etags-table-search-up-depth 10)

(mapc 'load-library (file-expand-wildcards (concat custom-emacs-directory "ext/ide/*.elc")))
