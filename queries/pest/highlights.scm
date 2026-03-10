(line_comment) @comment
(block_comment) @comment

(grammar_rule name: (identifier) @function)
(grammar_rule name: (const) @function)

(identifier) @variable
(builtin) @keyword
(const) @constant

[
  (string)
  (character)
] @string

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

[
  "~"
  "|"
] @operator.sequence

[
  "="
  "+"
  "*"
  "&"
  "^"
  "@"
  "$"
  "!"
  "?"
  "_"
  ".."
] @operator

(node_tag) @tag
(range) @string.special
