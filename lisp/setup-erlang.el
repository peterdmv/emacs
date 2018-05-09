;; Erlang
(use-package erlang
  :ensure t
  :init
  (setq load-path (cons  "/usr/lib/erlang/lib/tools-2.10/emacs"
			 load-path))
  (setq erlang-root-dir "/usr/lib/erlang")
  (setq exec-path (cons "/usr/lib/erlang/bin" exec-path))
  (add-hook 'erlang-mode-hook 'flycheck-mode)

;;  (defun my-erlang-hook ()
;;    "Setup for erlang."
;;    ;;    (require 'wrangler) FIX
;;    (require 'ivy-erlang-complete)
;;    (ivy-erlang-complete-init)
;;    (defvar erlang-extended-mode-map)
;;    (define-key erlang-extended-mode-map (kbd "M-.") nil)
;;    (define-key erlang-extended-mode-map (kbd "M-,") nil)
;;    (define-key erlang-extended-mode-map (kbd "M-?") nil)
;;    (define-key erlang-extended-mode-map (kbd "(") nil))
;;  (add-hook 'erlang-mode-hook #'my-erlang-hook)
;;  (add-hook 'after-save-hook #'ivy-erlang-complete-reparse)
;;
;;  (add-to-list 'auto-mode-alist '("rebar\\.config$" . erlang-mode))
;;  (add-to-list 'auto-mode-alist '("relx\\.config$" . erlang-mode))
;;  (add-to-list 'auto-mode-alist '("system\\.config$" . erlang-mode))
;;  (add-to-list 'auto-mode-alist '("\\.app\\.src$" . erlang-mode))

;;  (require 'ivy-erlang-complete)
;;  (add-hook 'erlang-mode-hook #'ivy-erlang-complete-init)
;;  ;; automatic update completion data after save
;;  (add-hook 'after-save-hook #'ivy-erlang-complete-reparse)

;;  (add-hook 'erlang-mode-hook #'company-erlang-init)
  (require 'erlang-start)
  )
(provide 'setup-erlang)
