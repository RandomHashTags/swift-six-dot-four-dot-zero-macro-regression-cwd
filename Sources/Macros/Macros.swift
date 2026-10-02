
import SwiftCompilerPlugin
import SwiftSyntaxMacros
import SwiftDiagnostics

@main
struct Macros: CompilerPlugin {
    let providingMacros:[any Macro.Type] = [
        ReadFromDiskMacro.self
    ]
}
