//
//  ViewController.swift
//  kuyakucounter
//
//  Created by 菊地雄飛 on 2019/06/10.
//  Copyright © 2019 菊地雄飛. All rights reserved.
//

import UIKit

import Material


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    
    @IBOutlet weak var StartText: UITextField!
    
    @IBOutlet weak var NowText: UITextField!
    
    @IBOutlet weak var goukeiLabel: UILabel!
    
    
    
    @IBOutlet weak var kakurituLabel: UILabel!
    
    @IBOutlet weak var kakurituLabel2: UILabel!
    
    @IBOutlet weak var kakurituLabel3: UILabel!
    
    @IBOutlet weak var kakurituLabel4: UILabel!
    
    @IBOutlet weak var kakurituLabel5: UILabel!
    
    @IBOutlet weak var kakurituLabel6: UILabel!
    
    
    @IBAction func goukei(_ sender: Any) {

        let startStringText:String? = StartText.text
        let nowStringText:String? = NowText.text
        
        let startNum = Int(startStringText!)
        let nowNum = Int(nowStringText!)
        
        if startNum != nil && nowNum != nil{
            
        let result = startNum! - nowNum!
        
         goukeiLabel.text = String(result)
            
//       緑ボタン
        let goukeiStringText:String? = goukeiLabel.text
        let countStringText:String? = countText.text
        
        let goukeiNum = Double(goukeiStringText!)
        let countNum = Double(countStringText!)
        
            let result2: Double = Double(goukeiNum! / countNum!)
        
        kakurituLabel.text = String(result2)
            
//        赤ボタン
            let goukei2StringText:String? = goukeiLabel.text
            let count2StringText:String? = countText2.text
            //
            let goukei2Num = Double(goukei2StringText!)
            let count2Num = Double(count2StringText!)
            
            
            let result3: Double = Double(goukei2Num! / count2Num!)
            
            kakurituLabel2.text = String(result3)
            
//            黄色ボタン
            let goukei3StringText:String? = goukeiLabel.text
            let count3StringText:String? = countText3.text
            //
            let goukei3Num = Double(goukei3StringText!)
            let count3Num = Double(count3StringText!)
            
            
            let result4: Double = Double(goukei3Num! / count3Num!)
            
            kakurituLabel3.text = String(result4)
            
//            青ボタン
            let goukei4StringText:String? = goukeiLabel.text
            let count4StringText:String? = countText4.text
            //
            let goukei4Num = Double(goukei4StringText!)
            let count4Num = Double(count4StringText!)
            
            
            let result5: Double = Double(goukei4Num! / count4Num!)
            
            kakurituLabel4.text = String(result5)
            
//            ピンクボタン
            let goukei5StringText:String? = goukeiLabel.text
            let count5StringText:String? = countText5.text
            //
            let goukei5Num = Double(goukei5StringText!)
            let count5Num = Double(count5StringText!)
            
            
            let result6: Double = Double(goukei5Num! / count5Num!)
            
            kakurituLabel5.text = String(result6)
            
//            白ボタン
            let goukei6StringText:String? = goukeiLabel.text
            let count6StringText:String? = countText6.text
            //
            let goukei6Num = Double(goukei6StringText!)
            let count6Num = Double(count6StringText!)
            
            
            let result7: Double = Double(goukei6Num! / count6Num!)
            
            kakurituLabel6.text = String(result7)
            
        
        }
        
        
        
        
    }
    
    @IBAction func ResetButton(_ sender: Any) {
        count = 0
        countText.text = "0"
        
        count2 = 0
        countText2.text = "0"
        
        count3 = 0
        countText3.text = "0"
        
        count4 = 0
        countText4.text = "0"
        
        count5 = 0
        countText5.text = "0"
        
        count6 = 0
        countText6.text = "0"
        
        count = 0
        StartText.text = "0"
        
        count = 0
        NowText.text = "0"
        
        count = 0
        goukeiLabel.text = "0"
        
        count = 0
        kakurituLabel.text = "0"
        
        count = 0
        kakurituLabel2.text = "0"
        
        count = 0
        kakurituLabel3.text = "0"
        
        count = 0
        kakurituLabel4.text = "0"
        
        count = 0
        kakurituLabel5.text = "0"
        
        count = 0
        kakurituLabel6.text = "0"
        
    }
    

    @IBOutlet weak var countText: UILabel!
    
    @IBOutlet weak var countText2: UILabel!
    
    @IBOutlet weak var countText3: UILabel!
    
    @IBOutlet weak var countText4: UILabel!
    
    @IBOutlet weak var countText5: UILabel!
    
    @IBOutlet weak var countText6: UILabel!
    
   
    var count: Int = 0
    
    @IBAction func button1(_ sender: Any) {
        count += 1
        
        countText.text = String(count)
        
    }
    
    var count2: Int = 0
    
    @IBAction func button2(_ sender: Any) {
        
        count2 += 1
        
        countText2.text = String(count2)
    }
    
    var count3: Int = 0
    
    @IBAction func button3(_ sender: Any) {
        
        count3 += 1
        countText3.text = String(count3)
    }
    
    var count4: Int = 0
    
    @IBAction func button4(_ sender: Any) {
        count4 += 1
        countText4.text = String(count4)
    }
    
    var count5: Int = 0
    
    @IBAction func button5(_ sender: Any) {
        count5 += 1
        countText5.text = String(count5)
    }
    
    var count6: Int = 0
    
    @IBAction func button6(_ sender: Any) {
        count6 += 1
        countText6.text = String(count6)
    }
    
    
    
    
}


