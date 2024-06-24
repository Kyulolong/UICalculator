//
//  ViewController.swift
//  UICalculator
//
//  Created by 김인규 on 6/20/24.


import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let label = UILabel()
    private var number: String = ""
    private var result: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        view.backgroundColor = .black
        
        let buttondiv = makeButton(titleValue: "/", action: #selector(divTapped), backgroundColor: UIColor.orange)
        let buttonequal = makeButton(titleValue: "=", action: #selector(equalTapped), backgroundColor: UIColor.orange)
        let buttonmul = makeButton(titleValue: "*", action: #selector(mulTapped), backgroundColor: UIColor.orange)
        let buttonAC = makeButton(titleValue: "AC", action: #selector(resetButton), backgroundColor: UIColor.orange)
        let buttonmin = makeButton(titleValue: "-", action: #selector(minTapped), backgroundColor: UIColor.orange)
        let buttonadd = makeButton(titleValue: "+", action: #selector(addTapped), backgroundColor: UIColor.orange)
        let button1 = makeButton(titleValue: "1", action: #selector(number1Tapped), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button2 = makeButton(titleValue: "2", action: #selector(number2Tapped), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button3 = makeButton(titleValue: "3", action: #selector(number3Tapped), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button4 = makeButton(titleValue: "4", action: #selector(number4Tapped), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button5 = makeButton(titleValue: "5", action: #selector(number5Tapped), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button6 = makeButton(titleValue: "6", action: #selector(number6Tapped), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button7 = makeButton(titleValue: "7", action: #selector(number7Tapped), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button8 = makeButton(titleValue: "8", action: #selector(number8Tapped), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button9 = makeButton(titleValue: "9", action: #selector(number9Tapped), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        let button0 = makeButton(titleValue: "0", action: #selector(number0Tapped), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
        
        let horizontalStackView = makeHorizontalStackView([button7, button8, button9, buttonadd])
        let horizontalStackView2 = makeHorizontalStackView([button4, button5, button6, buttonmin])
        let horizontalStackView3 = makeHorizontalStackView([button1, button2, button3, buttonmul])
        let horizontalStackView4 = makeHorizontalStackView([buttonAC, button0, buttonequal, buttondiv])
        let verticalStackView = makeVerticalStackView([horizontalStackView, horizontalStackView2, horizontalStackView3, horizontalStackView4])
        
        label.text = "\(result)"
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
    private func number1Tapped() {
        number += "1"
        label.text = number
    }
    @objc
    private func number2Tapped() {
        number += "2"
        label.text = number
    }
    @objc
    private func number3Tapped() {
        number += "3"
        label.text = number
    }
    @objc
    private func number4Tapped() {
        number += "4"
        label.text = number
    }
    @objc
    private func number5Tapped() {
        number += "5"
        label.text = number
    }
    @objc
    private func number6Tapped() {
        number += "6"
        label.text = number
    }
    @objc
    private func number7Tapped() {
        number += "7"
        label.text = number
    }
    @objc
    private func number8Tapped() {
        number += "8"
        label.text = number
    }
    @objc
    private func number9Tapped() {
        number += "9"
        label.text = number
    }
    @objc
    private func number0Tapped() {
        if number != "0" && !number.isEmpty {
            number += "0"
            label.text = number
        } else {
            return resetButton()
        }
    }
    @objc
    private func addTapped() {
        number += "+"
        label.text = number
    }
    @objc
    private func minTapped() {
        number += "-"
        label.text = number
    }
    @objc
    private func mulTapped() {
        number += "*"
        label.text = number
    }
    @objc
    private func divTapped() {
        number += "/"
        label.text = number
    }
    @objc
    private func equalTapped() -> String {
        if let result = calculate(expression: number) {
            self.number = String(result)
            label.text = number
            return number
        } else{
            return ""
        }
    }
    @objc
    private func resetButton() {
        self.number = ""
        label.text = "0"
    }
    //number에 쓰인 계산식을 계산하는 함수
    func calculate(expression: String) -> Int? {
        let expression = NSExpression(format: expression)
        if let result = expression.expressionValue(with: nil, context: nil) as? Int {
            return result
        } else {
            return nil
        }
    }
    
}
