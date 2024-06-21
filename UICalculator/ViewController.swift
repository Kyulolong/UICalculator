//
//  ViewController.swift
//  UICalculator
//
//  Created by 김인규 on 6/20/24.
//

import UIKit
import SnapKit

//level 4~6
class ViewController: UIViewController {

    let label = UILabel()
    private var number: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    private func configureUI() {
        view.backgroundColor = .black

        let buttondiv = makeButton(titleValue: "/", action: #selector(abc), backgroundColor: UIColor.orange)
        let buttonequal = makeButton(titleValue: "=", action: #selector(abc), backgroundColor: UIColor.orange)
        let buttonmul = makeButton(titleValue: "*", action: #selector(abc), backgroundColor: UIColor.orange)
        let buttonAC = makeButton(titleValue: "AC", action: #selector(abc), backgroundColor: UIColor.orange)
        let buttonmin = makeButton(titleValue: "-", action: #selector(abc), backgroundColor: UIColor.orange)
        let buttonadd = makeButton(titleValue: "+", action: #selector(abc), backgroundColor: UIColor.orange)
        let button1 = makeButton(titleValue: "1", action: #selector(abc), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button2 = makeButton(titleValue: "2", action: #selector(abc), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button3 = makeButton(titleValue: "3", action: #selector(abc), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button4 = makeButton(titleValue: "4", action: #selector(abc), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button5 = makeButton(titleValue: "5", action: #selector(abc), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button6 = makeButton(titleValue: "6", action: #selector(abc), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button7 = makeButton(titleValue: "7", action: #selector(abc), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button8 = makeButton(titleValue: "8", action: #selector(abc), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button9 = makeButton(titleValue: "9", action: #selector(abc), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button0 = makeButton(titleValue: "0", action: #selector(abc), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        
        let horizontalStackView = makeHorizontalStackView([button7, button8, button9, buttonadd])
        let horizontalStackView2 = makeHorizontalStackView([button4, button5, button6, buttonmin])
        let horizontalStackView3 = makeHorizontalStackView([button1, button2, button3, buttonmul])
        let horizontalStackView4 = makeHorizontalStackView([buttonAC, button0, buttonequal, buttondiv])
        let verticalStackView = makeVerticalStackView([horizontalStackView, horizontalStackView2, horizontalStackView3, horizontalStackView4])
        
        label.text = "\(number)"
        label.textColor = .white
        label.textAlignment = .right
        label.font = UIFont.boldSystemFont(ofSize: 60)
        
        
    [label, verticalStackView]
            .forEach{ view.addSubview($0) }
        
        label.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.top.equalToSuperview().offset(200)
            $0.height.equalTo(100)
        }
        
        horizontalStackView.snp.makeConstraints {
            $0.height.equalTo(80)
        }
        
        horizontalStackView2.snp.makeConstraints {
            $0.height.equalTo(80)
        }
        horizontalStackView3.snp.makeConstraints {
            $0.height.equalTo(80)
        }
        horizontalStackView4.snp.makeConstraints {
            $0.height.equalTo(80)
        }
        
        verticalStackView.snp.makeConstraints {
            $0.width.equalTo(350)
            $0.top.equalTo(label.snp.bottom).offset(60)
            $0.centerX.equalToSuperview()
        }
    }
    //view가 가장 상단에 있으며, 아래 label과 스택뷰가 있으며, 스택뷰 안에 버튼이 있음
    private func makeHorizontalStackView(_ views: [UIView]) -> UIView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.axis = .horizontal
        stackView.backgroundColor = .black
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }
    private func makeVerticalStackView(_ views: [UIView]) -> UIView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.axis = .vertical
        stackView.backgroundColor = .black
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }
    private func makeButton(titleValue: String, action: Selector, backgroundColor: UIColor) -> UIButton {
        let button = UIButton()
        button.setTitle(titleValue, for: .normal)
        button.backgroundColor = backgroundColor
        button.addTarget(self, action: action, for: .touchDown)
        button.frame.size.height = 80
        button.frame.size.width = 80
        button.layer.cornerRadius = 40
        return button
    }
    @objc
    private func abc() {
        print("테스트 중")
    }
    
}
















//level 1
//class ViewController: UIViewController {
//
//    let label = UILabel()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        configureUI()
//    }
//
//    private func configureUI() {
//        view.backgroundColor = .black
//        label.text = "12345"
//        label.textColor = .white
//        label.textAlignment = .right
//        label.font = UIFont.boldSystemFont(ofSize: 60)
//        
//    [label]
//            .forEach{ view.addSubview($0) }
//
//        label.snp.makeConstraints {
//            $0.leading.equalToSuperview().offset(30)
//            $0.trailing.equalToSuperview().offset(-30)
//            $0.top.equalToSuperview().offset(200)
//            $0.height.equalTo(100)
//        }
   
//    }

//}


//level 2,3
//class ViewController: UIViewController {
//
//    let label = UILabel()
//    let button7 = UIButton()
//    let button8 = UIButton()
//    let button9 = UIButton()
//    let buttonadd = UIButton()
//
//    let button4 = UIButton()
//    let button5 = UIButton()
//    let button6 = UIButton()
//    let buttonmin = UIButton()
//    
//    let button1 = UIButton()
//    let button2 = UIButton()
//    let button3 = UIButton()
//    let buttonmul = UIButton()
//
//    let buttonAC = UIButton()
//    let button0 = UIButton()
//    let buttonequal = UIButton()
//    let buttondiv = UIButton()
//
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        configureUI()
//    }
//
//    private func configureUI() {
//        view.backgroundColor = .black
//        let horizontalStackView = makeHorizontalStackView([button7, button8, button9, buttonadd])
//        let horizontalStackView2 = makeHorizontalStackView([button4, button5, button6, buttonmin])
//        let horizontalStackView3 = makeHorizontalStackView([button1, button2, button3, buttonmul])
//        let horizontalStackView4 = makeHorizontalStackView([buttonAC, button0, buttonequal, buttondiv])
//        
//        let verticalStackView = makeVerticalStackView([horizontalStackView, horizontalStackView2, horizontalStackView3, horizontalStackView4])
//        
//        label.text = "12345"
//        label.textColor = .white
//        label.textAlignment = .right
//        label.font = UIFont.boldSystemFont(ofSize: 60)
//        
//        button7.setTitle("7", for: .normal)
//        button7.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
////        button7.layer.cornerRadius = 40
//        button7.frame.size.height = 80
//        button7.frame.size.width = 80
//        
//        button8.setTitle("8", for: .normal)
//        button8.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
////        button8.layer.cornerRadius = 40
//        button8.frame.size.height = 80
//        button8.frame.size.width = 80
//        
//        button9.setTitle("9", for: .normal)
//        button9.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
////        button9.layer.cornerRadius = 40
//        button9.frame.size.height = 80
//        button9.frame.size.width = 80
//        
//        buttonadd.setTitle("+", for: .normal)
//        buttonadd.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
////        buttonadd.layer.cornerRadius = 40
//        buttonadd.frame.size.height = 80
//        buttonadd.frame.size.width = 80
//        
//        button4.setTitle("4", for: .normal)
//        button4.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
////        button4.layer.cornerRadius = 40
//        button4.frame.size.height = 80
//        button4.frame.size.width = 80
//        
//        button5.setTitle("5", for: .normal)
//        button5.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
////        button5.layer.cornerRadius = 40
//        button5.frame.size.height = 80
//        button5.frame.size.width = 80
//        
//        button6.setTitle("6", for: .normal)
//        button6.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
////        button6.layer.cornerRadius = 40
//        button6.frame.size.height = 80
//        button6.frame.size.width = 80
//        
//        buttonmin.setTitle("-", for: .normal)
//        buttonmin.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
////        buttonmin.layer.cornerRadius = 40
//        buttonmin.frame.size.height = 80
//        buttonmin.frame.size.width = 80
//        
//        button1.setTitle("1", for: .normal)
//        button1.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
////        button1.layer.cornerRadius = 40
//        button1.frame.size.height = 80
//        button1.frame.size.width = 80
//        
//        button2.setTitle("2", for: .normal)
//        button2.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
////        button2.layer.cornerRadius = 40
//        button2.frame.size.height = 80
//        button2.frame.size.width = 80
//        
//        button3.setTitle("3", for: .normal)
//        button3.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
////        button3.layer.cornerRadius = 40
//        button3.frame.size.height = 80
//        button3.frame.size.width = 80
//        
//        buttonmul.setTitle("*", for: .normal)
//        buttonmul.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
////        buttonmul.layer.cornerRadius = 40
//        buttonmul.frame.size.height = 80
//        buttonmul.frame.size.width = 80
//        
//        buttonAC.setTitle("AC", for: .normal)
//        buttonAC.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
////        buttonAC.layer.cornerRadius = 40
//        buttonAC.frame.size.height = 80
//        buttonAC.frame.size.width = 80
//        
//        button0.setTitle("0", for: .normal)
//        button0.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
////        button0.layer.cornerRadius = 40
//        button0.frame.size.height = 80
//        button0.frame.size.width = 80
//        
//        buttonequal.setTitle("=", for: .normal)
//        buttonequal.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
////        buttonequal.layer.cornerRadius = 40
//        buttonequal.frame.size.height = 80
//        buttonequal.frame.size.width = 80
//        
//        buttondiv.setTitle("/", for: .normal)
//        buttondiv.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
////        buttondiv.layer.cornerRadius = 40
//        buttondiv.frame.size.height = 80
//        buttondiv.frame.size.width = 80
//        
//    [label, verticalStackView]
//            .forEach{ view.addSubview($0) }
//        
//        label.snp.makeConstraints {
//            $0.leading.equalToSuperview().offset(30)
//            $0.trailing.equalToSuperview().offset(-30)
//            $0.top.equalToSuperview().offset(200)
//            $0.height.equalTo(100)
//        }
//        
//        horizontalStackView.snp.makeConstraints {
////            $0.leading.equalToSuperview().offset(20)
////            $0.trailing.equalToSuperview().offset(-20)
//            $0.height.equalTo(80)
//        }
//        
//        horizontalStackView2.snp.makeConstraints {
////            $0.leading.equalToSuperview().offset(20)
////            $0.trailing.equalToSuperview().offset(-20)
////            $0.center.equalToSuperview()
////            $0.top.equalTo(horizontalStackView.snp.bottom).offset(-10)
//            $0.height.equalTo(80)
//        }
//        horizontalStackView3.snp.makeConstraints {
////            $0.leading.equalToSuperview().offset(20)
////            $0.trailing.equalToSuperview().offset(-20)
////            $0.center.equalToSuperview()
////            $0.top.equalTo(horizontalStackView2.snp.bottom).offset(-10)
//            $0.height.equalTo(80)
//        }
//        horizontalStackView4.snp.makeConstraints {
////            $0.leading.equalToSuperview().offset(20)
////            $0.trailing.equalToSuperview().offset(-20)
////            $0.center.equalToSuperview()
////            $0.top.equalTo(horizontalStackView3.snp.bottom).offset(-10)
//            $0.height.equalTo(80)
//        }
//        
//        verticalStackView.snp.makeConstraints {
//            $0.width.equalTo(350)
//            $0.top.equalTo(label.snp.bottom).offset(60)
//            $0.centerX.equalToSuperview()
//        }
//    }
//    //view가 가장 상단에 있으며, 아래 label과 스택뷰가 있으며, 스택뷰 안에 버튼이 있음
//    private func makeHorizontalStackView(_ views: [UIView]) -> UIView {
//        let stackView = UIStackView(arrangedSubviews: views)
//        stackView.axis = .horizontal
//        stackView.backgroundColor = .black
//        stackView.spacing = 10
//        stackView.distribution = .fillEqually
//        return stackView
//    }
//    private func makeVerticalStackView(_ views: [UIView]) -> UIView {
//        let stackView = UIStackView(arrangedSubviews: views)
//        stackView.axis = .vertical
//        stackView.backgroundColor = .black
//        stackView.spacing = 10
//        stackView.distribution = .fillEqually
//        return stackView
//    }
//}
