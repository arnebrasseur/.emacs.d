;; Packages that pertain to specific modes or languages, and that don't have
;; their own setup-*.el

(use-package sql-interactive-mode
  :init
  (setq sql-prompt-regexp "^[_[:alnum:]]*[=][#>] ")
  (setq sql-prompt-cont-regexp "^[_[:alnum:]]*[-][#>] "))

(use-package sql-indent :ensure t)

(use-package haskell-mode :ensure t)

(use-package elm-mode :ensure t)

(use-package haml-mode :ensure t)
(use-package yaml-mode :ensure t)
(use-package feature-mode :ensure t)

(use-package elixir-mode :ensure t)

(use-package restclient
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.rest$" . restclient-mode)))

(use-package avy :ensure t
  :config
  (global-set-key (kbd "C-:") 'avy-goto-char))

(provide 'setup-mode-packages)
