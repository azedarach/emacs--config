;;;; Configuration options for python-mode
;;   Loaded by init.el

;;;; Options for default python-mode
;; ========================================
;;; Load styles using hook
(defun custom-python-mode-hook ()
  ;; set tab width and use spaces instead
  ;; of tabs for indenting
  (setq tab-width 8
	indent-tabs-mode nil)
  (setq python-indent-offset 4))

(add-hook 'python-mode-hook 'custom-python-mode-hook)
