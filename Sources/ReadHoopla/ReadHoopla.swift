
import Foundation
import VaporUtil

@inline(never)
package func readHoopla() -> String {
    let directory = DirectoryConfiguration.detect()
    let path:String = directory.workingDirectory + "hoopla1.proto"
    let out:String
    if let url = URL(string: path), let contents = FileManager.default.contents(atPath: url.path) {
        out = String(decoding: contents, as: UTF8.self)
    } else {
        out = "file not found at path: " + path
    }
    return out
}