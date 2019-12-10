(add-hook 'html-mode-hook
          (lambda()
	    (setq tab-width 4)
            (setq sgml-basic-offset 4)
            (setq indent-tabs-mode t)))
