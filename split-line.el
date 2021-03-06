(defun split-line()
  "count the buffer words"
  (interactive)
  (let ((all-str (buffer-substring-no-properties (point-min) (point-max))))
    (let ((lines (split-string all-str " ")))
      (goto-char (point-min))
      (set-mark (point-max))
      (kill-region (region-beginning) (region-end))
      (goto-char (point-min))
     (while (> (length lines) 0)
       (setq line (car lines))
       (goto-char (point-max))
       (insert (concat "\n" line))
       (setq lines (cdr lines))))))
      
(provide 'split-line)
