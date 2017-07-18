;; === Common ===
(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'setup-packages)

;; Set the path variable
(use-package exec-path-from-shell
  :ensure t
  :config (exec-path-from-shell-initialize))

;; === Interface ===
(require 'setup-interface)
(require 'setup-helm)
(require 'setup-helm-gtags)

(use-package helm-tramp
  :config
  (setq tramp-default-method "ssh")
  (defalias 'exit-tramp 'tramp-cleanup-all-buffers)
  (define-key global-map (kbd "C-c t") 'helm-tramp))

(use-package helm-flycheck
	     :defer t)

(use-package flycheck
	     :defer t
	     :config
	     (define-key flycheck-mode-map (kbd "C-c ! h") 'helm-flycheck))

(use-package company
	     :config
	     (add-hook 'after-init-hook 'global-company-mode))

;; === Languages ===
;; Erlang
(require 'setup-erlang)
;; C/C++
(use-package cc-mode
	     :defer t
	     :config
	     (setq company-backends (delete 'company-semantic company-backends))
	     (define-key c-mode-map  [(tab)] 'company-complete)
	     (define-key c++-mode-map  [(tab)] 'company-complete))
;; Haskell
(use-package haskell
	     :defer t
	     :config
	     (add-hook 'haskell-mode-hook 'intero-mode)
	     (eval-after-load 'flycheck
	       '(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup)))
;; Python
(use-package elpy
	     :defer t
	     :config
	     (elpy-enable))
