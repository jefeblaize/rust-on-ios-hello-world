//
//  ViewController.swift
//  Greetings
//
//  Created by Jefe on 2023-04-24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let rustGreetings = RustGreetings()
        print("\(rustGreetings.sayHello(to: "world"))")
        // Do any additional setup after loading the view.
    }


}

