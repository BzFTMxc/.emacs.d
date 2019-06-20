(global-set-key (kbd "C-c m") 'mc/mark-all-in-region)


(defun iterative-mark-next-lines ()
  (interactive)
  (mc/mark-next-lines 1)
  (set-temporary-overlay-map
   (let ((map (make-sparse-keymap)))
     (define-key map (kbd "s") 'iterative-mark-next-lines)
           map)))
(global-set-key (kbd "C-c s") 'iterative-mark-next-lines)


(defun iterative-mark-previous-lines ()
  (interactive)
  (mc/mark-previous-lines 1)
  (set-temporary-overlay-map
   (let ((map (make-sparse-keymap)))
     (define-key map (kbd "a") 'iterative-mark-previous-lines)
           map)))
(global-set-key (kbd "C-c a") 'iterative-mark-previous-lines)


(defun iterative-mark-next-word-like-this ()
  (interactive)
  (mc/mark-next-word-like-this 1)
  (set-temporary-overlay-map
   (let ((map (make-sparse-keymap)))
     (define-key map (kbd "w") 'iterative-mark-next-word-like-this)
           map)))
(global-set-key (kbd "C-c w") 'iterative-mark-next-word-like-this)


(defun iterative-mark-previous-word-like-this ()
  (interactive)
  (mc/mark-previous-word-like-this 1)
  (set-temporary-overlay-map
   (let ((map (make-sparse-keymap)))
     (define-key map (kbd "q") 'iterative-mark-previous-word-like-this)
           map)))
(global-set-key (kbd "C-c q") 'iterative-mark-previous-word-like-this)


(provide 'multiple-cursors-keybindings)
