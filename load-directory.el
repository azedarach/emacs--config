;;;; Helper function to load all .el files
;;;; in a directory
;; ========================================
(defun load-directory (directory)
  "Load all `.el' files in DIRECTORY. Ignores sub-directories."
  (dolist (element (directory-files-and-attributes directory nil nil nil))
    (let* ((path (car element))
	   (fullpath (expand-file-name path directory))
	   (isdir (car (cdr element)))
	   (ignore-dir (or (string= path ".") (string= path ".."))))
      (cond
       ((and (eq isdir nil) (string= (substring path -3) ".el"))
	(load (file-name-sans-extension fullpath)))))))
