//
//  ViewController.swift
//  ExViewLayer
//
//  Created by Jake.K on 2022/05/20.
//

import UIKit

class ViewController: UIViewController {
  // fist layer
  private let firstLayerView: PassThroughView = {
    let view = PassThroughView()
    view.backgroundColor = .clear
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  private let backgroundImageView: UIImageView = {
    let view = UIImageView()
    view.image = UIImage(named: "background")
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  private let backgroundButton: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.borderWidth = 2
    button.layer.borderColor = UIColor.systemBlue.cgColor
    button.layer.cornerRadius = 14
    button.addTarget(self, action: #selector(didTapFirstButton), for: .touchUpInside)
    
    let label = UILabel()
    label.text = "버튼(1th layer)"
    label.numberOfLines = 1
    label.isUserInteractionEnabled = false
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = .systemFont(ofSize: 20)
    label.textColor = .systemBlue
    button.addSubview(label)
    
    NSLayoutConstraint.activate([
      label.leftAnchor.constraint(equalTo: button.leftAnchor, constant: 20),
      label.rightAnchor.constraint(equalTo: button.rightAnchor, constant: -20),
      label.bottomAnchor.constraint(equalTo: button.bottomAnchor, constant: -10),
      label.topAnchor.constraint(equalTo: button.topAnchor, constant: 10),
    ])
    return button
  }()
  
  // second layer
  private let secondLayerView: PassThroughView = {
    let view = PassThroughView()
    view.backgroundColor = .clear
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  private let someButton: UIButton = {
    let button = UIButton()
    button.layer.borderWidth = 2
    button.layer.borderColor = UIColor.gray.cgColor
    button.layer.cornerRadius = 14
    button.translatesAutoresizingMaskIntoConstraints = false
    button.addTarget(self, action: #selector(didTapSecondButton), for: .touchUpInside)
    
    let label = UILabel()
    label.text = "버튼(2th layer)"
    label.numberOfLines = 1
    label.isUserInteractionEnabled = false
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = .systemFont(ofSize: 20)
    label.textColor = .gray
    button.addSubview(label)
    
    NSLayoutConstraint.activate([
      label.leftAnchor.constraint(equalTo: button.leftAnchor, constant: 20),
      label.rightAnchor.constraint(equalTo: button.rightAnchor, constant: -20),
      label.bottomAnchor.constraint(equalTo: button.bottomAnchor, constant: -10),
      label.topAnchor.constraint(equalTo: button.topAnchor, constant: 10),
    ])
    
    return button
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.addSubview(self.firstLayerView)
    self.view.addSubview(self.secondLayerView)
    
    self.firstLayerView.addSubview(self.backgroundImageView)
    self.firstLayerView.addSubview(self.backgroundButton)
    self.secondLayerView.addSubview(self.someButton)
    
    NSLayoutConstraint.activate([
      self.firstLayerView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
      self.firstLayerView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
      self.firstLayerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
      self.firstLayerView.topAnchor.constraint(equalTo: self.view.topAnchor),
    ])
    NSLayoutConstraint.activate([
      self.backgroundImageView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
      self.backgroundImageView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
      self.backgroundImageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
      self.backgroundImageView.topAnchor.constraint(equalTo: self.view.topAnchor),
    ])
    NSLayoutConstraint.activate([
      self.backgroundButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 50),
      self.backgroundButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 60),
    ])
    
    NSLayoutConstraint.activate([
      self.secondLayerView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
      self.secondLayerView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
      self.secondLayerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
      self.secondLayerView.topAnchor.constraint(equalTo: self.view.topAnchor),
    ])
    NSLayoutConstraint.activate([
      self.someButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
      self.someButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
    ])
  }
  
  @objc private func didTapFirstButton() {
    print("tap first button")
  }
  @objc private func didTapSecondButton() {
    print("tap second button")
  }
}
