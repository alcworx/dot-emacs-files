(let ((default-directory "/usr/share/emacs/site-lisp/"))
      (normal-top-level-add-subdirs-to-load-path))
(add-to-list 'load-path "~/.emacs.d/configs/")
(let ((default-directory "~/.emacs.d/configs/"))
      (normal-top-level-add-subdirs-to-load-path))


(require 'pavel-python)
(require 'pavel-lisp)
(require 'pavel-ocaml)
(require 'pavel-haskell)
(require 'quack)


(require 'pavel-latex)
(require 'pavel-org)

(require 'pavel-w3m)
(require 'mail)


;;(require 'pavel-color-theme)
(require 'my-keys-minor-mode)
(require 'pavel-btools)



