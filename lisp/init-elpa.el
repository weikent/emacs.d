(require 'package)
(package-initialize)



(add-to-list 'package-archives '("elpa" . "http://tromey.com/elpa/"))


;;(add-to-list 'package-archives '("elpa" . "http://tromey.com/elpa/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

;; We include the org repository for completeness, but don't normally
;; use it.
;; lock org-mode temporarily
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))

(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))



(defvar prelude-packages
  '(
;;    yasnippet
;;    company
;;    color-theme
;;    browse-kill-ring
;;    highlight-symbol
;;    web-mode
;;    flycheck
;;    tidy
;;    zencoding-mode
;;    rainbow-mode
    org
    htmlize
    )
  "A list of packages to ensure are installed at launch.")

(defun prelude-packages-installed-p ()
  (loop for p in prelude-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (prelude-packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Emacs Prelude is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p prelude-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'init-elpa)
