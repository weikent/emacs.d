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


(setq org-publish-project-alist
      '(("note-org"
         :base-directory "~/StudyNotes/org/org"
         :publishing-directory "~/StudyNotes/org/publish"
         :base-extension "org"
         :recursive t
         :publishing-function org-publish-org-to-html
         :auto-index nil
         :index-filename "index.org"
         :index-title "index"
         :link-home "index.html"
         :section-numbers nil
         :style "<link rel=\"stylesheet\"
    href=\"./style/emacs.css\"
    type=\"text/css\"/>")
        ("note-static"
         :base-directory "~/StudyNotes/org/org"
         :publishing-directory "~/StudyNotes/org/publish"
         :recursive t
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|swf\\|zip\\|gz\\|txt\\|el"
         :publishing-function org-publish-attachment)
        ("note" 
         :components ("note-org" "note-static")
;;         :author "shijian.wei@gmail.com"
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

(defun org-toggle-iimage-in-org ()
  "display images in your org file"
  (interactive)
  (if (face-underline-p 'org-link)
      (set-face-underline-p 'org-link nil)
      (set-face-underline-p 'org-link t))
  (iimage-mode))

(global-set-key (read-kbd-macro "<C-tab>") 'my-insert-tab) 

(provide 'init-org)
(eval-when-compile
  (require 'cl))



;;;;##########################################################################
;;;;  User Options, Variables
;;;;##########################################################################





;;; init-org.el ends here
