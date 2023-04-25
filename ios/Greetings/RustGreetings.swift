//
//  RustGreetings.swift
//  Greetings
//
//  Created by Jefe on 2023-04-25.
//

import Foundation

class RustGreetings {
    func sayHello(to: String) -> String {
        let result = rust_greeting(to)
        let swift_result = String(cString: result!)
        rust_greeting_free(UnsafeMutablePointer(mutating: result))
        return swift_result
    }
}
