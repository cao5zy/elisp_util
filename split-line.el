(defun split-line()
  "count the buffer words"
  (interactive)
  (let ((all-str (buffer-substring-no-properties (point-min) (point-max))))
    (let ((lines (split-string all-str " ")))
      (dolist (element lines)
        (prin1 lines)))))
      
(provide 'split-line)
