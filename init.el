(let ((default-directory  "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))

(require 'packages)
(require 'modes)
(require 'eventbindings)
(require 'keybindings)
(require 'snippets)
(require 'themes)

(global-linum-mode t)
(setq linum-format "%4d | ")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("197cefea731181f7be51e9d498b29fb44b51be33484b17416b9855a2c4243cb1" default))
 '(package-selected-packages
   '(gnu-elpa-keyring-update nord-theme yasnippet spacemacs-theme multiple-cursors monokai-theme magit helm-projectile helm-ls-git flycheck exec-path-from-shell)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'nord)
