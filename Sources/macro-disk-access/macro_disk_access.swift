
@freestanding(expression)
macro doThing() -> String = #externalMacro(module: "Macros", type: "ReadFromDiskMacro")