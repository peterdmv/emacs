;; Erlang
(use-package erlang
  :ensure t
  :init

  (setq load-path (cons (expand-file-name "~/git/otp/lib/tools/emacs")
			load-path))
  (setq erlang-root-dir (expand-file-name "~/git/otp"))
  (setq exec-path (cons (expand-file-name "~/git/otp/bin")
			exec-path))

  ;;(add-hook 'erlang-mode-hook 'flycheck-mode)
  (require 'erlang-start)

  ;; Enable LSP for Erlang files
  (add-hook 'erlang-mode-hook #'lsp)

  ;; Require and enable the Yasnippet templating system
  (yas-global-mode t)

  ;; Enable logging for lsp-mode
  (setq lsp-log-io t)

  ;; Enable code completion
  (push 'company-lsp company-backends)

  ;; Override the default erlang-compile-tag to use completion-at-point
  (eval-after-load 'erlang
    '(define-key erlang-mode-map (kbd "C-M-i") #'company-lsp))

  ;; Show line and column numbers
  (add-hook 'erlang-mode-hook 'linum-mode)
  (add-hook 'erlang-mode-hook 'column-number-mode)

  ;; Enable and configure the LSP UI Package
  (setq lsp-ui-sideline-enable nil)
  (setq lsp-ui-doc-enable t)
  (setq lsp-ui-doc-position 'bottom)

  ;; Enable LSP Origami Mode (for folding ranges)
  (add-hook 'origami-mode-hook #'lsp-origami-mode)
  (add-hook 'erlang-mode-hook #'origami-mode)

  ;; Provide commands to list workspace symbols:
  ;; - helm-lsp-workspace-symbol
  ;; - helm-lsp-global-workspace-symbol
  ;;  (package-install 'helm-lsp)

  )
(provide 'setup-erlang)
