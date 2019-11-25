
(defun custom-web-mode-keybindings ()
  (local-set-key (kbd "M-/") 'emmet-expand-line))


(add-hook 'web-mode-hook 'custom-web-mode-keybindings)
(provide 'web-mode-keybindings)
