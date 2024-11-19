//
//  ViewController.swift
//  SwinjectSample
//
//  Created by temp-17476 on 18/11/24.
//

import UIKit
import Swinject

class ViewController: UIViewController {
    var testVc: TestVC? = TestVC()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+0.8) {
//            self.navigationController?.pushViewController(self.testVc, animated: true)
//        }
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+6000) {
//            self.navigationController?.popViewController(animated: true)
//        }
//        let customScope = CustomScope()
//        let a = customScope.container.resolve(A.self)!
//        let b = customScope.container.resolve(B.self)!
//        let c = customScope.container.resolve(C.self)!
//        debugPrint(Unmanaged.passUnretained(a.b).toOpaque())
//        debugPrint(Unmanaged.passUnretained(b).toOpaque())
//        debugPrint(Unmanaged.passUnretained(a.c.b).toOpaque())
//        debugPrint(Unmanaged.passUnretained(customScope.container.resolve(B.self)!).toOpaque())
//        customScope.container.resetObjectScope(.custom)
//        debugPrint(Unmanaged.passUnretained(a.b).toOpaque())
//        debugPrint(Unmanaged.passUnretained(b).toOpaque())
//        let bCopy = customScope.container.resolve(B.self)!
//        debugPrint(Unmanaged.passUnretained(bCopy).toOpaque())
    }
}

class TestVC: UIViewController {
//    weak var d: D?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        // Do any additional setup after loading the view
    }
    
    deinit {
        debugPrint("Deinit of TestVC is called!!")
    }
}

class D {
    var e: E
    deinit {
        debugPrint("Deinit of class D is called")
    }
    
    init() {
        self.e = E()
    }
}

class E {
    func printDum() {
        print("Dum")
    }
}
