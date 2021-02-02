//
//  ViewController.swift
//  Alphabets
//
//  Created by Radhika Chilukuri on 29/01/21.
//

import UIKit



class ViewController: UIViewController,UITextFieldDelegate, UITextViewDelegate {
    
   // var alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".map({String($0)})
    
    var alphabet: [String] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    var alphaDictionary = [String: Int]()
    var score = 0
    
    
    @IBOutlet weak var userAlphabet: UITextField!
    
    @IBOutlet weak var userWord: UITextField!
    
    @IBOutlet weak var resultView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userAlphabet.delegate = self
        userWord.delegate = self
        resultView.delegate = self
        
        
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
   @IBAction func goTapped(_ sender: UIButton) {
    let inputLetter = (userAlphabet.text!)
   let inputWord = (userWord.text!)
    let word = inputWord.map({String($0)})
    if alphabet.contains(inputLetter) {
       // it exists, do something
        for val in 1...alphabet.count {
        var i: Int = 1

            for a in alphabet {
           alphaDictionary[a] = i
           i += 1
               }
           }
        let alpha = inputLetter
        //print(alphaDictionary[])
        //resultView.text = String(alphaDictionary[alpha]!)
        //if alphabet.contains(where: {$0 == word}) {
        for ele in word{
                
                print(alphaDictionary[ele]!)
                score += alphaDictionary[ele]!
                }
        //resultView.text = inputLetter
        //resultView.text = inputWord
        resultView.text = "Word Score:\(String(score))\n Alphabet Value:\(String(alphaDictionary[alpha]!))\n"
        //resultView.text = String(alphaDictionary[alpha]!)
    } else {
        let alert = UIAlertController(title: "Invalid character", message: "No match", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "Ok", style: .default)
                    alert.addAction(okAction)
                    present(alert, animated: true, completion: nil)
                }
        
    }
    }
    
    

    



