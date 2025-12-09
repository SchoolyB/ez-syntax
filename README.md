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

Syntax highlighting for:

- Keywords (`temp`, `const`, `do`, `if`, `or`, `otherwise`, `for`, `for_each`, `as_long_as`, `loop`, `break`, `continue`, `return`, `import`, `using`, `struct`, `enum`, `new`, `range`, `in`, `not_in`)
- Primitive types (`int`, `i8`, `i16`, `i32`, `i64`, `i128`, `i256`, `u8`, `u16`, `u32`, `u64`, `u128`, `u256`, `float`, `f32`, `f64`, `bool`, `char`, `byte`, `string`, `map`)
- Operators (`+`, `-`, `*`, `/`, `%`, `=`, `==`, `!=`, `<`, `>`, `<=`, `>=`, `&&`, `||`, `!`, `&`, `++`, `--`, `+=`, `-=`, `*=`, `/=`, `->`)
- String literals and interpolation (`"hello ${name}"`)
- Comments (`//` and `/* */`)
- Function definitions and calls
- Struct and enum declarations
- Attributes (`@(float)`, `@suppress()`)
- Import paths (`@std`, `@arrays`, `@maps`)
- Numbers (integers, floats, hex `0xFF`, binary `0b101`)

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
