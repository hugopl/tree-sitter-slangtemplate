([(code_comment) (html_comment)] @injection.content
  (#set! injection.language "comment"))

((crystal) @injection.content
 (#set! injection.language "crystal"))

((attr_value_crystal) @injection.content
 (#set! injection.language "crystal"))

((attr_splat) @injection.content
 (#set! injection.language "crystal"))

(embedded_engine
  (embedded_engine_name) @injection.language
  (embedded_code) @injection.content)
