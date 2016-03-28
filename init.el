;;;; Emacs configuration
;;   For older versions of Emacs this
;;   file needs to be loaded by ~/.emacs

;;;; Useful portability functions
;; =============================================
;;; Define user-emacs directory
;;  Provide a definition of the variable
;;  user-emacs-directory in case you are
;;  trying to run on an older version
(unless (boundp 'user-emacs-directory)
  (defvar user-emacs-directory "~/.emacs.d/"
    "Directory beneath which additional per-user Emacs-specific
files are placed.
  Various programs in Emacs store information in this directory.
  Note that this should end with a directory separator.
  See also `locate-user-emacs-file'."))

;;; Function for loading all .el files in a
;;; directory
;;  Note that this isn't recursive, so doesn't
;;  load sub-directories as well
(load (expand-file-name "load-directory" user-emacs-directory))

;;;; Initial set-up options
;; =============================================
;;; Enable maximum decoration
(defconst font-lock-maximum-decoration t)

;;; Disable initial start-up message
(setq inhibit-startup-message t)

;;; Enable MELPA if possible
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

;;; Enable flycheck, if installed
(when (>= emacs-major-version 24)
  (when (package-installed-p 'flycheck)
    (add-hook 'after-init-hook #'global-flycheck-mode)))

;;;; Load user-specific configuration files
;; =============================================
;;; Load configuration files for different modes
(load-directory (expand-file-name "config"
				  user-emacs-directory))
