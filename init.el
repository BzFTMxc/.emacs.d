(package-initialize)

(let ((default-directory  "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))

(require 'packages)
(require 'modes)
(require 'keybindings)
(require 'eventbindings)
(require 'snippets)
(require 'themes)

(global-linum-mode t)
(setq linum-format "%4d | ")
