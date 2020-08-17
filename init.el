(defvar bootstrap-version)

(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))


(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin:/Library/TeX/texbin"))
(setq exec-path (append exec-path '("/usr/local/bin" "/Library/TeX/texbin")))

(straight-use-package 'use-package)

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
