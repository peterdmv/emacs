;; === Common ===
(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'setup-packages)

;; Set the path variable
(use-package exec-path-from-shell
  :ensure t
  :config (when (memq window-system '(mac ns x))
	    (exec-path-from-shell-initialize)))

;; === Interface ===
(require 'setup-interface)

;;(use-package flycheck
;;	     :defer t
;;	     :config
;;	     (define-key flycheck-mode-map (kbd "C-c ! h") 'helm-flycheck))

(use-package company
	     :config
	     (add-hook 'after-init-hook 'global-company-mode))

;; === Languages ===
;; Erlang
(require 'setup-erlang)

;; === Interface ===
(if (display-graphic-p)
    (load-theme 'solarized-light t)
  (load-theme 'wheatgrass t))

;; === DO NOT EDIT AFTER THIS LINE ===
