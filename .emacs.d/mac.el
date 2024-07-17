(setq mac-option-modifier nil)
(setq mac-command-modifier 'command)
(setq mac-function-modifier 'meta)
(setq x-select-enable-clipboard t)
;(setq mac-allow-anti-aliasing nil)

(defun my/apply-theme (appearance)
  "Load theme, taking current system APPEARANCE into consideration."
  (mapc #'disable-theme custom-enabled-themes)
  (pcase appearance
    ('light (load-theme 'modus-operandi t))
    ('dark (load-theme 'modus-vivendi t))))

(add-hook 'ns-system-appearance-change-functions #'my/apply-theme)
