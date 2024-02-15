(require 'package)
(package-initialize)

;;;; Impostazioni varie
(setq current-language-environment "UTF-8")                   ; UTF-8
(setq visible-bell 1)                                         ; Niente campana
(display-time-mode 1)				  ; Mostra l'orologio
(setq display-time-mode t)                        ; Orologio a 24 ore
(setq display-time-24hr-format t)                 ;      |
(setq set-language-environment "UTF-8")           ; Codifica in UTF-8
(setq global-display-line-numbers-mode 1)	  ; Mostra i numeri di linea
(tool-bar-mode -1)

;(add-to-list 'default-frame-alist '(font . "IosevkaTermCurly-14" ))

;; Inizializzazione MELPA
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  )
