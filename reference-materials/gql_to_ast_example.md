Yes, there are Go packages that can take a GraphQL schema and produce an AST or JSON output. Here are a couple of notable ones:

1. **gqlparser**:
   - The `gqlparser` package is part of the `graphql-go` library and can parse GraphQL schema definitions into an AST. It also allows for introspection of the schema.
   - **Installation**: 
     ```bash
     go get github.com/graphql-go/graphql
     ```
   - **Usage Example**:
     ```go
     import (
         "github.com/graphql-go/graphql"
         "github.com/graphql-go/graphql/language/parser"
         "github.com/graphql-go/graphql/language/ast"
     )

     func main() {
         schemaString := `
         type Query {
             hello: String
         }`
         
         doc, err := parser.Parse(parser.Source{Input: schemaString})
         if err != nil {
             panic(err)
         }

         // doc is the AST representation
         // You can convert it to JSON if needed
     }
     ```

2. **graphql-go-tools**:
   - This package provides tools for creating GraphQL servers in Go and includes functionalities for working with GraphQL schemas, including parsing and transforming them.
   - **Installation**:
     ```bash
     go get github.com/99designs/gqlgen
     ```
   - **Usage**: 
     You can define your GraphQL schema in a `.graphql` file and use the tool to generate Go code and handle schema introspection.
   
3. **gqlgen**:
   - `gqlgen` is a popular Go library for building GraphQL servers, which can also parse GraphQL schema files. It generates code based on the schema and supports introspection.
   - **Installation**:
     ```bash
     go get github.com/99designs/gqlgen
     ```
   - **Usage**:
     You define your schema in a `.graphql` file, and `gqlgen` will handle the rest, allowing you to work with Go types and provide a JSON output.

These libraries are widely used in the Go ecosystem for building GraphQL servers and handling schema parsing and introspection effectively. You can refer to their documentation for detailed usage instructions and examples.