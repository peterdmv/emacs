;; Erlang
(use-package erlang
  :ensure t
  :init
  (setq load-path (cons (expand-file-name "~/git/otp/lib/tools/emacs")
			load-path))
  (setq erlang-root-dir (expand-file-name "~/git/otp"))
  (setq exec-path (cons (expand-file-name "~/git/otp/bin")
			exec-path))
  ;; ssl headers
  (setq flycheck-erlang-include-path
	(list
	 (expand-file-name "~/git/otp/lib/ssl/src")))

  (add-hook 'erlang-mode-hook 'flycheck-mode)
  (require 'erlang-start)
  )
(provide 'setup-erlang)
