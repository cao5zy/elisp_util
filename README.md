# elisp_util
emacs lisp util

## 选中buffer中所有的内容
```lisp
      (goto-char (point-min))
      (set-mark (point-max))
```

## 删除选中的buffer
```lisp
      (kill-region (region-beginning) (region-end))
```

## 在当前buffer的末尾，插入字符
```lisp
       (goto-char (point-max))
       (insert (concat "\n" line))
```
