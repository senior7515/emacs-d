(require 'el-get)
(setq el-get-sources
      '(
	(:name git-modes
	       :website "https://github.com/magit/git-modes#readme"
	       :type github
	       :pkgname "magit/git-modes")
	(:name key-combo
	       :website "https://github.com/uk-ar/key-combo#readme"
	       :type http
	       :url "https://raw.github.com/uk-ar/key-combo/6bac93e90f80150d497d82275638e34455c6aa5f/key-combo.el")
	(:name anything-c-moccur
	       :type http
	       :url "https://raw.github.com/inouetakuya/emacs/master/elisp/anything-c-moccur.el"
	       :depends (anything color-moccur)
	       :description "anything interface for color-moccur")
	(:name grep-edit
	       :type github
	       :website "https://github.com/emacsmirror/grep-edit"
	       :pkgname "emacsmirror/grep-edit")
	(:name anything-startup
	       :type http
	       :depends (anything)
	       :url "https://raw.github.com/emacsmirror/emacswiki.org/master/anything-startup.el")
	(:name eldoc
	       :type builtin)
	(:name eldoc-extension
	       :type http
	       :url "http://www.emacswiki.org/emacs/download/eldoc-extension.el")
	(:name smart-newline
               :type github
	       :website "https://github.com/ainame/smart-newline.el"
	       :pkgname "ainame/smart-newline.el")
	)
)

(defun my-el-get-sync (package)
  (ignore-errors (el-get 'sync package)))

(defun my-el-get-sync-all (packages)
  (mapcar 'my-el-get-sync packages))

(defvar my-el-get-packages
  '(
    ace-jump-mode
    anything
    anything-c-moccur
    anything-git-files
    anything-startup
    auto-async-byte-compile
    auto-complete
    auto-install
    browse-kill-ring
    bundler
    coffee-mode
    cperl-mode
    dash
    eldoc
    eldoc-extension
    expand-region
    flymakae-jshint
    flymake-cursor
    flymake-easy
    fuzzy
    gist
    git-gutter
    git-modes
    grep-edit
    inf-ruby
    js3-mode
    key-combo
    magit
    markdown-mode
    migemo
    motion-mode
    multiple-cursors
    paredit
    popup
    popwin
    pos-tip
    quickrun
    ruby-mode
    slim-mode
    smart-newline
    smartparens
    term+
    term+mux
    undo-tree
    yaml-mode
    yasnippet
    ))

(defalias 'ep 'el-get-list-packages)

(provide 'my-setup/el-get-conf)
