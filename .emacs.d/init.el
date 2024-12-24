(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))

(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

(load-user-file "base.el")
(load-user-file "functions.el")
(load-user-file "mac.el")
(load-user-file "calendar.el")
(load-user-file "shortcuts.el")
;; (load-user-file "writing.el")
;; (load-user-file "org.el")
(load-user-file "c.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(gnus-select-method '(nnhackernews ""))
 '(package-selected-packages
   '(company org-drill-table yaml-mode simple-httpd org org-drill flycheck helm gruvbox-theme nnhackernews lem markdown-toc all-the-icons web-beautify emmet-mode web-mode toml toml-mode solarized-theme markdown-mode projectile auctex auto-complete magit modus-themes)))

;; Roba messa in automatico


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "SF Mono" :foundry "nil" :slant normal :weight regular :height 120 :width normal)))))
