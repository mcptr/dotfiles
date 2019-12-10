(require 'sr-speedbar)
(setq speedbar-mode-hook
      '(lambda ()
	 (interactive)
	 (other-frame 0)))

(setq sr-speedbar-right-side nil)
(setq speedbar-initial-expansion-list-name "quick buffers")
