(code_comment) @comment
(html_comment) @comment
(attr_name) @attribute
(crystal_block_control "-" @keyword)
(crystal_block_output "=" @keyword)
(crystal_block_output_noescape "==" @keyword)
(doctype) @keyword
":" @punctuation.delimiter
(embedded_engine_name) @function.builtin
(tag_name) @type
(attr_shortcut_class) @function
(attr_shortcut_id) @constant
(attrs ["(" ")" "[" "]" "{" "}"] @punctuation.bracket)
(attr_assignment) @punctuation.delimiter
(attr_assignment_noescape) @punctuation.delimiter
(attr_value_quoted) @string
