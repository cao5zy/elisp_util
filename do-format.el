(defun get-func-name(line)
  "get the function name"
  (substring line 15)
  )

(defun get-format-str()
  "export const %s=(param = {})=>{
  onEvent('%s', param);
}"
  )

(defun do-format(line)
  "format the line"
  
  (format (get-format-str) (get-func-name line) line )
  )

(provide 'do-format)
