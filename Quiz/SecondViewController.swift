//
//  SecondViewController.swift
//  Quiz
//
//  Created by Kellee Coleman on 6/6/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import UIKit

class SecondViewConroller: UIViewController,UITextViewDelegate {
    //I need two variables to hold strings
    //we will do this through the use of action functions
    //we need to grab the text from the UITextField and store it into
    //the mutable strings then pass the strings to the arrays inside 
    //of the view controller
        
    @IBOutlet weak var newQuestion: UITextField!
    @IBOutlet weak var newAnswer: UITextField!
    var otherVC = ViewController()
    var questionsCount: Int = 0
    
    var savedText:String!
    
    func createQestion(newQuestion: UITextField ) -> Bool{
    //we have to reference the question array in ViewController
        if(newQuestion.resignFirstResponder()){
        questionsCount = otherVC.questions.count
        questionsCount+=1
    //now we need to update the size of the array in the ViewController
    //and add the newQuestion into that array
        return true
        }
        return false
    }
    func createAnswer(newAnswer: UITextField)-> Bool{
    //we have to reference the answer array in ViewController
        if questionsCount == (1 + otherVC.answers.count)
            && (newAnswer.resignFirstResponder()){
            //we can use integer variable questionsCount to dyanmically update
            //the size of the answer array
            return true
        }
            return false
        }
}
