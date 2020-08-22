(require 'test-simple)
(test-simple-start)

(assert-t (load-file "./extract.el")
          "can't load extract.el")
(message "test start")
(assert-equal "col" (do-extract "export coll = 3" ".*\\(col\\)") "do-extract(hello)")
(assert-equal "export" (do-extract "export" "\\(export\\)") "do-extract(hello)")

(end-tests)

