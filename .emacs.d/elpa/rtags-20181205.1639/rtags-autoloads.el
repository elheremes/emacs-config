;;; rtags-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "rtags" "rtags.el" (0 0 0 0))
;;; Generated autoloads from rtags.el

(autoload 'rtags-set-periodic-reparse-timeout "rtags" "\
Set `rtags-periodic-reparse-timeout' to TIME.\n\n(fn TIME)" t nil)

(autoload 'rtags-call-bury-or-delete "rtags" "\
Call `rtags-bury-buffer-function' function.\n\n(fn)" t nil)

(autoload 'rtags-next-match "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-previous-match "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-next-diag "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-previous-diag "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-preprocess-file "rtags" "\
Preprocess selected region or buffer.\nIf optional BUFFER is given, use BUFFER instead of `current-buffer'.\nIt uses the stored compile command from the RTags database for preprocessing.\n\n(fn &optional BUFFER)" t nil)

(autoload 'rtags-set-current-project "rtags" "\
Set active project.\nUses `completing-read' to ask for the project.\n\n(fn)" t nil)

(autoload 'rtags-print-symbol-info "rtags" "\
Print information about the symbol under cursor.\n\n(fn &optional VERBOSE)" t nil)

(autoload 'rtags-symbol-type "rtags" "\
Print symbol type under cursor.\n\n(fn)" t nil)

(autoload 'rtags-print-dependencies "rtags" "\
Print dependency information of the file in buffer.\n\nIf optional PREFIX is given, a selection of what type of dependency\ninformation should be shown will be offered. Currently only one can\nbe chosen.\n\"includes\"        - Print includes the file in buffer includes.\n\"included-by\"     - Print files which include the file in buffer.\n\"depends-on\"      - Print files the file in buffer depends on.\n\"depended-on\"     - ...\n\"tree-depends-on\" - ...\n\nIf optional BUFFER is given print dependencies for file in BUFFER\ninstead of file from `current-buffer'.\n\n(fn &optional PREFIX BUFFER)" t nil)

(defvar rtags-dependency-tree-data nil)

(autoload 'rtags-references-tree "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-find-functions-called-by-this-function "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-find-all-functions-called-this-function "rtags" "\
\n\n(fn)" nil nil)

(autoload 'rtags-list-results "rtags" "\
Show the RTags results buffer.\n\n(fn)" t nil)

(autoload 'rtags-print-source-arguments "rtags" "\
\n\n(fn &optional BUFFER)" t nil)

(autoload 'rtags-print-class-hierarchy "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-print-enum-value-at-point "rtags" "\
\n\n(fn &optional LOCATION)" t nil)

(autoload 'rtags-goto-offset "rtags" "\
\n\n(fn POS)" t nil)

(autoload 'rtags-location-stack-filter "rtags" "\
\n\n(fn PATH/LAMBDA/RX)" t nil)

(autoload 'rtags-location-stack-jump "rtags" "\
\n\n(fn BY)" t nil)

(autoload 'rtags-location-stack-visualize-update "rtags" "\
\n\n(fn)" nil nil)

(autoload 'rtags-enable-standard-keybindings "rtags" "\
Setup standard keybindings for the RTags commands.\n\nIf optional MAP is non-nil, add the keys to MAP instead of `c-mode-base-map'.\nIf optional PREFIX is non-nil, use PREFIX as prefix key for the commands,\ndefault is \"C-c r \". It doesn't matter whether you add a space at the end\nof PREFIX or not, if doesn't contain one, one will be added.\n\n(fn &optional MAP PREFIX)" t nil)

(autoload 'rtags-print-current-location "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-location-stack-forward "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-location-stack-back "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-location-stack-reset "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-find-symbol-at-point "rtags" "\
Find the natural target for the symbol under the cursor and moves to that location.\nFor references this means to jump to the definition/declaration of the referenced symbol (it jumps to the definition if it is indexed).\nFor definitions it jumps to the declaration (if there is only one) For declarations it jumps to the definition.\nIf called with prefix, open first match in other window\n\n(fn &optional PREFIX)" t nil)

(autoload 'rtags-find-references-at-point "rtags" "\
Find all references to the symbol under the cursor.\n\nIf there's exactly one result jump directly to it, and if optional\nPREFIX is given jump to it in other window. If there's more show a\nbuffer with the different alternatives and jump to the first one, if\n`rtags-jump-to-first-match' is true. References to references will be\ntreated as references to the referenced symbol.\n\n(fn &optional PREFIX)" t nil)

(autoload 'rtags-find-virtuals-at-point "rtags" "\
List all reimplementations of function under cursor.\nThis includes both declarations and definitions.\n\n(fn &optional PREFIX)" t nil)

(autoload 'rtags-find-all-references-at-point "rtags" "\
\n\n(fn &optional PREFIX)" t nil)

(autoload 'rtags-guess-function-at-point "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-rename-symbol "rtags" "\
Rename symbol (identifier) at point.\n\nNormally this function will ask the user (via minibuffer) for the\nreplacement and then ask for confirmation.  However, when the scope\nof the symbol at point is just one file (the file that's being\nvisited by current buffer), the variable `rtags-use-multiple-cursors'\nis non-nil and the `multiple-cursors' package is available, then this\nfunction will create fake cursors at all occurrences of the symbol.\n\nThe optional argument NO-CONFIRM means agree to all replacements and\ncan be specified with a prefix argument.\n\n(fn &optional NO-CONFIRM)" t nil)

(autoload 'rtags-find-symbol "rtags" "\
\n\n(fn &optional PREFIX)" t nil)

(autoload 'rtags-find-references "rtags" "\
\n\n(fn &optional PREFIX)" t nil)

(autoload 'rtags-find-symbol-current-file "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-find-references-current-file "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-find-symbol-current-dir "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-find-references-current-dir "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-clear-diagnostics-overlays "rtags" "\
\n\n(fn &optional BUF)" t nil)

(autoload 'rtags-is-running "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-cycle-through-diagnostics "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-fix-fixit-at-point "rtags" "\
Apply compiler fix-it at point.\n\n(fn)" t nil)

(autoload 'rtags-restart-tracking-timer "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-post-command-hook "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-toggle-diagnostics-suspended "rtags" "\
\n\n(fn &optional QUIET)" t nil)

(autoload 'rtags-set-diagnostics-suspended "rtags" "\
\n\n(fn &optional QUIET)" t nil)

(autoload 'rtags-stop-diagnostics "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-clear-diagnostics "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-diagnostics "rtags" "\
\n\n(fn &optional RESTART NODIRTY)" t nil)

(autoload 'rtags-compilation-flags "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-close-taglist "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-taglist "rtags" "\
\n\n(fn &optional DEST-WINDOW)" t nil)

(autoload 'rtags-select "rtags" "\
\n\n(fn &optional OTHER-WINDOW REMOVE SHOW)" t nil)

(autoload 'rtags-select-other-window "rtags" "\
\n\n(fn &optional NOT-OTHER-WINDOW)" t nil)

(autoload 'rtags-select-caller "rtags" "\
\n\n(fn &optional NOT-OTHER-WINDOW)" t nil)

(autoload 'rtags-select-caller-other-window "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-show-in-other-window "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-select-and-remove-rtags-buffer "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-imenu "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-flatten-max-depth-one "rtags" "\
\n\n(fn UNFLATTENED)" nil nil)

(autoload 'rtags-create-index-function "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-activate-imenu "rtags" "\
Overrides imenu index generation function for the current function.\n\n(fn)" t nil)

(autoload 'rtags-copy-and-print-current-location "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-find-file "rtags" "\
Find files matching a file pattern in the RTags database.\n\nWith PREFIX and when `rtags-use-filename-completion' is nil,\nnegate `rtags-find-file-prefer-exact-match' when matching files.\n\nInitial file pattern to match is obtained from `rtags-current-symbol'\nwhich can be overridden by specifying DEFAULT-FILE\n\n(fn &optional PREFIX DEFAULT-FILE)" t nil)

(autoload 'rtags-show-rtags-buffer "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-fixit "rtags" "\
\n\n(fn &optional EDIFF BUFFER)" t nil)

(autoload 'rtags-remove-other-window "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-update-current-project "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-show-target-in-other-window "rtags" "\
DEST-WINDOW : destination window. Can be nil; in this case the current window is split\naccording to `rtags-other-window-window-size-percentage'.\nCENTER-WINDOW : if true the target window is centered.\nTRY-DECLARATION-FIRST : first try to find the declaration of the item, then the\ndefinition.\n\n(fn &optional DEST-WINDOW CENTER-WINDOW TRY-DECLARATION-FIRST)" t nil)

(autoload 'rtags-suspend-file "rtags" "\
\n\n(fn &optional ARG)" t nil)

(autoload 'rtags-unsuspend-file "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-toggle-file-suspended "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-clear-suspended-files "rtags" "\
\n\n(fn &optional A B)" t nil)

(autoload 'rtags-suspend-all-files "rtags" "\
\n\n(fn &optional A)" t nil)

(autoload 'rtags-list-suspended-files "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-compile-file "rtags" "\
\n\n(fn &optional BUFFER)" t nil)

(autoload 'rtags-recompile-file "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-quit-rdm "rtags" "\
Quit the RTags process (rdm).\n\n(fn)" t nil)

(autoload 'rtags-restart-process "rtags" "\
Restart the RTags process (rdm).\n\n(fn)" t nil)

(autoload 'rtags-start-process-unless-running "rtags" "\
Launch the RTags process (rdm) if it's not already started.\n\n(fn)" t nil)

(autoload 'rtags-reparse-file "rtags" "\
WAIT-REPARSING : t to wait for reparsing to finish, nil for async (no waiting).\n\n(fn &optional BUFFER PERIODIC)" t nil)

(autoload 'rtags-maybe-reparse-file "rtags" "\
\n\n(fn &optional BUFFER)" t nil)

(autoload 'rtags-display-summary "rtags" "\
Display a short text describing the item at point.\nSee `rtags-get-summary-text' for details.\nIf `rtags-display-summary-as-tooltip' is t, a tooltip is displayed.\n\n(fn &optional HIDE-EMPTY POS)" t nil)

(autoload 'rtags-display-summary-as-message "rtags" "\
Display a short text in message area describing the item at point.\nSee `rtags-get-summary-text' for details.\n\n(fn)" t nil)

(autoload 'rtags-get-include-file-for-symbol "rtags" "\
Insert #include declaration to buffer corresponding to the input symbol.\nWith optional PREFIX insert include at point.\n\n(fn &optional PREFIX)" t nil)

(autoload 'rtags-make-member "rtags" "\
Create a stub member functions. Type a declaration and then\n`rtags-make-member' can be used to create the stub definition in\nthe class.\n\n(fn)" t nil)

(autoload 'rtags-check-includes "rtags" "\
\n\n(fn)" t nil)

(autoload 'rtags-tokens "rtags" "\
\n\n(fn &optional FROM TO CALLBACK)" t nil)

(autoload 'rtags-create-doxygen-comment "rtags" "\
Creates doxygen comment for function at point.\n\nComment will be inserted before current line. It uses yasnippet to let\nthe user enter missing field manually.\n\n(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rtags" '("rtags-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; rtags-autoloads.el ends here
