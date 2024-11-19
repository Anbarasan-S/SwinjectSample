//
//  CustomScope.swift
//  SwinjectSample
//
//  Created by temp-17476 on 18/11/24.
//

import Foundation
import Swinject

struct CustomScope {
    let container = Container()
    init() {
        container.register(A.self) {r in
            A(b: r.resolve(B.self)!, c: r.resolve(C.self)!)
        }

        container.register(B.self) {_ in
            B()
        }.inObjectScope(ObjectScope.custom)
        
        container.register(C.self) {r in
            C(b: r.resolve(B.self)!)
        }
        
    }
}


class A {
    var b: B
    var c: C
    init(b: B, c: C) {
        self.b = b
        self.c = c
    }
}

class B {
    
}

class C {
    var b: B
    init(b: B) {
        self.b = b
    }
}


extension ObjectScope {
    static let custom = ObjectScope(storageFactory: PermanentStorage.init)
}
