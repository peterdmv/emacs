;; Erlang
(use-package erlang
  :ensure t
  :init

  ;; Customize prefix for key-bindings
  (setq lsp-keymap-prefix "C-l")

  ;; Enable LSP for Erlang files
  (add-hook 'erlang-mode-hook #'lsp)

  ;; Require and enable the Yasnippet templating system
  (yas-global-mode t)

  ;; Enable logging for lsp-mode
  (setq lsp-log-io t)

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

  ;; Which-key integration
  (add-hook 'erlang-mode-hook 'which-key-mode)
  (with-eval-after-load 'lsp-mode
    (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration))

  ;; Always show diagnostics at the bottom, using 1/3 of the available space
  (add-to-list 'display-buffer-alist
               `(,(rx bos "*Flycheck errors*" eos)
		 (display-buffer-reuse-window
		  display-buffer-in-side-window)
		 (side            . bottom)
		 (reusable-frames . visible)
		 (window-height   . 0.33)))
  )
(provide 'setup-erlang)
