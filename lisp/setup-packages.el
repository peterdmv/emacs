;; Setup packages
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives
  (append package-archives
    '(("melpa" . "http://melpa.org/packages/")
      ("marmalade" . "http://marmalade-repo.org/packages/")
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
;;(require 'diminish)                ;; if you use :diminish
;;(require 'bind-key)                ;; if you use any :bind variant


;; Packages to be installed
(setq package-list '(alchemist
		     async
		     company
		     company-erlang
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
		     flycheck-rebar3
		     git-commit
		     haskell-mode
		     helm
		     helm-core
		     helm-flycheck
		     helm-gtags
		     helm-tramp
		     helm-swoop
		     highlight-indentation
		     intero
		     ivy
		     ivy-erlang-complete
		     let-alist
		     magit
		     magit-popup
		     pkg-info
		     popup
		     pyvenv
		     s
		     seq
		     swiper
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
