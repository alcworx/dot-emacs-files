(defvar my-keys-minor-mode-map (make-keymap) "my-keys-minor-mode keymap.")

(define-key my-keys-minor-mode-map "\C-x\C-m" 'smex)
(define-key my-keys-minor-mode-map "\C-c\C-m" 'execute-extended-command)
;;(define-key my-keys-minor-mode-map "M-X" 'smex-major-mode-commands)
(define-key my-keys-minor-mode-map "\C-cv" 'eval-buffer)
(define-key my-keys-minor-mode-map (kbd "<C-tab>") 'ido-switch-buffer)
(define-key my-keys-minor-mode-map (kbd "<backtab>") 'other-window)
(define-key my-keys-minor-mode-map "\C-w" 'kill-word-or-region)
;; (define-key my-keys-minor-mode-map "\C-m" 'return)
(define-key my-keys-minor-mode-map "\C-t" 'delete-backward-char)
(define-key my-keys-minor-mode-map "\C-q" 'undo)
(define-key my-keys-minor-mode-map "\C-x\C-k" 'kill-buffer)
(define-key my-keys-minor-mode-map (kbd "<C-tab>") 'ido-switch-buffer)
(define-key my-keys-minor-mode-map [f5] 'refresh-file)

(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  t " my-keys" 'my-keys-minor-mode-map)

(my-keys-minor-mode 1)
(defun my-minibuffer-setup-hook ()
    (my-keys-minor-mode 0))
(add-hook 'minibuffer-setup-hook 'my-minibuffer-setup-hook)

(defun kill-word-or-region (&optional arg)
  (interactive "P")
  (if (use-region-p)
      (kill-region (region-beginning) (region-end))
    (backward-kill-word 1)))
(defun comment-line-or-region (&optional arg)
  (interactive "P")
  (if (use-region-p)
      (comment-or-uncomment-region (region-beginning) (region-end))
    (backward-kill-word 1)))

(defun refresh-file ()
  (interactive)
  (revert-buffer t t t)
  )


(provide 'my-keys-minor-mode)
