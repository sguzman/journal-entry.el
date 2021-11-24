(defun ff ()
  "Prompt for a string then write string with Unix timestamp as name to a file"
  (interactive)
  (write-region
    (read-string "Message: ")
    nil
    (concat
     "~/Code/my-data/notes/journal/"
     (number-to-string
      (time-convert
       (time-convert nil t)
       'integer)))))
