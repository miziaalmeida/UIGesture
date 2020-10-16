//
//  ViewController.swift
//  Exercicio-UIGesture
//
//  Created by Mizia Lima on 10/16/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelNumber: UILabel!
    
    @IBOutlet weak var viewTapGesture: UIView!
    @IBOutlet weak var viewSwipe: UIView!
    @IBOutlet weak var viewLongPressGesture: UIView!
    
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(add))
        viewTapGesture.addGestureRecognizer(tap)
        
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(remove))
        swipe.direction = .right
        viewSwipe.addGestureRecognizer(swipe)
        
        let longpress = UILongPressGestureRecognizer(target: self, action: #selector(add))
        longpress.minimumPressDuration = 1
        viewLongPressGesture.addGestureRecognizer(longpress)
        
    }
    
    @objc func add(){
        count += 1
        updateResult()
    }
    
    @objc func remove(){
        count -= 1
        updateResult()
    }
    
    func updateResult(){
        labelNumber.text = "\(count)"
        print(count)
    }
}
