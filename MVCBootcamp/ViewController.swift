//
//  ViewController.swift
//  MVCBootcamp
//
//  Created by Mohamed Mostapha on 12/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
    let person = Person(firstName: "John", lastName: "Smith", gender: "male", age: 31, weight: 75.0, height: 179)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let myView = ExampleView(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
        myView.center = view.center
        myView.configure(with: "\(person.firstName) \(person.lastName)")
        view.addSubview(myView)
    }

}

struct Person {
    let firstName: String
    let lastName: String
    let gender: String
    let age: Int
    let weight: Double
    let height: Double
}

struct Location {
    let city: String
}

