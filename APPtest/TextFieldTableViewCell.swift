//
//  TextFieldTableViewCell.swift
//  APPtest
//
//  Created by ЛИС on 07.02.2022.
//

import UIKit

final class TextFieldTableViewCell: UITableViewCell {

   
    
     var colorView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 8
        return view
    }()
    
     var textField: UITextField = {
        let textFields = UITextField()
        textFields.font = UIFont.systemFont(ofSize: 22)
        textFields.textColor = .black
        textFields.textAlignment = .center
        var textPeople = textFields.text
         UserDefaults.standard.set(textPeople, forKey: "text")
         return textFields;
    }()
    var textlabel: UILabel = {
       let labelText = UILabel()
    labelText.font = UIFont.systemFont(ofSize: 22)
    labelText.textColor = .black
    labelText.textAlignment = .center
        labelText.text = "Welcome"
       
       return labelText
   }()
   var btnLable: UIButton = {
       let btn = UIButton()
       btn.setTitleColor(UIColor.black, for: .normal)
       btn.backgroundColor = UIColor.green
       btn.setTitle("Войти", for: .normal)
       
       return btn
   }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    func configurre(with title: String) {
    textField.text = title
    textlabel.text = title
    }

    func setupUI() {
        selectionStyle = .none
        colorView.translatesAutoresizingMaskIntoConstraints = false
        textField.translatesAutoresizingMaskIntoConstraints = false
        textlabel.translatesAutoresizingMaskIntoConstraints = false
        btnLable.translatesAutoresizingMaskIntoConstraints = false

        contentView.addSubview(colorView)
        colorView.addSubview(textField)
        colorView.addSubview(textlabel)
        colorView.addSubview(btnLable)
        NSLayoutConstraint.activate([
            colorView.heightAnchor.constraint(equalToConstant: 72),
            colorView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4),
            colorView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -4),
            colorView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            colorView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            
            textField.heightAnchor.constraint(equalToConstant: 56),
            textField.topAnchor.constraint(equalTo: colorView.topAnchor, constant: 8),
            textField.bottomAnchor.constraint(equalTo: colorView.bottomAnchor, constant: -8),
            textField.leadingAnchor.constraint(equalTo: colorView.leadingAnchor, constant: 8),
            textField.trailingAnchor.constraint(equalTo: colorView.trailingAnchor, constant: -8),
            
            textlabel.heightAnchor.constraint(equalToConstant: 66),
            textlabel.topAnchor.constraint(equalTo: colorView.topAnchor, constant: 8),
            textlabel.bottomAnchor.constraint(equalTo: colorView.bottomAnchor, constant: -8),
            textlabel.leadingAnchor.constraint(equalTo: colorView.leadingAnchor, constant: 8),
            textlabel.trailingAnchor.constraint(equalTo: colorView.trailingAnchor, constant: -8),
            
            btnLable.heightAnchor.constraint(equalToConstant: 66),
            btnLable.topAnchor.constraint(equalTo: colorView.topAnchor, constant: 8),
            btnLable.bottomAnchor.constraint(equalTo: colorView.bottomAnchor, constant: -8),
            btnLable.leadingAnchor.constraint(equalTo: colorView.leadingAnchor, constant: 8),
            btnLable.trailingAnchor.constraint(equalTo: colorView.trailingAnchor, constant: -8)
        ])
    }
}
