(require 'package)
(package-initialize)

;;("melpa" . "http://stable.melpa.org/packages/") t)


;; (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
;; 			 ;;("marmalade" . "http://marmalade-repo.org/packages/")
;; 			 ("melpa" . "http://melpa.org/packages/")))


(add-to-list 'package-archives
			 '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; (add-to-list 'package-archives
;; 			 '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(add-to-list 'package-archives
	     '("elpy" . "https://jorgenschaefer.github.io/packages/") t)

;; (add-to-list 'package-archives
;; 	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)


(package-initialize)
