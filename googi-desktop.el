(setq default-directory "~/" )
(require 'org-install)
(custom-set-variables
 '(org-agenda-files (quote ("~/Dropbox/org/todo.org")))
 '(org-default-notes-file "~/Dropbox/org/notes.org")
 '(org-remember-templates
   (quote ((116 "* TODO %?\n  %u" "~/Dropbox/org/todo.org" "Tasks")
           (110 "* %u %?" "~/Dropbox/org/notes.org" "Notes")))))
(defvar user-temporary-file-directory
  "/home/googi/tmp/.emacslitter")
(make-directory user-temporary-file-directory t)
(setq backup-by-copying t)
(setq backup-directory-alist
      `(("." . ,user-temporary-file-directory)
        (,tramp-file-name-regexp nil)))
(setq auto-save-list-file-prefix
      (concat user-temporary-file-directory ".auto-saves-"))
(setq auto-save-file-name-transforms
      `((".*" ,user-temporary-file-directory t)))
(setq org-mobile-directory "~/Dropbox/MobileOrg")
(setq org-mobile-inbox-for-pull "~/Dropbox/org/from-mobile.org")
