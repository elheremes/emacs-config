;;; all-the-icons-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "all-the-icons" "all-the-icons.el" (0 0 0 0))
;;; Generated autoloads from all-the-icons.el

(autoload 'all-the-icons-icon-for-file "all-the-icons" "\
Get the formatted icon for FILE.\nARG-OVERRIDES should be a plist containining `:height',\n`:v-adjust' or `:face' properties like in the normal icon\ninserting functions.\n\n(fn FILE &rest ARG-OVERRIDES)" nil nil)

(autoload 'all-the-icons-icon-for-mode "all-the-icons" "\
Get the formatted icon for MODE.\nARG-OVERRIDES should be a plist containining `:height',\n`:v-adjust' or `:face' properties like in the normal icon\ninserting functions.\n\n(fn MODE &rest ARG-OVERRIDES)" nil nil)

(autoload 'all-the-icons--icon-info-for-buffer "all-the-icons" "\
Get icon info for the current buffer.\n\nWhen F is provided, the info function is calculated with the format\n`all-the-icons-icon-%s-for-file' or `all-the-icons-icon-%s-for-mode'.\n\n(fn &optional F)" nil nil)

(autoload 'all-the-icons-install-fonts "all-the-icons" "\
Helper function to download and install the latests fonts based on OS.\nWhen PFX is non-nil, ignore the prompt and just install\n\n(fn &optional PFX)" t nil)

(autoload 'all-the-icons-insert "all-the-icons" "\
Interactive icon insertion function.\nWhen Prefix ARG is non-nil, insert the propertized icon.\nWhen FAMILY is non-nil, limit the candidates to the icon set matching it.\n\n(fn &optional ARG FAMILY)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "all-the-icons" '("material" "wicon" "octicon" "fileicon" "faicon" "all" "define-icon")))

;;;***

;;;### (autoloads nil nil ("all-the-icons-faces.el" "all-the-icons-pkg.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; all-the-icons-autoloads.el ends here
