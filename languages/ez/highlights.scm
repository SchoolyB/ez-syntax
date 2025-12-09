; Comments
(comment) @comment
(block_comment) @comment

; Strings
(string) @string
(string_content) @string

; String interpolation - capture the delimiters explicitly
; This must come BEFORE the general punctuation rules
(interpolation
  "${" @string.special
  "}" @string.special)

; Numbers
(integer) @number
(float) @number

; Booleans
[
  "true"
  "false"
] @constant.builtin

; Nil
(nil) @constant.builtin

; Keywords
[
  "temp"
  "const"
  "do"
  "return"
  "if"
  "or"
  "otherwise"
  "for"
  "for_each"
  "as_long_as"
  "loop"
  "in"
  "not_in"
  "range"
  "import"
  "using"
  "use"
  "struct"
  "enum"
  "new"
] @keyword

; Break and continue are named nodes
(break_statement) @keyword
(continue_statement) @keyword

; Types - builtin primitives
[
  "int"
  "i8"
  "i16"
  "i32"
  "i64"
  "i128"
  "i256"
  "u8"
  "u16"
  "u32"
  "u64"
  "u128"
  "u256"
  "float"
  "f32"
  "f64"
  "bool"
  "char"
  "byte"
  "string"
  "map"
] @type.builtin

; Operators
[
  "+"
  "-"
  "*"
  "/"
  "%"
  "="
  "=="
  "!="
  "<"
  ">"
  "<="
  ">="
  "&&"
  "||"
  "!"
  "&"
  "++"
  "--"
  "+="
  "-="
  "*="
  "/="
  "->"
] @operator

; Punctuation - NOTE: } inside interpolation is handled above
[
  "("
  ")"
  "["
  "]"
  "{"
] @punctuation.bracket

; General } - but NOT inside interpolation (handled by query order)
(block "}" @punctuation.bracket)
(array_literal "}" @punctuation.bracket)
(map_literal "}" @punctuation.bracket)
(struct_literal "}" @punctuation.bracket)
(enum_declaration "}" @punctuation.bracket)
(struct_declaration "}" @punctuation.bracket)

[
  ","
  "."
  ":"
] @punctuation.delimiter

; Attributes - use preprocessor/tag color (distinct from functions)
(attribute) @tag

; Import paths - use namespace color
(import_path) @namespace

; Function definitions - function color
(function_declaration
  name: (identifier) @function.definition)

; Function calls
(call_expression
  function: (identifier) @function.call)

; Struct definitions - type color
(struct_declaration
  name: (identifier) @type.definition)

; Enum definitions - type color
(enum_declaration
  name: (identifier) @type.definition)

; Enum values - use constant color (distinct from types)
(enum_value
  (identifier) @constant)

; Variable declarations
(variable_declaration
  (identifier) @variable)

; Parameters
(parameter
  name: (identifier) @variable.parameter)

; Field declarations in structs - use property color
(field_declaration
  name: (identifier) @variable.member)

; Field access
(member_expression
  property: (identifier) @variable.member)

; Struct field initialization
(struct_field
  (identifier) @variable.member)

; Type annotations - user defined types
(type (identifier) @type)

; Identifiers (fallback)
(identifier) @variable
