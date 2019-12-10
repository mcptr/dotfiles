(defun python-mode-untabify ()
  (save-excursion
    (goto-char (point-min))
    (while (re-search-forward "[ \t]+$" nil t)
      (delete-region (match-beginning 0) (match-end 0)))
    (goto-char (point-min))
    (if (search-forward "\t" nil t)
	(untabify (1- (point)) (point-max))))
  nil)

(add-hook 'python-mode-hook
	  '(lambda ()
	     (make-local-variable 'write-contents-hooks)
	     (add-hook 'write-contents-hooks 'python-mode-untabify)))

(add-hook 'python-mode-hook
	  (lambda ()
	    (setq indent-tabs-mode nil)
	    (setq tab-width 4)
	    ;; (setq python-shift-right 2)
	    ;; (setq python-shift-left 2)
	            (setq python-indent-offset 4)))
