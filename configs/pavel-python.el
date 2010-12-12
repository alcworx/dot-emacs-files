;; (when (load "flymake" t)
;;   (defun flymake-pylint-init ()
;;     (let* ((temp-file (flymake-init-create-temp-buffer-copy
;;                        'flymake-create-temp-inplace))
;;            (local-file (file-relative-name
;;                         temp-file
;;                         (file-name-directory buffer-file-name))))
;;       (list "epylint" (list local-file))))

;;   (add-to-list 'flymake-allowed-file-name-masks
;;                '("\\.py\\'" flymake-pylint-init)))

;;(add-hook 'python-mode-hook 'flymake-mode)
(require 'python-mode)
   (setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
   (setq interpreter-mode-alist (cons '("python" . python-mode)
                                      interpreter-mode-alist))
   (autoload 'python-mode "python-mode" "Python editing mode." t)

(require 'pymacs)
(pymacs-load "ropemacs" "rope-")
(provide 'pavel-python)