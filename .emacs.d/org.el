;; ORG MODE
(require 'ox-org)
(require 'org-habit)
(require 'org-edna)
(require 'org)

(org-edna-mode)

;; scorciatoie
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

(setq org-log-done t)
(setq org-agenda-dim-blocked-tasks t)
(setq org-agenda-todo-ignore-scheduled "all")
(setq org-stuck-projects (quote ("+LEVEL=2/-DONE" ("NEXT") nil "")))

;; Imposta le coordinate
(setq calendar-latitude 44.5)
(setq calendar-longitude 11.3)

(setq inhibit-splash-screen t)
(org-agenda-list)
(delete-other-windows)

;; file agenda
(setq org-agenda-files (list "~/Documents/Organizzazione/"))
;; 
;; (require 'org-bullets)
;; (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-default-notes-file "~/Documents/Organizzazione/inbox.org")
; Targets include this file and any file contributing to the agenda - up to 9 levels deep
(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))

; Use full outline paths for refile targets - we file directly with IDO
(setq org-refile-use-outline-path t)

; Targets complete directly with IDO
(setq org-outline-path-complete-in-steps nil)

; Allow refile to create parent tasks with confirmation
(setq org-refile-allow-creating-parent-nodes (quote confirm))

; Use IDO for both buffer and file completion and ido-everywhere to t
(setq org-completion-use-ido t)
(setq ido-everywhere t)
(setq ido-max-directory-size 100000)
(ido-mode (quote both))
; Use the current window when visiting files and buffers with ido
(setq ido-default-file-method 'selected-window)
(setq ido-default-buffer-method 'selected-window)
; Use the current window for indirect buffer display
(setq org-indirect-buffer-display 'current-window)

;;;; Refile settings
; Exclude DONE state tasks from refile targets
(defun bh/verify-refile-target ()
  "Exclude todo keywords with a done state from refile targets"
  (not (member (nth 2 (org-heading-components)) org-done-keywords)))

(setq org-refile-target-verify-function 'bh/verify-refile-target)

(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)"))))
              ;; (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" "PHONE" "MEETING"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("NEXT" :foreground "blue" :weight bold)
              ("DONE" :foreground "forest green" :weight bold)
              ("WAITING" :foreground "orange" :weight bold)
              ("HOLD" :foreground "magenta" :weight bold)
              ("CANCELLED" :foreground "forest green" :weight bold)
              ;; ("MEETING" :foreground "forest green" :weight bold)
              ;; ("PHONE" :foreground "forest green" :weight bold)
			  )))

(defun org-summary-todo (n-done n-not-done)
  " Switch entry to DONE when all subentries are done, to TODO otherwise."
  (let (org-log-done org-log-states) ; turn off logging
    (org-todo (if (= n-not-done 0) " DONE" "TODO" ))))

(add-hook 'org-after-todo-statistics-hook 'org-summary-todo)


(setq org-capture-templates
      '(("l" "Libri" entry (file "~/Documents/Organizzazione/libri.org")
         "* %^{TITLE}\n:PROPERTIES:\n:ADDED: %<[%Y-%02m-%02d]>\n:END:%^{AUTHOR}p\n%?" :empty-lines 1)
      ("m" "Musica" entry (file "~/Documents/Organizzazione/musica.org")
         "* %^{TITLE}\n:PROPERTIES:\n:ADDED: %<[%Y-%02m-%02d]>\n:END:%^{ARTIST}p\n%^{YEAR}p\n%?" :empty-lines 1)
      ("f" "Film" entry (file "~/Documents/Organizzazione/film.org")
         "* %^{TITLE}\n:PROPERTIES:\n:ADDED: %<[%Y-%02m-%02d]>\n:END:%^{YEAR}p\n%^{DIRECTOR}p\n%?" :empty-lines 1)
      ))

;;(setq org-startup-folded "children")
(dolist (face '(window-divider
                window-divider-first-pixel
                window-divider-last-pixel))
  (face-spec-reset-face face)
  (set-face-foreground face (face-attribute 'default :background)))
(set-face-background 'fringe (face-attribute 'default :background))
(global-org-modern-mode)
