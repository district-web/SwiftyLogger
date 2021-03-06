import Foundation

/// Log object for DEBUG
/// - Parameters:
///     - object: `T` optional
///     - filename: `String` optional, default is `#file`
///     - line: `Int`, default is `#line`
///     - funcname: `String`, default is `#function`
public func Log<T>(_ object: T?, filename: String = #file, line: Int = #line, funcname: String = #function) {
    guard let object = object else { return }
    print("[***** \(Date())] \(filename.components(separatedBy: "/").last ?? "") (line: \(line)) :: \(funcname) :: \(object)")
}
