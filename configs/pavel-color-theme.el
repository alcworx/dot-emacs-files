(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
;;   (color-theme-standard)
;;   (color-theme-arjen)
;;     (color-theme-twilight)
     ))
(load-file "~/.emacs.d/plugins/color-theme-twilight.el")
;; select theme - first list element is for windowing system, second is for console/terminal
(setq color-theme-choices '(color-theme-zenburn color-theme-midnight))

;; test for each frame or console
(require 'cl)	
(lexical-let ( (cols color-theme-choices) )
  (defun test-win-sys (frame)
    (let ( (color-theme-is-global nil) )
      (select-frame frame)
      (eval (append '(if (window-system frame)) 
     		    (mapcar (lambda (x) (cons x nil)) cols))))))

;; hook on after-make-frame-functions
(add-hook 'after-make-frame-functions 'test-win-sys)

(provide 'pavel-color-theme)
