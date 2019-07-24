
(defun custom-go-mode-keybindings ()
  ;Godef jump key binding
  (local-set-key (kbd "<ESC>RET") 'godef-jump)
)

(add-hook 'go-mode-hook 'custom-go-mode-keybindings)
(provide 'go-mode-keybindings)
