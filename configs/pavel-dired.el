(add-hook 'dired-load-hook
            (function (lambda () (load "dired-x"))))
(require 'dired-colors)
(require 'dired+)
(provide 'pavel-dired)
