(add-hook 'ruby-mode-hook (lambda () (source-mode-init)))
(add-hook 'sh-mode-hook (lambda () (source-mode-init)))

(defun source-mode-init ()
  (progn
    (linum-mode 1)
    (local-set-key (kbd "s-c") 'comment-region)
    (local-set-key (kbd "s-u") 'uncomment-region)
    (local-set-key (kbd "s-i") 'indent-region)
    (local-set-key (kbd "M-s-e") 'align-to-equals)
    (local-set-key (kbd "M-s-r") 'align-to-rocket)
    (local-set-key (kbd "M-s-c") 'align-to-comma)
    (local-set-key (kbd "M-s-s") 'align-to-semicolon)
))


(defun align-to-equals (begin end)
  "Align region to equal signs"
   (interactive "r")
   (align-regexp begin end "\\(\\s-*\\)=" 1 1 ))

(defun align-to-rocket (begin end)
  "Align region to equal signs"
   (interactive "r")
   (align-regexp begin end "\\(\\s-*\\)=>" 1 1 t))

(defun align-to-comma (begin end)
  "Align region in columns separated by commas"
   (interactive "r")
   (align-regexp begin end "\\(\\s-*\\)," 1 1 t))

(defun align-to-semicolon (begin end)
  "Align region to semicolumns"
   (interactive "r")
   (align-regexp begin end "\\(\\s-*\\);" 1 1 ))