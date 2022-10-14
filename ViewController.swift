//
//  ViewController.swift
//  UpDownGame
//
//  Created by 박다미 on 2022/10/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLable: UILabel!
    @IBOutlet weak var numberLable: UILabel!
    
    
    var comNum = Int.random(in: 1...10)
    var myNum : Int = 1

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 1) mainLable에 "선택하세요"
        mainLable.text = "선택하세요"

        // 2) numberLable " "빈문자열
        numberLable.text = " "
        
        
    }

    
    @IBAction func btnTapped(_ sender: UIButton) {
        
        // 1) 버튼 숫자 가져오기 -->numberLable에 넣기
        guard let numString = sender.currentTitle else {return}  //누른 버튼 title 가져옴
        numberLable.text = numString
        
        // 2)선택한 숫자를 변수에 저장
        guard let num = Int(numString) else {return}
        myNum = num
        
        
    }
    
    

    @IBAction func selectBtnTapped(_ sender: UIButton) {
        // 1)컴퓨터가 선택한 숫자와 내가 선택한 숫자 비교( up down bingo) ->mainLable
        if comNum>myNum {
            mainLable.text = "UP!"
        }else if comNum<myNum{
            mainLable.text="DOWN!"
        }else{
            mainLable.text = "Bingo😎"
        }
        
        
    }
    
    
    @IBAction func resetBtnTapped(_ sender: UIButton) {
        // 1) mainLable에 "선택하세요"
        mainLable.text = "선택하세요"
        // 2) 컴퓨터 랜덤숫자 다시 설정
        comNum = Int.random(in: 1...10)
        // 3) numberLable " "
        numberLable.text = " "
        
    }
    
}

