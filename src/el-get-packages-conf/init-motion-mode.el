(require 'motion-mode)
(add-to-list 'ac-modes 'motion-mode)
(add-hook 'ruby-mode-hook 'motion-recognize-project)
(setq motion-flymake nil)
(define-key motion-mode-map (kbd "C-c C-c") 'motion-execute-rake)
(define-key motion-mode-map (kbd "C-c C-d") (lambda () (interactive)
                                              (motion-execute-rake-command "device")))
(define-key motion-mode-map (kbd "C-c C-o") 'motion-dash-at-point)
