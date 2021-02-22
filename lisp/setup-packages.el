;; Setup packages
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives
  (append package-archives
    '(("melpa" . "http://melpa.org/packages/")
      ;;("marmalade" . "http://marmalade-repo.org/packages/")
      ("gnu" . "http://elpa.gnu.org/packages/")
      ("elpy" . "http://jorgenschaefer.github.io/packages/"))))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Enable use-package
(eval-when-compile
  (require 'use-package))

;; Packages to be installed
;; Note: Ivy is split into three packages: ivy, swiper and counsel;
;; by installing counsel, the other two are brought in as dependencies.
(setq package-list '(alchemist
		     asn1-mode
		     async
		     company
		     company-erlang
		     company-lsp
		     counsel
		     dash
		     elixir-mode
		     elpy
		     epl
		     erlang
		     exec-path-from-shell
		     find-file-in-project
		     flycheck
		     flycheck-elixir
		     flycheck-haskell
		     gist
		     git-commit
		     graphviz-dot-mode
		     haskell-mode
		     highlight-indentation
		     ivy-erlang-complete
		     ivy-hydra
		     ivy-omni-org
		     let-alist
		     lsp-mode
		     lsp-origami
		     lsp-ui
		     magit
		     magit-popup
		     pkg-info
		     popup
		     pyvenv
		     s
		     seq
		     solarized-theme
		     which-key
		     with-editor
		     yasnippet
		     ))

;; activate all the packages (in particular autoloads)
(package-initialize)

;; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

;; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(provide 'setup-packages)
