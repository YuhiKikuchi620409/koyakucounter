//
//  ViewController2.swift
//  kuyakucounter
//
//  Created by 菊地雄飛 on 2019/06/13.
//  Copyright © 2019 菊地雄飛. All rights reserved.
//
import UIKit

import Material


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    func setTextInt (_ name:UILabel,_ value:Int){
        name.text = String(value)
    }
    func setTextDouble (_ name:UILabel,_ value:Double){
        name.text = String(value)
    }
    
    //    画面が変わった時に保存
    override func viewWillDisappear(_ animated: Bool) {
        
        UserDefaults.standard.set(countArray, forKey: "countPage1")
        UserDefaults.standard.set(kakurituArray, forKey: "kakurituPage1")
    }
    //    画面が表示された時にデータを持ってくる
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
        setTextInt(countText6, countArray[5])
        
        
        StartText.text = String(countArray[6])
        NowText.text = String(countArray[7])
        goukeiLabel.text = String(countArray[8])
        
        
        kakurituLabel.text =  String(kakurituArray[0])
        
        kakurituLabel2.text = String(kakurituArray[1])
        
        kakurituLabel3.text = String(kakurituArray[2])
        
        kakurituLabel4.text = String(kakurituArray[3])
        
        kakurituLabel5.text = String(kakurituArray[4])
        
        kakurituLabel6.text = String(kakurituArray[5])
    }
    
    var countArray: [Int] = [0,0,0,0,0,0,0,0,0]
    var kakurituArray : [Double] = [0,0,0,0,0,0]
    
    var count = 0




}


