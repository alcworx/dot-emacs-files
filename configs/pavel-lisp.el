(require 'slime)
(add-hook 'lisp-mode-hook (lambda () (slime-mode t)))
(add-hook 'inferior-lisp-mode-hook (lambda () (inferior-slime-mode t)))
;; Optionally, specify the lisp program you are using. Default is
;; "lisp"
(setq inferior-lisp-program "yourlisp")
(provide 'pavel-lisp)
