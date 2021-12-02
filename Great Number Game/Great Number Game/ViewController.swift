//
//  ViewController.swift
//  Great Number Game
//
//  Created by admin on 02/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var randomNumber = Int.random(in: 1...100)

    @IBOutlet weak var editText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func sbmitButton(_ sender: Any) {
        if editText.text?.isEmpty == false{
            if Int(editText.text!) == randomNumber{
                let dialog = UIAlertController(title: "Correct", message: "\(editText.text!) was correct!!", preferredStyle: .alert)
                
                let no = UIAlertAction(title: "No", style: .default)
                
                let playAgain = UIAlertAction(title: "Play again", style: .cancel) {(_) -> Void in self.randomNumber = Int.random(in: 0...100)}
                
                dialog.addAction(playAgain)
                dialog.addAction(no)
                
                
                
                self.present(dialog, animated: true, completion: nil)
                dialog.view.backgroundColor = UIColor.green
            }
            else{
                let dialog = UIAlertController(title: "Wrong Guess", message: "\(editText.text!) is wrong guess, you can try again", preferredStyle: .alert)
                
                let tryAgain = UIAlertAction(title: "Try again", style: .default)
                
                dialog.addAction(tryAgain)
                
                self.present(dialog, animated: true, completion: nil)
                dialog.view.backgroundColor = UIColor.red
            }
        }
    }
}

