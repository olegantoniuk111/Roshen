//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func getQuantityForProduction() -> String?{
    
    let alert = UIAlertController(title: "Get Quantity For production", message: "Enter only digit", preferredStyle: .actionSheet)
    
    
    let save = UIAlertAction(title: "calc", style: .default){
        (alertAction: UIAlertAction) in
        
        let quantityForProduction = (alert.textFields?[0].text!)
        
    }
    
    alert.addTextField(configurationHandler: nil)
    alert.addAction(save)
    self.present(alert, animated: true, completion: nil)
    
}

