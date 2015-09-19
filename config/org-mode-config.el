;;;; Configuration options for org-mode
;;   Loaded by init.el

(require 'org)

;;;; Key mappings
;; ========================================
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;;;; Location of org files
;; ========================================
(setq org-agenda-files (list "~/org/index/org"
			     "~/org/phd"
			     "~/org/projects"))

;;;; Agenda items configuration
;; ========================================
(setq org-todo-keywords
      '((sequence "TODO" "|" "DONE")
	(sequence "REPORT" "BUG" "KNOWNCAUSE" "|" "FIXED")
	(sequence "|" "CANCELLED")))
