(setq browse-kill-ring-quit-action 'kill-and-delete-window)
(setq browse-kill-ring-separator "-------")
(setq browse-kill-ring-highlight-current-entry t)
(custom-set-variables '(browse-kill-ring-quit-action (quote kill-and-delete-window)))
(global-set-key (kbd "M-y") 'browse-kill-ring)