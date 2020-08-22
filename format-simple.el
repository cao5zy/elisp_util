(load-file "./do-format.el")
(require 'do-format)

(defun format-simple()
  "format the list"
  (interactive)
  (let ((all-str (buffer-substring-no-properties (point-min) (point-max))))
    (let ((lines (split-string all-str "\n")))
      (goto-char (point-min))
      (set-mark (point-max))
      (kill-region (region-beginning) (region-end))
      (goto-char (point-min))
     (while (> (length lines) 0)
       (setq line (car lines))
       (goto-char (point-max))
       (insert (concat (do-format line) "\n"))
       (setq lines (cdr lines))))))
      
(provide 'format-simple)
