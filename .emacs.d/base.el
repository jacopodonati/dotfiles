(require 'package)
(package-initialize)

;;;; Impostazioni varie
;(setq current-language-environment "UTF-8")                   ; UTF-8
;(setq visible-bell 1)                                         ; Niente campana
(menu-bar-mode -1)				  ; Niente menù
(tool-bar-mode -1)				  ; Niente toolbar
(display-time-mode 1)				  ; Mostra l'orologio
(setq display-time-mode t)                        ; Orologio a 24 ore
(setq display-time-24hr-format t)                 ;      |
(setq set-language-environment "UTF-8")           ; Codifica in UTF-8
(setq global-display-line-numbers-mode 1)	  ; Mostra i numeri di linea
(add-hook 'after-init-hook #'global-emojify-mode) ; Abilita le emoji
(add-to-list 'default-frame-alist '(fullscreen . maximized))  ; Inizia
							      ; con la
							      ; finestra
							      ; massimizzata

; Idealmente dovrebbe usare expand-file-name e selezionare in
; automatico la cartella .emacs.d.  Ma non funziona.
(setq ring-bell-function (lambda ()
			   (play-sound-file "~/.emacs.d/beep.wav")))

;; Font di default.
(set-face-attribute 'default nil
		    :family "Iosevka" :foundry "outline" :height 140)

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
