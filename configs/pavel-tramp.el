(require 'tramp)
(defvar user-temporary-file-directory
  "~/.emacs-backup/")
(make-directory user-temporary-file-directory t)
(setq backup-by-copying t)
(setq backup-directory-alist
      `(("." . ,user-temporary-file-directory)
        (,tramp-file-name-regexp nil)))
(setq auto-save-list-file-prefix
      (concat user-temporary-file-directory ".auto-saves-"))
(setq auto-save-file-name-transforms
      `((".*" ,user-temporary-file-directory t)))
(add-to-list 'tramp-remote-path "~/bin")
;; (add-to-list 'tramp-remote-path "/export/home/enikolaev/bin")
;; (add-to-list 'tramp-remote-path "/scpc:agraphit:/home/enikolaev/bin")
