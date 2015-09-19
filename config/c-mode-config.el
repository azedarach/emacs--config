;;;; Configuration options for cc-mode
;;   Loaded by init.el

;;;; Options for default c-mode
;; ========================================
;;; Load styles using hook
(defun custom-c-mode-common-hook ()
  ;; set style
  (c-set-style "stroustrup")
  ;; set tab width and use spaces instead
  ;; of tabs for indenting
  (setq tab-width 8
	indent-tabs-mode nil)
  (setq c-basic-offset 3))

(add-hook 'c-mode-common-hook 'custom-c-mode-common-hook)
