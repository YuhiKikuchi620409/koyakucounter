//
//  ViewController.swift
//  kuyakucounter
//
//  Created by 菊地雄飛 on 2019/06/10.
//  Copyright © 2019 菊地雄飛. All rights reserved.
//

import UIKit
import GoogleMobileAds
import Material

import CHIPageControl



class ViewController: UIViewController {
    
    @IBOutlet weak var bannerView: GADBannerView!
    
    
    @IBOutlet weak var bannreView2: GADBannerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"    //<-追加
        bannerView.rootViewController = self   //<-追加
        bannerView.load(GADRequest())
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        goukeiLabel.text = StartText.text
//        goukeiLabel.text = NowText.text
        self.view.endEditing(true)
    }
    
    
    
    func setTextInt (_ name:UILabel,_ value:Int){
        name.text = String(value)
    }
    func setTextDouble (_ name:UILabel,_ value:Double){
        name.text = String(value)
    }
    
//          画面が変わった時に保存
    override func viewWillDisappear(_ animated: Bool) {
      
        UserDefaults.standard.set(countArray, forKey: "countPage1")
        UserDefaults.standard.set(kakurituArray, forKey: "kakurituPage1")
    }
//       画面が表示された時にデータを持ってくる
    override func viewWillAppear(_ animated: Bool) {
        if UserDefaults.standard.object(forKey: "countPage1") != nil{
            countArray = UserDefaults.standard.object(forKey: "countPage1") as! [Int]
            
        }
        if UserDefaults.standard.object(forKey: "kakurituPage1") != nil{
            kakurituArray = UserDefaults.standard.object(forKey: "kakurituPage1") as! [Double]
        }
        setTextInt(countText, countArray[0])
        setTextInt(countText2, countArray[1])
        setTextInt(countText3, countArray[2])
        setTextInt(countText4, countArray[3])
        setTextInt(countText5, countArray[4])

        
        
//        StartText.text = String(countArray[6])
        StartText.text = ""
        NowText.text = ""
        goukeiLabel.text = String(countArray[8])
        
        
        kakurituLabel.text =  String(kakurituArray[0])
        
        kakurituLabel2.text = String(kakurituArray[1])
        
        kakurituLabel3.text = String(kakurituArray[2])
        
        kakurituLabel4.text = String(kakurituArray[3])
        
        kakurituLabel5.text = String(kakurituArray[4])
        
    }
    
    var countArray: [Int] = [0,0,0,0,0,0,0,0]
    var kakurituArray : [Double] = [0,0,0,0,0]
    
     var count = 0
    
    
    @IBOutlet weak var StartText: UITextField!
    
    @IBOutlet weak var NowText: UITextField!
    
    @IBOutlet weak var goukeiLabel: UILabel!
    
    
    
    @IBOutlet weak var kakurituLabel: UILabel!
    
    @IBOutlet weak var kakurituLabel2: UILabel!
    
    @IBOutlet weak var kakurituLabel3: UILabel!
    
    @IBOutlet weak var kakurituLabel4: UILabel!
    
    @IBOutlet weak var kakurituLabel5: UILabel!
    
    
    
    @IBAction func goukei(_ sender: Any) {

        let startStringText:String? = StartText.text
        let nowStringText:String? = NowText.text
        
        let startNum = Int(startStringText!)
        let nowNum = Int(nowStringText!)
        
        
        if startNum != nil && nowNum != nil && nowNum! >= startNum!{
            
            countArray[6] = startNum!
            
            countArray[7] = nowNum!
            
            
        let result = nowNum! - startNum!
        
         goukeiLabel.text = String(result)
            
            countArray[8] = result
//       緑ボタン
        let goukeiStringText:String? = goukeiLabel.text
        let countStringText:String? = countText.text
            
        let goukeiNum = Double(goukeiStringText!)
        let countNum = Double(countStringText!)
            
            if countNum != 0{
        
            let result2: Double = Double(goukeiNum! / countNum!)
            
            kakurituArray[0] = result2
            
            var shousuuten1 = result2
            
            let shousuuten1Floor = floor(shousuuten1*100)/100
            
        kakurituLabel.text = String(shousuuten1Floor)
            }
            
            
            
            
//                 赤ボタン
            let goukei2StringText:String? = goukeiLabel.text
            let count2StringText:String? = countText2.text
            //
            let goukei2Num = Double(goukei2StringText!)
            let count2Num = Double(count2StringText!)
            
            if count2Num != 0{
            
            let result3: Double = Double(goukei2Num! / count2Num!)
            
            
            
            kakurituArray[1] = result3
            
            var shousuuten2 = result3
            
            let shousuuten2Floor = floor(shousuuten2*100)/100
            
            kakurituLabel2.text = String(shousuuten2Floor)
            }
            
//                  黄色ボタン
            let goukei3StringText:String? = goukeiLabel.text
            let count3StringText:String? = countText3.text
            //
            let goukei3Num = Double(goukei3StringText!)
            let count3Num = Double(count3StringText!)
            
            if count3Num != 0{
            
            let result4: Double = Double(goukei3Num! / count3Num!)
            
            kakurituArray[2] = result4
            
            var shousuuten3 = result4
            
            let shousuuten3Floor = floor(shousuuten3*100)/100
            
            kakurituLabel3.text = String(shousuuten3Floor)
            }
            
//                     青ボタン
            let goukei4StringText:String? = goukeiLabel.text
            let count4StringText:String? = countText4.text
            //
            let goukei4Num = Double(goukei4StringText!)
            let count4Num = Double(count4StringText!)
            
            if count4Num != 0{
            
            
            let result5: Double = Double(goukei4Num! / count4Num!)
            
            kakurituArray[3] = result5
            
            var shousuuten4 = result5
            
            let shousuuten4Floor = floor(shousuuten4*100)/100
            
            kakurituLabel4.text = String(shousuuten4Floor)
            }
//                    ピンクボタン
            let goukei5StringText:String? = goukeiLabel.text
            let count5StringText:String? = countText5.text
            //
            let goukei5Num = Double(goukei5StringText!)
            let count5Num = Double(count5StringText!)
            
            if count5Num != 0{
            
            let result6: Double = Double(goukei5Num! / count5Num!)
            
            kakurituArray[4] = result6
            
            var shousuuten5 = result6
            
            let shousuuten5Floor = floor(shousuuten5*100)/100
            
            kakurituLabel5.text = String(shousuuten5Floor)
            }
        }
       }
    
    @IBAction func ResetButton(_ sender: Any) {

        let alert = UIAlertController(title: "リセット", message: "データをリセットしますか？", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "キャンセル", style: .default)
        let okAction = UIAlertAction(title: "OK", style: .destructive) { (action: UIAlertAction) in
//               削除の処理
            self.countArray = [0,0,0,0,0,0,0,0,0]
            self.kakurituArray = [0,0,0,0,0,0]
            self.countText.text = "0"
            
            self.countText2.text = "0"
            
            self.countText3.text = "0"
            
            self.countText4.text = "0"
            
            self.countText5.text = "0"
            
            self.StartText.text = ""
         
            
            self.NowText.text = ""
            
            self.goukeiLabel.text = "0"
            
            self.kakurituLabel.text = "0"
            
            self.kakurituLabel2.text = "0"
            
            self.kakurituLabel3.text = "0"
            
            self.kakurituLabel4.text = "0"
            
            self.kakurituLabel5.text = "0"
            

            
        }
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBOutlet weak var countText: UILabel!
    
    @IBOutlet weak var countText2: UILabel!
    
    @IBOutlet weak var countText3: UILabel!
    
    @IBOutlet weak var countText4: UILabel!
    
    @IBOutlet weak var countText5: UILabel!
    
   
    
    @IBAction func button1(_ sender: Any) {
        countArray[0] += 1
        
        countText.text = String(countArray[0])
       print(countArray)
    }
    
    var count2: Int = 0
    
    @IBAction func button2(_ sender: Any) {
        
        countArray[1] += 1
        countText2.text = String(countArray[1])
    }
    
    var count3: Int = 0
    
    @IBAction func button3(_ sender: Any) {
        
        countArray[2] += 1
        countText3.text = String(countArray[2])
    }
    
    var count4: Int = 0
    
    @IBAction func button4(_ sender: Any) {
        countArray[3] += 1
        countText4.text = String(countArray[3])
    }
    
    var count5: Int = 0
    
    @IBAction func button5(_ sender: Any) {
        countArray[4] += 1
        countText5.text = String(countArray[4])
    }
    

    @IBAction func longPress1(_ sender: Any) {
        countText.text = "0"
        kakurituLabel.text = "0"
        countArray[0]  = 0
    }
    
    @IBAction func longPress2(_ sender: Any) {
        countText2.text = "0"
        kakurituLabel2.text = "0"
        countArray[1]  = 0
    }
    
    @IBAction func longPress3(_ sender: Any) {
        countText3.text = "0"
        kakurituLabel3.text = "0"
        countArray[2]  = 0
    }
    
    @IBAction func longPress4(_ sender: Any) {
        countText4.text = "0"
        kakurituLabel4.text = "0"
        countArray[3]  = 0
    }
    @IBAction func longPress5(_ sender: Any) {
        countText5.text = "0"
        kakurituLabel5.text = "0"
        countArray[4]  = 0
    }
    
}



