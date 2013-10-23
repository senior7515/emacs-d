;; 外部パッケージに依存しない設定

;; 日本語環境
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(setq file-name-coding-system 'utf-8)

;; 雑多な設定
;(display-battery-mode 1)
(defalias 'ff 'find-file)
(setq initial-scratch-message nil)
(menu-bar-mode -1)
(tool-bar-mode -1)
(setq inhibit-startup-message t)
(display-time-mode 1)
(setq backup-inhibited t)
(which-function-mode 1)
(global-hl-line-mode t)
(set-face-background 'hl-line "color-17")
(show-paren-mode)
(column-number-mode t)
(setq font-lock-maximum-decoration 2)
(setq read-buffer-completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)
(setq completion-ignore-case t)
(global-auto-revert-mode 1)
(fset 'yes-or-no-p 'y-or-n-p)

;; keybindings
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-h") 'backward-delete-char)
(global-set-key (kbd "C-M-h") 'backward-kill-word)
(global-set-key (kbd "C-x \\") 'align-regexp)

;; keybindings for extensions
(global-set-key (kbd "C-c t")
 '(lambda () (interactive) (multi-term)))
(global-set-key (kbd "M-y") 'browse-kill-ring)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x d") 'find-file)

(defun other-window-or-split ()
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window 1))
(global-set-key (kbd "M-p") 'other-window-or-split)

;; standard package configuration
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
(require 'flyspell)
(require 'ispell)
(setq-default ispell-program-name "aspell")

