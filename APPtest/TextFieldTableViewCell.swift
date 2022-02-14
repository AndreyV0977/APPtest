//
//  TextFieldTableViewCell.swift
//  APPtest
//
//  Created by ЛИС on 07.02.2022.
//

import UIKit

/*enum numberCell: Int{
    case text
    case email
    case password
    case button
    
    
}*/

final class TextFieldTableViewCell: UITableViewCell {
    
    var colorView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 8
        return view
    }()
    
    private var textField: UITextField = {
            let textFields = UITextField()
            textFields.font = UIFont.systemFont(ofSize: 22)
            textFields.textColor = .black
            textFields.textAlignment = .center
            var textPeople = textFields.text
             UserDefaults.standard.set(textPeople, forKey: "text")
        
             return textFields;
            
        }()
       private var textlabel: UILabel = {
           let labelText = UILabel()
        labelText.font = UIFont.systemFont(ofSize: 22)
        labelText.textColor = .black
        labelText.textAlignment = .center
           
           return labelText
       }()
       private var buttonLable: UIButton = {
           let button = UIButton()
           button.setTitleColor(UIColor.black, for: .normal)
           button.backgroundColor = UIColor.green
          return button
       }()
 func configure(with data: numberCell){
     
     
     if ((numberCell(rawValue: 0)) != nil) {
              
         let labelText = UILabel()
         labelText.text = "Добро пожаловать"
          
        }else if (numberCell(rawValue: 1) != nil){
            let textFields = UITextField()
            
            textFields.placeholder = "Логин"
        } else if (numberCell(rawValue: 2) != nil){
            let textFields = UITextField()
            
            textFields.placeholder = "Пароль"
            
        }  else if (numberCell(rawValue: 3) != nil){
            let button = UIButton()
            button.setTitle("Войти", for: .normal)
            
        }
     
 }
    
    
    
    
    
    
    
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
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func setupUI() {
        selectionStyle = .none
        colorView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(colorView)
        NSLayoutConstraint.activate([
            colorView.heightAnchor.constraint(equalToConstant: 72),
            colorView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4),
            colorView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -4),
            colorView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            colorView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8)
        ])
    }
    

    
  
}

