
import ReadHoopla
import SwiftSyntax
import SwiftSyntaxMacros

struct ReadFromDiskMacro: ExpressionMacro {
    static func expansion(of node: some FreestandingMacroExpansionSyntax, in context: some MacroExpansionContext) throws -> ExprSyntax {
        let out = readHoopla()
        return "\"\"\"\n\(raw: out)\n\"\"\""
    }
}