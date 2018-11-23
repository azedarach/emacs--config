;;;; Configuration options for julia-mode
;;   Loaded by init.el

(defun custom-julia-mode-hook ()
  ;; various customisations from
  ;; https://tpapp.github.io/post/emacs-julia-customizations/
  ;; highlight comment keywords
  (font-lock-add-keywords nil
			  '(("\\<\\(FIXME\\|TODO\\|QUESTION\\|NOTE\\)"
			     1 font-lock-warning-face t)))
  ;; highlight after column 80
  (set-fill-column 80)
  )

(add-hook `julia-mode-hook 'custom-julia-mode-hook)
