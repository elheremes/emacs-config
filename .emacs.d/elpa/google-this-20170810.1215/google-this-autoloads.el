;;; google-this-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "google-this" "google-this.el" (0 0 0 0))
;;; Generated autoloads from google-this.el

(autoload 'google-this-search "google-this" "\
Write and do a google search.\nInteractively PREFIX determines quoting.\nNon-interactively SEARCH-STRING is the string to search.\n\n(fn PREFIX &optional SEARCH-STRING)" t nil)

(autoload 'google-this-lucky-and-insert-url "google-this" "\
Fetch the url that would be visited by `google-this-lucky'.\n\nIf you just want to do an \"I'm feeling lucky search\", use\n`google-this-lucky-search' instead.\n\nInteractively:\n* Insert the URL at point,\n* Kill the searched term, removing it from the buffer (it is killed, not\n  deleted, so it can be easily yanked back if desired).\n* Search term defaults to region or line, and always queries for\n  confirmation.\n\nNon-Interactively:\n* Runs synchronously,\n* Search TERM is an argument without confirmation,\n* Only insert if INSERT is non-nil, otherwise return.\n\n(fn TERM &optional INSERT)" t nil)

(autoload 'google-this-lucky-search "google-this" "\
Exactly like `google-this-search', but use the \"I'm feeling lucky\" option.\nPREFIX determines quoting.\n\n(fn PREFIX)" t nil)

(autoload 'google-this-string "google-this" "\
Google given TEXT, but ask the user first if NOCONFIRM is nil.\nPREFIX determines quoting.\n\n(fn PREFIX &optional TEXT NOCONFIRM)" nil nil)

(autoload 'google-this-line "google-this" "\
Google the current line.\nPREFIX determines quoting.\nNOCONFIRM goes without asking for confirmation.\n\n(fn PREFIX &optional NOCONFIRM)" t nil)

(autoload 'google-this-ray "google-this" "\
Google text between the point and end of the line.\nIf there is a selected region, googles the region.\nPREFIX determines quoting. Negative arguments invert the line segment.\nNOCONFIRM goes without asking for confirmation.\nNOREGION ignores the region.\n\n(fn PREFIX &optional NOCONFIRM NOREGION)" t nil)

(autoload 'google-this-word "google-this" "\
Google the current word.\nPREFIX determines quoting.\n\n(fn PREFIX)" t nil)

(autoload 'google-this-symbol "google-this" "\
Google the current symbol.\nPREFIX determines quoting.\n\n(fn PREFIX)" t nil)

(autoload 'google-this-region "google-this" "\
Google the current region.\nPREFIX determines quoting.\nNOCONFIRM goes without asking for confirmation.\n\n(fn PREFIX &optional NOCONFIRM)" t nil)

(autoload 'google-this "google-this" "\
Decide what the user wants to google (always something under point).\nUnlike `google-this-search' (which presents an empty prompt with\n\"this\" as the default value), this function inserts the query\nin the minibuffer to be edited.\nPREFIX argument determines quoting.\nNOCONFIRM goes without asking for confirmation.\n\n(fn PREFIX &optional NOCONFIRM)" t nil)

(autoload 'google-this-noconfirm "google-this" "\
Decide what the user wants to google and go without confirmation.\nExactly like `google-this' or `google-this-search', but don't ask\nfor confirmation.\nPREFIX determines quoting.\n\n(fn PREFIX)" t nil)

(autoload 'google-this-error "google-this" "\
Google the current error in the compilation buffer.\nPREFIX determines quoting.\n\n(fn PREFIX)" t nil)

(autoload 'google-this-clean-error-string "google-this" "\
Parse error string S and turn it into googleable strings.\n\nRemoves unhelpful details like file names and line numbers from\nsimple error strings (such as c-like erros).\n\nUses replacements in `google-this-error-regexp' and stops at the first match.\n\n(fn S)" t nil)

(autoload 'google-this-cpp-reference "google-this" "\
Visit the most probable cppreference.com page for this word.\n\n(fn)" t nil)

(autoload 'google-this-forecast "google-this" "\
Search google for \"weather\".\nWith PREFIX, ask for location.\n\n(fn PREFIX)" t nil)

(defvar google-this-mode nil "\
Non-nil if Google-This mode is enabled.\nSee the `google-this-mode' command\nfor a description of this minor mode.")

(custom-autoload 'google-this-mode "google-this" nil)

(autoload 'google-this-mode "google-this" "\
Toggle Google-This mode on or off.\nWith a prefix argument ARG, enable Google-This mode if ARG is\npositive, and disable it otherwise.  If called from Lisp, enable\nthe mode if ARG is omitted or nil, and toggle it if ARG is `toggle'.\n\\{google-this-mode-map}\n\n(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "google-this" '("google-this-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; google-this-autoloads.el ends here
