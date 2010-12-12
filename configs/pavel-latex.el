;; Latex packages setup
(autoload 'whizzytex-mode
          "whizzytex"
          "WhizzyTeX, a minor-mode WYSIWIG environment for LaTeX" t)
(setenv "TEXINPUTS" (concat (getenv "TEXINPUTS")))
(setq-default whizzy-viewers '(("-dvi" "xdvi") ("-ps" "gv")))
;; (require 'tex-site)
(provide 'pavel-latex)
