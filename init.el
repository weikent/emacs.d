;;; init.el --- 

;; Copyright 2014 世建 魏
;;
;; Author: weikent@ubuntu
;; Version: $Id: init.el,v 0.0 2014/04/19 08:00:43 weikent Exp $
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
;;   (require 'init)

;;; Code:


;; path
(message (getenv "PATH"))
(setq path "/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/bin")
(setq path1 "/usr/local/bin")
(setenv "PATH"
	(concat
	 "/usr/local/bin" ":"
	 (getenv "PATH")
	 )
	)
(message (getenv "PATH"))


(setq homeName (substring system-name 0 (string-match "teki" system-name)))
(setq homePath (concat "/Users/" homeName))
(setq pathModule1 (concat homePath "/emacs/PP4E/Preview"))
(setq pathModule2 (concat homePath "/emacs/python"))
(setq pathModule3 (concat homePath "/emacs/project"))
(setq pathModule4 (concat homePath "/emacs/python/pythonFirstGame"))
(setq pythonModulePath (concat pathModule1 ":" pathModule2 ":" pathModule3 ":" pathModule4))
;;设置PYTHONPATH  export PYTHONPATH=/Users/weishijian/emacs/python:$PYTHONPATH in .bash_profile or other environment variables set files.
;; HOME 路径不能用 ~/... 这样添加不成功，
(setenv "PYTHONPATH" pythonModulePath)

;; -*- coding: utf-8 -*-
(setq emacs-load-start-time (current-time))
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

;;----------------------------------------------------------------------------
;; Which functionality to enable (use t or nil for true and false)
;;----------------------------------------------------------------------------
(setq *macbook-pro-support-enabled* t)
(setq *is-a-mac* (eq system-type 'darwin))
(setq *is-carbon-emacs* (and *is-a-mac* (eq window-system 'mac)))
(setq *is-cocoa-emacs* (and *is-a-mac* (eq window-system 'ns)))
(setq *win32* (eq system-type 'windows-nt) )
(setq *cygwin* (eq system-type 'cygwin) )
(setq *linux* (or (eq system-type 'gnu/linux) (eq system-type 'linux)) )
(setq *unix* (or *linux* (eq system-type 'usg-unix-v) (eq system-type 'berkeley-unix)) )
(setq *linux-x* (and window-system *linux*) )
(setq *xemacs* (featurep 'xemacs) )
(setq *emacs23* (and (not *xemacs*) (or (>= emacs-major-version 23))) )
(setq *emacs24* (and (not *xemacs*) (or (>= emacs-major-version 24))) )

;----------------------------------------------------------------------------
; Functions (load all files in defuns-dir)
; Copied from https://github.com/magnars/.emacs.d/blob/master/init.el
;----------------------------------------------------------------------------
(setq defuns-dir (expand-file-name "~/.emacs.d/defuns"))
(dolist (file (directory-files defuns-dir t "\\w+"))
  (when (file-regular-p file)
      (load file)))

(defconst my-emacs-path           "~/.emacs.d/" "我的emacs相关配置文件的路径")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (defconst my-emacs-my-lisps-path  (concat my-emacs-path "lisps/") "我自己写的emacs lisp包的路径") ;;
;; (defconst my-emacs-lisps-path     (concat my-emacs-path "lisps/") "我下载的emacs lisp包的路径")   ;;
;; (defconst my-emacs-template-path  (concat my-emacs-lisps-path "template/templates") "")	     ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'cl)

;; 把`my-emacs-lisps-path'的所有子目录都加到`load-path'里面
(load (concat my-emacs-path "my-subdirs"))
(my-add-subdirs-to-load-path "~/.emacs.d/")
;;(my-add-subdirs-to-load-path my-emacs-my-lisps-path)



;; 一些基本的小函数
(require 'ahei-misc)

;; 利用`eval-after-load'加快启动速度的库
;; 用eval-after-load避免不必要的elisp包的加载
;; http://emacser.com/eval-after-load.htm
(require 'eval-after-load)

(require 'util)


(defmacro def-redo-command (fun-name redo undo)
  "Make redo command."
  `(defun ,fun-name ()
     (interactive)
     (if (equal last-command ,redo)
         (setq last-command 'undo)
       (setq last-command nil))
     (call-interactively ,undo)
     (setq this-command ,redo)))
(def-redo-command redo 'redo 'undo)



;----------------------------------------------------------------------------
; Load configs for specific features and modes
;----------------------------------------------------------------------------

(require 'init-modeline)

;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------
;;(require 'cl-lib)
(require 'init-compat)
(require 'init-utils)
(require 'init-site-lisp) ;; Must come before elpa, as it may provide package.el

(require 'init-elpa)

(require 'init-elget)
(require 'init-company)
(require 'init-auto-complete)
(require 'init_initjedi)
(require 'init-color-theme)
(require 'init-template)
(require 'init-dired)
;; (defun cedet-hook () **/
;;   (require 'init-cedet) **/
;;   (ecb-activate)) **/

;; (add-hook 'c-mode-common-hook 'cedet-hook) **/
(require 'init-cedet)


;; (require 'init-doxygen)
(require 'init-doxymacs)
;;(require 'init-multi-web-mode)
(require 'init-js2-mode)
;;(require 'init-moz)
(require 'init-web-mode)
(require 'init-zencoding)
(require 'init-rainbow)
(require 'init-yasnippet)
(require 'init-C)
(require 'init-ido)
;;(require 'init-tramp)
(require 'init-maxframe)
;; 用一个很大的kill ring. 这样防止我不小心删掉重要的东西
(setq kill-ring-max 200)

;; 方便的在kill-ring里寻找需要的东西
(require 'browse-kill-ring-settings)

;; 显示行号
(require 'linum-settings)
;; 高亮当前行
(require 'hl-line-settings)

(require 'init-font)
(require 'highlight-symbol-settings)
(require 'my-global-key-settings)
(require 'init-smex)
(require 'init-flycheck)


;;(setq-default flycheck-clang-includes '("/home/weikent/SRC/trunk/isockets/Comm_Platform/C1.1/common"))


;;(require 'init-javascript)
(provide 'init)
(eval-when-compile
  (require 'cl))



;;;;##########################################################################
;;;;  User Options, Variables
;;;;##########################################################################





;;; init.el ends here
