(add-to-list 'load-path "~/.emacs.d/site-lisp/template/lisp")
(require 'template)  
(setq template-default-directories '("~/.emacs.d/site-lisp/template/templates"))
;;(setq template-subdirectories '("~/.emacs.d/template/templates"))  
(setq template-auto-insert t)  
(template-initialize)
(add-to-list 'template-find-file-commands  
             'ido-exit-minibuffer)


(provide 'init-template)
