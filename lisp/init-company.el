(require 'company)
(autoload 'company-mode "company" nil t)
(add-hook 'after-init-hook 'global-company-mode)

;; does not matter, I never use this hotkey
(global-set-key (kbd "C-c o") 'company-complete)
(setq company-require-match nil)
(setq company-idle-delay 0.2)
(setq company-clang-arguments '("-I/home/weikent/SRC/trunk/isockets/Comm_Platform/C1.1/common"
				;; "-I/usr/include/c++/4.7"
				;; "-I/usr/include/c++/4.7/i686-linux-gnu"
				;; "-I/usr/include/c++/4.7/backward"
				;; "-I/usr/lib/gcc/i686-linux-gnu/4.7/include"
				;; "-I/usr/local/include"
				;; "-I/usr/include/python2.7"
				;; "-I/usr/lib/gcc/i686-linux-gnu/4.7/include-fixed"
				;; "-I/usr/include/i386-linux-gnu"
				;; "-I/usr/include" ))
))

;; (if (fboundp 'evil-declare-change-repeat)
;;     (mapc #'evil-declare-change-repeat
;;           '(company-complete-common
;;             company-select-next
;;             company-select-previous
;;             company-complete-selection
;;             )))

;; (eval-after-load 'company
;;   '(progn
;;      (add-to-list 'company-backends 'company-cmake)
;;      ;; I donot like the downcase code in company-dabbrev
;;      (setq company-backends (delete 'company-dabbrev company-backends))
;;      (setq company-begin-commands '(self-insert-command))
;;      (setq company-idle-delay 0.2)
;;      ;; (setq company-clang-arguments '("-I/usr/include/c++/4.7"
;;      ;; 				     "-I/usr/include/c++/4.7/i686-linux-gnu"
;;      ;; 				     "-I/usr/include/c++/4.7/backward"
;;      ;; 				     "-I/usr/lib/gcc/i686-linux-gnu/4.7/include"
;;      ;; 				     "-I/usr/local/include"
;;      ;; 				     "-I/usr/include/python2.7"
;;      ;; 				     "-I/usr/lib/gcc/i686-linux-gnu/4.7/include-fixed"
;;      ;; 				     "-I/usr/include/i386-linux-gnu"
;;      ;; 				     "-I/usr/include" ))
;;      ))

(provide 'init-company)
