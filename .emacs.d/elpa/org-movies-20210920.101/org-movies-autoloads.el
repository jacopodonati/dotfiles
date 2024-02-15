;;; org-movies-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from org-movies.el

(autoload 'org-movies-format "org-movies" "\
Get Org node from INFO alist of movie data.

LEVEL specifies Org heading level.

(fn INFO &optional (LEVEL 2))")
(autoload 'org-movies-from-url "org-movies" "\
Get movie org heading from URL.

LEVEL specifies Org heading level.

(fn URL &optional (LEVEL 2))" t)
(autoload 'org-movies-add-url "org-movies" "\
Get movie Org heading from url and insert at point." t)
(autoload 'org-movies-import-csv "org-movies" "\
Import IMDb watchlist to Org file.

CSV-FILE specifies the IMDb watchlist file, ORG-FILE specifies the Org file to export to.

(fn CSV-FILE ORG-FILE)" t)
(register-definition-prefixes "org-movies" '("org-movies-"))

;;; End of scraped data

(provide 'org-movies-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; org-movies-autoloads.el ends here