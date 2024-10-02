# Keywords

## go:generate

- is used to invoke code generator
- it doesn't do any except execute the code that comes dirrectly after it
- it doesn't pass any variable or arguments or anything

## AST

Abstract Syntax Tree

## [go2ast](https://github.com/reflog/go2ast)

It takes a piece of code and emits exactly the Go code needed to build its AST.

## [astutil](golang.org/x/tools/astutil)

A more powerful version of go/ast. While go/ast doesn't allow for replacing a NODE, astutil does. 
More than just replace a NODE, it provides a cursor that allows for deleting, replacing and inserting nodes.

## Code generation as defined by Ilan Tentser [Accessed 2024](https://medium.com/@ilantentser/boosting-development-efficiency-with-golang-code-generation-ee53242886ea#:~:text=Code%20generation%20is%20a%20technique,it%2C%20streamlining%20the%20development%20process.)

Code generation is a technique that involves automatically creating source code based on predefined templates or specifications. Rather than hand-crafting repetitive or boilerplate code, developers use tools to generate it, streamlining the development process.

## Note worthy template formats

They look like: prisma.schema and graphql schema. This can be used without too much indentation. They look like a code you will write in go or js. The syntax is specific yet not too overly verbose.

Example:
- thrift
- yaml
- protobuf

 


