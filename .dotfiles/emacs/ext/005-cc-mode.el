(require 'cc-mode)


(defun my-build-tab-stop-list (width)   
  (let ((num-tab-stops (/ 80 width))               
	(counter 1)               
	(ls nil))               
    (while (<= counter num-tab-stops)                 
      (setq ls (cons (* width counter) ls))         
      (setq counter (1+ counter)))   
    (set (make-local-variable 'tab-stop-list) 
	 (nreverse ls)))) 

(c-add-style "mycodingstyle"
	     '((c-basic-offset . 4)
	       (c-tab-always-indent           . t)
	       (c-hanging-braces-alist        . ((block-open)
						 (brace-list-open)
						 (substatement-open)
						 (defun-open before after)
						 (defun-close before after)
						 ))
	       (c-hanging-colons-alist        . ((member-init-intro before)
						 (inher-intro)
						 (case-label)
						 (access-label      after)
						 (label             after)
						 (access-key        after)))
	       (c-cleanup-list                . (scope-operator
						 empty-defun-braces
						 defun-close-semi))
	       (c-offsets-alist               . ((arglist-close        .  0)
						 ;; (case-label           . 4)
						 ;; (statement-case-intro . 4)
						 ;; (access-label         . -4)
						 ;; (label                . -)
						 (substatement-open    . 0)
						 (inline-open		   . 0)
						 (block-open           . 0)
						 (innamespace          . 0)
						 ;; (knr-argdecl-intro    . -)))
						 
						 ))))



(defun my-c-mode-common-hook ()   
  (setq tab-width 4)
  (my-build-tab-stop-list tab-width)   
  (setq c-basic-offset tab-width)) 

(defun my-c++-mode-hook ()
  (c-set-style "mycodingstyle"))


;; add hook
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)
(add-hook 'c-mode-common-hook 'my-c++-mode-hook)


(add-hook 'c-mode-hook 
   '(lambda () 
      (gtags-mode t)
      (add-hook 'before-save-hook #'whitespace-cleanup)
      ))

(add-hook 'c++-mode-hook 
   '(lambda () 
      (gtags-mode t)
      (add-hook 'before-save-hook #'whitespace-cleanup)
      ))
		  
