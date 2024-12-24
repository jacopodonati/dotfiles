(load "/opt/homebrew/Cellar/clang-format/19.1.5/share/clang/clang-format.el")
(global-set-key [C-M-tab] 'clang-format-region)

(require 'company)
(add-hook 'c-mode-hook 'company-mode)

(global-set-key (kbd "<tab>") #'company-indent-or-complete-common)
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-/") #'company-complete))
(with-eval-after-load 'company
  (define-key company-active-map
              (kbd "TAB")
              #'company-complete-common-or-cycle)
  (define-key company-active-map
              (kbd "<backtab>")
              (lambda ()
                (interactive)
                (company-complete-common-or-cycle -1))))

(defun compile-and-run ()
  (interactive)
  (let ((file (buffer-file-name)))
    (compile (format "make run -f %s" file))))

(global-set-key (kbd "C-c r") 'compile-and-run)
