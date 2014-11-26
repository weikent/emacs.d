;;; init-font.el --- 

;; Copyright 2013 weishijian
;;
;; Author: weishijian@weishijian-MacUbuntu
;; Version: $Id: my-font-settings.el,v 0.0 2013/08/07 14:04:22 weishijian Exp $
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
;;   (require 'my-font-settings)

;;; Code:


;;(set-default-font "courier 10 pitch-12")
;;(set-default-font "DejaVu Sans Mono-15")

;;(set-default-font "-unknown-AR PL UMing HK-light-normal-normal-*-17-*-*-*-*-0-iso10646-1")





(set-default-font "Inconsolata-12")

;; (when (display-graphic-p) 
;;   (setq fonts 
;;         (cond ((eq system-type 'darwin)     '("Monaco"     "STHeiti")) 
;;               ((eq system-type 'gnu/linux)  '("Menlo"     "WenQuanYi Zen Hei")) 
;;               ((eq system-type 'windows-nt) '("Consolas"  "Microsoft Yahei")))) 

;;   (setq face-font-rescale-alist '(("STHeiti" . 1.2) ("Microsoft Yahei" . 1.2) ("WenQuanYi Zen Hei" . 1.2))) 
;;   (set-face-attribute 'default nil :font 
;;                       (format "%s:pixelsize=%d" (car fonts) 14)) 
;;   (dolist (charset '(kana han symbol cjk-misc bopomofo)) 
;;     (set-fontset-font (frame-parameter nil 'font) charset 
;;                       (font-spec :family (car (cdr fonts)))))) 

(provide 'init-font)
(eval-when-compile
  (require 'cl))



;;;;##########################################################################
;;;;  User Options, Variables
;;;;##########################################################################





;;; my-font-settings.el ends here
