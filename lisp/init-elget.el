;;;use the fallowing code to install el-get.

;; So the idea is that you copy/paste this code into your *scratch* buffer,
;; hit C-j, and you have a working developper edition of el-get.

;; (url-retrieve
;;  "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
;;  (lambda (s)
;;    (let (el-get-master-branch)
;;      (goto-char (point-max))
;;      (eval-print-last-sexp))))


(message "start el-get")
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

(setq my:el-get-packages
      '(
	;;cedet
	yasnippet
        ;; org-mode
        ;; org-publish
        ;;        anything ;;use helm to replace
        helm
	color-theme
	browse-kill-ring
	highlight-symbol
	web-mode
	doxymacs
        dropdown-list
        zencoding-mode
;;        htmlize  ;;版本过新。orgmode会出错。使用elpa下载老版本
        tidy
        company-mode
        flycheck
	auto-complete
	auto-complete-clang
	hexview-mode
	autopair
        color-theme
        ;;rainbow-mode    ;;现阶段2014/12/02 14:04:03  使用elget下载的htmlize.el中为空。
	jedi
;;        emms
;;        dired-sort
;;        auto-dictionnary
        dired+
        dired-lis
	dired-isearch
;;        google-maps
;;        org2blog
;;        switch-window
;;        sr-speedbar
;;        typopunct
        ))

(el-get 'sync my:el-get-packages)

;;(el-get 'sync)


(provide 'init-elget)
