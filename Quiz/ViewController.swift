//
//  ViewController.swift
//  Quiz
//
//  Created by Kellee Coleman on 6/6/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //following code *declares* two properties
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
//this code gives every instance of ViewController an outlet
//named questionLabel and an *outlet* named answeLabel
//The @IBOutlet tells Xcode that you will connect these outlets 
//to label objects using interface Building
//Now we have to set the outlets
//After creating these outlets I went to storyboard and opened
//the documentation outline and dragged viewcontroller to each label
//to make the connection between the UI labels and their outlets

    var questions: [String] = [
    "What is 7+7?",
    "What is is the capital of Vermont?",
    "What is cognac made from?"
    ]
    
    var answers: [String] = [
    "14",
    "Montpelier",
    "Grapes"
    ]
    
    @IBAction func unwindToViewController(segue: UIStoryboardSegue){
    }

//the integer will keep track of which question the user is currently on
    
    var currentQuestionIndex: Int = 0
    
//when a UIbutton is tapped, it calls a method on another object.
//That onject is called the target. The method that is triggered
//is called the *action*. This action is the name of the method that contains the
//code to be executed in response to the botton being tapped


    @IBAction func showNextQuestion(_ sender: UIButton){
       
        //implementing action method for "UI Next Question"
        currentQuestionIndex+=1
        if currentQuestionIndex == questions.count{
            currentQuestionIndex = 0;
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    @IBAction func showAnswer(_ sender: UIButton){
        
        //implementing action method for "UI Show Answer"
        let answer:String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
//The @IBAction keyword tells Xcode that you woll be making theseconnetions in interface Builder.
//After creating the functions without defining them we want to switch back to
//the Main.storyboard and connect its actions(the UI labels) with the target(ViewController)
//After doing so your story board object is complete *Congrats*
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
        
    }
    
    @IBAction func unwindToViewController(_ sender: UIStoryboardSegue)
    {
        
    }
    
//After the application is launched, you will want to load he first question from the array and
//use it to replace the ??? placeholder in the questionLabel labe. A good way to do this is by 
//overriding the viewDidLoad() method of viewController. ("Override" means that you are providing a
//custom implementation for a method.)
//Add the method to ViewController.swift
   }
