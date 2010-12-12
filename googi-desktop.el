(setq default-directory "~/" )
(require 'org-install)
(custom-set-variables
 '(org-agenda-files (quote ("~/Dropbox/org/todo.org")))
 '(org-default-notes-file "~/Dropbox/org/notes.org")
 '(org-remember-templates
   (quote ((116 "* TODO %?\n  %u" "~/Dropbox/org/todo.org" "Tasks")
       (110 "* %u %?" "~/Dropbox/org/notes.org" "Notes")))))
