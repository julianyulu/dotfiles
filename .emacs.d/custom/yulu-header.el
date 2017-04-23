(provide 'yulu-header)

(require 'header2)
;; update file headers automatically when save
(autoload 'auto-update-file-header "header2")
(add-hook 'write-file-hooks 'auto-update-file-header)


;;Add file heder shenever create a new file
(add-hook 'c-mode-common-hook 'auto-make-header)
(add-hook 'python-mode-hook 'auto-make-header)

(defsubst yulu/header-dash-line ()
  "Insert dashed line"
  (insert header-prefix-string "-------------------------------------------\n"))

(defsubst yulu/info ()
  "Insert my author info"
  (insert header-prefix-string
	  "Author:    Yu Lu\n"
	  header-prefix-string
	  "Email:     yulu@utexas.edu\n"
	  header-prefix-string
	  "Github:    https://github.com/SuperYuLu \n"))
	  
(setq make-header-hook '(header-title
			 header-blank
			 header-file-name
			 header-description
			 header-blank
			 yulu/info
			 header-blank
			 header-creation-date
			 header-version
			 header-modification-date
			 header-modification-author
			 header-update-count
			 header-blank
			 ;;header-eof
			 ))
			 
