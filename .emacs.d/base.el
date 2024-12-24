(require 'package)
(package-initialize)

;;;; Impostazioni varie

;; Vai a tutto schermo
;; (toggle-frame-fullscreen)

;; UTF-8
(setq set-language-environment "Italian")

;; Niente campana, ma flash visivo
(setq visible-bell 1)

;; Mostra l'orologio...
(display-time-mode 1)
;; ... di 24 ore
(setq display-time-mode t)
(setq display-time-24hr-format t)

;; Nascondi i numeri di linea...
(setq global-display-line-numbers-mode 0)
(setq line-number-mode 0)
;; ... ma mostrali in modalità programmazione
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

;; Nascondi la barra degli strumenti
(tool-bar-mode -1)

;; Fai un soft wrap
(setq visual-line-mode t)

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
