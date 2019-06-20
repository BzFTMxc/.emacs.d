(require 'package)

(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

(defun ensure-package-installed (&rest packages)
  "Assure every package is installed."
  (mapcar
   (lambda (package)
     (if (package-installed-p package)
         nil
         (package-install package)
       package))
   packages))
(or (file-exists-p package-user-dir)
    (package-refresh-contents))

(ensure-package-installed 'magit 'yasnippet 'projectile 'helm 'helm-projectile 'multiple-cursors 'dracula-theme 'groovy-mode 'meghanada)

(provide 'packages)
