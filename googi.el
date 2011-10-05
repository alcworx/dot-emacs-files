(let ((default-directory "/usr/share/emacs/site-lisp/"))
      (normal-top-level-add-subdirs-to-load-path))
(add-to-list 'load-path "~/.emacs.d/configs/")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/")
(let ((default-directory "~/.emacs.d/configs/"))
  (normal-top-level-add-subdirs-to-load-path))

(setq package-archives '(("ELPA" . "http://tromey.com/elpa/") 
                           ("gnu" . "http://elpa.gnu.org/packages/")))


(require 'pavel-python)
(require 'pavel-lisp)
(require 'pavel-ocaml)
(require 'pavel-haskell)
(require 'quack)


(require 'pavel-latex)
(require 'pavel-org)

(require 'pavel-w3m)
;;(require 'mail)


;;(require 'pavel-color-theme)
(require 'my-keys-minor-mode)
(require 'pavel-btools)

(require 'smex)
(smex-initialize)

(setq auto-mode-alist (cons '("\\.[fF]$" . f90-mode) auto-mode-alist))
(setq default-input-method "russian-computer")



