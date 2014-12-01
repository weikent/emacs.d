
;;; init-org.el --- 

;; Copyright 2014 世建 魏
;;
;; Author: weikent@localhost
;; Version: $Id: init-org.el,v 0.0 2014/05/13 00:57:35 weikent Exp $
;; Keywords: 
;; X-URL: not distributed yet

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

;;; Commentary:

;; 

;; Put this file into your load-path and the following into your ~/.emacs:
;;   (require 'init-org)

;;; Code:



;; (setq load-path (cons "~/emacs/lisps/org" load-path))
;; (setq load-path (cons "~/lib/emacs-lisp/org-7.01h/contrib/lisp" load-path))
;;(add-to-list 'load-path "~/org-mode/lisp")
;;(add-to-list 'load-path "~/org-mode/contrib/lisp")
(message "start org-mode")
(require 'org)

(setq org-log-done t) 

;;(require 'org-install)
;;(require 'org-publish)




(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock)
(add-hook 'org-mode-hook 
          (lambda () (setq truncate-lines nil)))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

;;http://orgmode.org/manual/Export-settings.html
;;http://orgmode.org/manual/Publishing-options.html
(setq org-export-with-section-numbers 10)
;; 设置在org-mode里面看到语法高亮的效果
(require 'htmlize)
(setq org-src-fontify-natively t)
;; (org-block-begin-line
;;  ((t (:underline "#A7A6AA" :foreground "#008ED1" :background "#EAEAFF"))))
;; (org-block-background
;;  ((t (:background "#FFFFEA"))))
;; (org-block-end-line
;;  ((t (:overline "#A7A6AA" :foreground "#008ED1" :background "#EAEAFF"))))
;; (defface org-block-begin-line
;;   '((t (:underline "#A7A6AA" :foreground "#008ED1" :background "#EAEAFF")))
;;   "Face used for the line delimiting the begin of source blocks.")

;; (defface org-block-background
;;   '((t (:background "#FFFFEA")))
;;   "Face used for the source block background.")

;; (defface org-block-end-line
;;   '((t (:overline "#A7A6AA" :foreground "#008ED1" :background "#EAEAFF")))
;;   "Face used for the line delimiting the end of source blocks.")



(setq org-publish-project-alist
      '(("Org"
         :base-directory "/media/psf/Home/KuaiPan/Org_Git/Org_Org"
         :publishing-directory "/media/psf/Home/KuaiPan/Org_Git/Org_Publish"
         :base-extension "org"
         :recursive t
         :publishing-function org-publish-org-to-html
         :auto-index nil
         :index-filename "index.org"
         :index-title "index"
         :link-home "index.html"
         :section-numbers 10
         :htmlized-source t
         :style "<link rel=\"stylesheet\" href=\"../emacs.css\" type=\"text/css\"/>"
         )
        ("images"
         :base-directory "/media/psf/Home/KuaiPan/Org_Git/Org_Org"
         :publishing-directory "/media/psf/Home/KuaiPan/Org_Git/Org_Publish"
         :recursive t
         :base-extension "png\\|jpeg\\|gif"
         :publishing-function org-publish-attachment
         )
        ("Css"
         :base-directory "~/.emacs.d/Org_Css/"
         :publishing-directory "/media/psf/Home/KuaiPan/Org_Git/Org_Publish"
         :recursive t
         :base-extension "css"
         :publishing-function org-publish-attachment
         )
        ("publish" 
         :components ("Org" "images" "Css")
         :author "wei.shijian@gmail.com"
         )))

(setq org-startup-indented t)


(autoload 'iimage-mode "iimage" "Support Inline image minor mode." t)
(autoload 'turn-on-iimage-mode "iimage" "Turn on Inline image minor mode." t)

(defun org-toggle-iimage-in-org ()
  "display images in your org file"
  (interactive)
  (if (face-underline-p 'org-link)
      (set-face-underline-p 'org-link nil)
    (set-face-underline-p 'org-link t))
  (iimage-mode))

;; iimage mode
(autoload 'iimage-mode "iimage" "Support Inline image minor mode." t)
(autoload 'turn-on-iimage-mode "iimage" "Turn on Inline image minor mode." t)
;; 然后就可以用命令

;; M-x iimage-mode RET
;; 在当前模式里启动 iimage 这个 minor mode。

;; 如果想在 Emacs org 模式里启用 iimage 模式，把下面的代码放到配置文件里，则可以在 Emacs Org 的编辑区里显示图片。

;; (defun org-toggle-iimage-in-org ()
;;   "display images in your org file"
;;   (interactive)
;;   (if (face-underline-p 'org-link)
;;       (set-face-underline-p 'org-link nil)
;;     (set-face-underline-p 'org-link t))
;;   (iimage-mode))

;; (global-set-key (read-kbd-macro "<C-tab>") 'my-insert-tab) 

(provide 'init-org)
(eval-when-compile
  (require 'cl))



;;;;##########################################################################
;;;;  User Options, Variables
;;;;##########################################################################





;;; init-org.el ends here



;;  "<style type='text/css'>

;;     body {
;;         padding: 50px 150px 50px 150px;
;;         border-style: solid;
;;         border-width: 20pt;
;;         border-color: #790000;
;;     }

;;     body, p, li {
;;             /*font-family: monospace;*/
;;                 font-family: \"Microsoft YaHei\" ! important;
;;             font-size: 1em;
;;     }

;; .outline-2{
;;     margin-left:30px;
;; }
;; .outline-text-2{
;;     margin-left:20px;
;; }
;; .outline-3{
;;     margin-left:40px;
;; }
;; .outline-4{
;;     margin-left:50px;
;; }
;; .outline-5{
;;     margin-left:60px;
;; }
;; /*
;; p{
;;     margin-left:10px;
;; }
;; */
;; ul{
;;     margin-left:-20px;
;; }
;; li{
;;     color:blue;
;; }

;; </style>"


;;这是一个可以引用外部css链接的方式，但由于无法确定css的位置，所以放弃了
;;"<link rel=\"stylesheet\" href=\"Org_Css/emacs.css\" type=\"text/css\"/>"