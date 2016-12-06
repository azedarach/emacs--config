;;;; Configure options for sh-mode
;;   Loaded by init.el

;;;; Options for general sh-mode
(defun custom-sh-mode-hook ()
  (setq tab-width 8
	indent-tabs-mode nil))

(add-hook 'sh-mode-hook 'custom-sh-mode-hook)
