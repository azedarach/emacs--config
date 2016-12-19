;;;; Configuration options for mathematica-mode
;;   Loaded by init.el

;;;; Options for default mathematica-mode
;; ========================================
;;; No indentation
(defun mathematica-mode-hook ()
  (if (string-suffix-p ".m" buffer-file-name)
      (setq tab-width 8
	    indent-tabs-mode nil)))

(add-hook 'text-mode-hook 'mathematica-mode-hook)

(add-to-list 'auto-mode-alist '("\\.m\\'" . text-mode))
