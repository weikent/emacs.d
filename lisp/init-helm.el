;;; init-helm.el --- 

;; Copyright 2014 weishijian
;;
;; Author: weishijian@ubuntu
;; Version: $Id: init-helm.el,v 0.0 2014/12/01 07:22:15 weishijian Exp $
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
;;   (require 'init-helm)

;;; Code:


(require 'helm-config)

(add-to-list 'load-path "~/.emacs.d/el-get/helm-cmd-t/")
(require 'helm-cmd-t)
(setq helm-ff-lynx-style-map nil
      helm-input-idle-delay 0.1
      helm-idle-delay 0.1)
;; (global-set-key (kbd "s-t") 'helm-cmd-t)


(provide 'init-helm)
(eval-when-compile
  (require 'cl))



;;;;##########################################################################
;;;;  User Options, Variables
;;;;##########################################################################





;;; init-helm.el ends here
