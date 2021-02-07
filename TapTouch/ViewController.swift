//
//  ViewController.swift
//  TapTouch
//
//  Created by 이충현 on 2021/02/08.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var txtMessage: UILabel!
    @IBOutlet var txtTapCount: UILabel!
    @IBOutlet var txtTouchCount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    // 터치이벤트 메서드 구현
    // 터치 이벤트를 사용하기 위해서 터치 이벤트가 발생했을 때 호출되는 메서드를 사용자가 재정의해야함
    // 재정의란, 부모 클래스에서 생성해 놓은 메서드에게 할 일을 새로 부여한다는 의미
    // 즉, 터치 이벤트가 발생했을 때 호출되는 메서드가 정해져 있는데, 해당 메서드가 무슨 일을 할지 정의한다는 의미
    
    // 터치가 시작될 때 호출
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //현재 발생한 터치 이벤트를 가지고 온다
        let touch = touches.first! as UITouch
        // 메서드에서 현재 발생한 이벤트의 종류를 출력
        txtMessage.text = "Touches Began"
        // touches 세트 안에 포함된 터치의 개수를 출력
        txtTapCount.text = String(touch.tapCount)
        // 터치 객체들 중 첫 번째 객체에서 탭의 개수를 가져와 출력
        txtTouchCount.text = String(touches.count)
    }
    
    // 터치된 손가락이 움직였을 때 호출
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //현재 발생한 터치 이벤트를 가지고 온다
        let touch = touches.first! as UITouch
        // 메서드에서 현재 발생한 이벤트의 종류를 출력
        txtMessage.text = "Touches Moved"
        // touches 세트 안에 포함된 터치의 개수를 출력
        txtTapCount.text = String(touch.tapCount)
        // 터치 객체들 중 첫 번째 객체에서 탭의 개수를 가져와 출력
        txtTouchCount.text = String(touches.count)
    }
    
    // 화면에서 손가락을 떼었을 때 호출
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //현재 발생한 터치 이벤트를 가지고 온다
        let touch = touches.first! as UITouch
        // 메서드에서 현재 발생한 이벤트의 종류를 출력
        txtMessage.text = "Touches Ended"
        // touches 세트 안에 포함된 터치의 개수를 출력
        txtTapCount.text = String(touch.tapCount)
        // 터치 객체들 중 첫 번째 객체에서 탭의 개수를 가져와 출력
        txtTouchCount.text = String(touches.count)
    }
    
}

