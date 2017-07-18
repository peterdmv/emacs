;; Erlang
(use-package erlang
  :ensure t
  :init
  (setq load-path (cons  "/usr/lib/erlang/lib/tools-2.10/emacs"
        load-path))
        (setq erlang-root-dir "/usr/lib/erlang")
        (setq exec-path (cons "/usr/lib/erlang/bin" exec-path))
  (add-hook 'erlang-mode-hook 'flycheck-mode)
  (require 'erlang-start)
  )
(provide 'setup-erlang)
