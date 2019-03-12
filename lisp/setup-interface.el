;; Interface
(desktop-save-mode 1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(if (eq system-type 'darwin)
    ;; Change default font size on macOS
    (set-face-attribute 'default nil :height 200)
)

(set-face-attribute 'default nil :height 200)

;; Toggle window dedication
(defun toggle-window-dedicated ()
"Toggle whether the current active window is dedicated or not"
(interactive)
(message
 (if (let (window (get-buffer-window (current-buffer)))
       (set-window-dedicated-p window
        (not (window-dedicated-p window))))
    "Window '%s' is dedicated"
    "Window '%s' is normal")
 (current-buffer)))
(global-set-key [pause] 'toggle-window-dedicated)
(provide 'setup-interface)
