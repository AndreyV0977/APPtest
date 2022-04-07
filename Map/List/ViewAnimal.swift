//
//  ViewAnimal.swift
//  Map
//
//  Created by Компьютер on 16.03.2022.
//

import UIKit

class ViewAnimal: UIViewController {

    @IBOutlet weak var Text: UITextView!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dataAnimal = DataApi()
        let url = "https://dog.ceo/api/breeds/list/all"
        label.text = dataAnimal.urls
      
        func viewDidLoad() {
            super.viewDidLoad()
            dataAnimal.Animal(url)
            
        }

viewDidLoad()
   
}
}
