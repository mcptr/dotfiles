(add-to-list 'auto-mode-alist '("\\.js$" . javascript-mode))

(defun my-build-tab-stop-list (width)
  (let ((num-tab-stops (/ 80 width))
	(counter 1)
	(ls nil))
    (while (<= counter num-tab-stops)
      (setq ls (cons (* width counter) ls))
      (setq counter (1+ counter)))
    (set (make-local-variable 'tab-stop-list)
	 (nreverse ls))))


(defun my-js-mode-common-hook ()
  (setq tab-width 4)
  (my-build-tab-stop-list tab-width)
  (setq c-basic-offset tab-width)
  (setq js-indent-level tab-width)
  (setq tab-always-indent t)
  (setq indent-tabs-mode t)
  )

;; add hook
(add-hook 'js-mode-hook 'my-js-mode-common-hook)
