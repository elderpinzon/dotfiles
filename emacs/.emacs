;;(set-face-attribute 'default nil :height 100)
(setq font-lock-maximum-decoration t)
;;(set-foreground-color "white")
;;(set-background-color "black")
;;(set-cursor-color "red")
(setq backup-inhibited t)
(setq auto-save-default nil)
(custom-set-variables
  ;; custom-set-variables was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 '(auto-compression-mode t nil (jka-compr))
 '(case-fold-search t)
 '(current-language-environment "UTF-8")
 '(default-input-method "rfc1345")
 '(global-font-lock-mode t nil (font-lock))
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(kill-buffer "*scratch*")
 '(show-paren-mode 1 t))
(custom-set-faces
  ;; custom-set-faces was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 )
(setq load-home-init-file t) ; don't load init file from ~/.xemacs/init.el

(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))