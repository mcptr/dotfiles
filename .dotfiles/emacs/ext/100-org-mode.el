(require 'org)

(setq org-footnote-auto-adjust t)
(setq org-agenda-files '("~/office/agenda" "~/org"))

(define-key org-mode-map (kbd "<C-S-right>") nil)
(define-key org-mode-map (kbd "<S-left>") 'org-do-promote)
(define-key org-mode-map (kbd "<S-right>") 'org-do-demote)

(define-key org-mode-map (kbd "<C-S-left>") 'org-promote-subtree)
(define-key org-mode-map (kbd "<C-S-right>") 'org-demote-subtree)

(setq org-agenda-time-grid nil)



;; Some ideas taken from
;; https://blog.aaronbieber.com/2016/09/24/an-agenda-for-life-with-org-mode.html

;; (defun my-org-skip-subtree-if-habit ()
;;   "Skip an agenda entry if it has a STYLE property equal to habit."
;;   (let ((subtree-end (save-excursion (org-end-of-subtree t))))
;;     (if (string= (org-entry-get nil "STYLE") "habit")
;;         subtree-end
;;       nil)))


;; (defun my-org-skip-subtree-if-priority (priority)
;;   "Skip an agenda subtree if it has a priority of PRIORITY.
;; PRIORITY may be one of the characters ?A, ?B, or ?C."
;;   (let ((subtree-end (save-excursion (org-end-of-subtree t)))
;;         (pri-value (* 1000 (- org-lowest-priority priority)))
;;         (pri-current (org-get-priority (thing-at-point 'line t))))
;;     (if (= pri-value pri-current)
;;         subtree-end
;;       nil)))

;; (setq org-agenda-custom-commands
;;       '(("c" "Simple agenda view"
;;          ((tags "PRIORITY=\"A\""
;;                 ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
;;                  (org-agenda-overriding-header "High-priority unfinished tasks:")))
;;           (agenda "")
;;           (alltodo ""
;;                    ((org-agenda-skip-function
;;                      '(or (my-org-skip-subtree-if-priority ?A)
;;                           (org-agenda-skip-if nil '(scheduled deadline))))))))
;; 	("d" "Daily agenda and all TODOs"
;;          ((tags "PRIORITY=\"A\""
;;                 ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
;;                  (org-agenda-overriding-header "High-priority unfinished tasks:")))
;;           (agenda "" ((org-agenda-ndays 1)))
;;           (alltodo ""
;;                    ((org-agenda-skip-function '(or (my-org-skip-subtree-if-habit)
;;                                                    (my-org-skip-subtree-if-priority ?A)
;;                                                    (org-agenda-skip-if nil '(scheduled deadline))))
;;                     (org-agenda-overriding-header "ALL normal priority tasks:"))))
;;          ((org-agenda-compact-blocks t)))))
