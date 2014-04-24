;;; init-rainbow.el --- 

;; Copyright 2014 魏世建
;;
;; Author: weikent@ubuntu
;; Version: $Id: init-rainbow.el,v 0.0 2014/04/24 02:56:50 weikent Exp $
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
;;   (require 'init-rainbow)

;;; Code:
(require 'rainbow-mode)
(dolist (hook '(css-mode-hook html-mode-hook web-mode-hook sass-mode-hook))
(add-hook hook 'rainbow-turn-on))

(provide 'init-rainbow)
(eval-when-compile
  (require 'cl))



;;;;##########################################################################
;;;;  User Options, Variables
;;;;##########################################################################





;;; init-rainbow.el ends here
