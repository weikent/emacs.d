(require 'auto-complete)  
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-1.4/ac-dict/")  
;;(add-to-list 'ac-user-dictionary-files "~/.emacs.d/el-get/auto-complete/dict/guotf.dict")  
(require 'auto-complete-config)  
(ac-config-default)


(provide 'init-auto-complete)
