 (setq auto-mode-alist
      (cons '("SConstruct" . python-mode) auto-mode-alist))
 (setq auto-mode-alist
       (cons '("SConscript" . python-mode) auto-mode-alist))
 (setq auto-mode-alist
       (cons '(".conkerorrc" . javascript-mode) auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.cu$" . c++-mode))
 (setq auto-mode-alist
       (cons '("wscript" . python-mode) auto-mode-alist))
 (setq auto-mode-alist
       (cons '("PKGBUILD" . shell-script-mode) auto-mode-alist))
(provide 'pavel-btools)
