//
//  SecondViewController.swift
//  swift5MathTrainnig
//
//  Created by 深谷祐斗 on 2020/05/30.
//  Copyright © 2020 yuto fukaya. All rights reserved.
//

import UIKit




class SecondViewController: UIViewController {
    
    
    
    
    let total = 10

    var correctcount = 0
    
    var questionIndex = 0
    
    var answerIndex = 0
    
    @IBOutlet weak var leftNumberLabel: UILabel!
    @IBOutlet weak var centerNumberLabel: UILabel!
    @IBOutlet weak var rightNumberLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setQuestions()

       
    }
    
    
    
    func setQuestions(){
          let leftnumber = Int.random(in: 0 ..< 10)
          var centernumber = Int.random(in: 0 ..< 10)
        
        leftNumberLabel.text = "\(leftnumber)"
        centerNumberLabel.text = "\(centernumber)"
        
        
        answerIndex = Int.random(in: 0 ..< 4)
       
           switch answerIndex {
           case 0:
               rightNumberLabel.text =  "\(leftnumber + centernumber)"
           case 1 :
               rightNumberLabel.text = "\(leftnumber - centernumber)"
           case 2 :
               rightNumberLabel.text = "\(leftnumber * centernumber)"
         default:
           
           if centernumber == 0{
               centernumber = 1
               rightNumberLabel.text = "\(leftnumber / centernumber)"
           }else{
               rightNumberLabel.text = "\(leftnumber / centernumber)"
           }
           
           }
       }
    
    
    @IBAction func go(_ sender: Any) {
        
        if (sender as AnyObject).tag - 1 == answerIndex{
             correctcount = correctcount + 1
            }
            
            questionIndex = questionIndex + 1
        
            if questionIndex >= total{
            performSegue(withIdentifier: "next", sender: nil)
            }else{
            setQuestions()
             }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "next" {
               let nextVC = segue.destination as! ThirdViewController
            nextVC.correctedcount = Double(correctcount) / Double(total) * 100.0
    
        }
    
   }
}
   
