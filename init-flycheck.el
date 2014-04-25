;;; init-flycheck.el --- 

;; Copyright 2014 魏世建
;;
;; Author: weikent@ubuntu
;; Version: $Id: init-flycheck.el,v 0.0 2014/04/24 00:11:44 weikent Exp $
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
;;   (require 'init-flycheck)

;;; Code:

(add-hook 'after-init-hook #'global-flycheck-mode)

(setq-default flycheck-pylintrc "~/.emacs.d/.pylintrc")

(setq-default flycheck-clang-standard-library "libc++")
(setq-default flycheck-clang-include-path '("/usr/include/clang/3.0/include"
					    "/home/weikent/SRC/trunk/isockets/Comm_Platform/C1.1/common"
					    "/usr/include/c++/4.7"
					    "/usr/include/c++/4.7/i686-linux-gnu"
					    "/usr/include/c++/4.7/backward"
					    "/usr/lib/gcc/i686-linux-gnu/4.7/include"
					    "/usr/local/include"
					    "/home/weikent/SRC/trunk/isockets/Comm_Platform/C/common"
					    "/home/weikent/SRC/trunk/isockets/Comm_Platform/C1.1/common"
					    "/usr/include/python2.7"
					    "/usr/lib/gcc/i686-linux-gnu/4.7/include-fixed"
					    "/usr/include/i386-linux-gnu"
					    "/usr/include"
))



(provide 'init-flycheck)
(eval-when-compile
  (require 'cl))



;;;;##########################################################################
;;;;  User Options, Variables
;;;;##########################################################################





;;; init-flycheck.el ends here
