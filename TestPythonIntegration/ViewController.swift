//
//  ViewController.swift
//  TestPythonIntegration
//
//  Created by Giovanni Simonicca on 23/05/2023.
//

import UIKit
import PythonKit
import PythonSupport

class ViewController: UIViewController {
    let labl = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        view.backgroundColor = .red
        
        view.addSubview(labl)
        labl.frame = view.bounds
        test()
    }

    func test(){
        do {
                PythonSupport.initialize()
                let sys = try Python.attemptImport("sys")
                print("sys \(sys)")
                labl.text = "sys \(sys)"
        }catch {
            print("pyt_start \(error)")
            labl.text = "error \(error)"

        }

    }
}

