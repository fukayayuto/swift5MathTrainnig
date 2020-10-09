//
//  ThirdViewController.swift
//  swift5MathTrainnig
//
//  Created by 深谷祐斗 on 2020/05/30.
//  Copyright © 2020 yuto fukaya. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController{

    
  
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var resultComent: UILabel!
   
    var correctedcount = 0.0
    //値渡し
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = "\(round(correctedcount))%"
        
        
        if correctedcount >= 80{
            
            resultComent.text = "great"
            
        }else if correctedcount >= 60 {
            
            resultComent.text = "good"
        }else{
            
            resultComent.text = "Too bad"
        
        }
            
            
        }
    
    
    @IBAction func back(_ sender: Any) {
        
         // 画面遷移をする
    
    }
    
    
    
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


