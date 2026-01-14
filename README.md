# EZ Syntax Highlighting for Zed

Syntax highlighting extension for the [EZ programming language](https://github.com/SchoolyB/EZ) in the [Zed editor](https://zed.dev).

## Installation

### From Dev Extension (Recommended for now)

1. Clone this repository:
   ```bash
   git clone https://github.com/SchoolyB/ez-syntax.git
   ```

2. Open Zed and open the Command Palette (`Cmd+Shift+P` on macOS)

3. Type `zed: install dev extension` and select it

4. Navigate to and select the cloned `ez-syntax` directory

5. Open any `.ez` file to see syntax highlighting

### Rebuilding the Extension

If you make changes to the extension, rebuild it:

1. Open Command Palette (`Cmd+Shift+P`)
2. Type `zed: reload extensions`

## Features

Comprehensive syntax highlighting for:

### Keywords (23)
- Control flow: `temp`, `const`, `do`, `return`, `if`, `or`, `otherwise`, `for`, `for_each`, `as_long_as`, `loop`, `break`, `continue`
- Module system: `import`, `using`, `use`, `module`, `private`
- Types: `struct`, `enum`, `new`
- Pattern matching: `when`, `is`, `default`
- Type system: `cast`, `ensure`
- Operators: `in`, `not_in`, `range`

### Types
- Primitive: `int`, `float`, `bool`, `char`, `byte`, `string`, `map`
- Signed integers: `i8`, `i16`, `i32`, `i64`, `i128`, `i256`
- Unsigned integers: `u8`, `u16`, `u32`, `u64`, `u128`, `u256`
- Floats: `f32`, `f64`
- Special: `File`, `Database`, `Error`

### Built-in Functions
Highlighted distinctly: `len`, `typeof`, `copy`, `ref`, `append`, `input`, `read_int`, `error`, `panic`, `assert`, `exit`

### Constants
`true`, `false`, `nil`, `EXIT_SUCCESS`, `EXIT_FAILURE`

### Attributes
`#suppress`, `#strict`, `#enum`, `#flags`

### Strings
- Regular strings with interpolation: `"hello ${name}"`
- Raw strings (no escapes/interpolation): `` `raw\nstring` ``

### Module System
- Module declarations: `module mymodule`
- Import statements: `import @std`, `import "../path"`
- Import & use: `import & use @std`
- Using statements: `using std`
- Stdlib module names highlighted as namespace

### Other
- Comments: `//` and `/* */`
- Numbers: integers, floats, hex (`0xFF`), binary (`0b101`)
- Operators: `+`, `-`, `*`, `/`, `%`, `=`, `==`, `!=`, `<`, `>`, `<=`, `>=`, `&&`, `||`, `!`, `&`, `++`, `--`, `+=`, `-=`, `*=`, `/=`, `->`
- Function definitions and calls
- Struct and enum declarations

## Structure

```
ez-syntax/
├── extension.toml           # Extension manifest
├── languages/
│   └── ez/
│       ├── config.toml      # Language configuration
│       └── highlights.scm   # Syntax highlighting queries
└── grammars/                # (created by Zed on install)
    └── ez/                  # Tree-sitter grammar (cloned from tree-sitter-ez)
```

## Related

- [EZ Programming Language](https://github.com/SchoolyB/EZ)
- [tree-sitter-ez](https://github.com/SchoolyB/tree-sitter-ez) - Tree-sitter grammar for EZ
