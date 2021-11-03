//
//  Alert.swift
//  TodoApp
//
//  Created by alican on 2.11.2021.
//

import Foundation
import UIKit

enum actionTypes{
    case save
    case cancel
    case add
    case edit
}

enum textFieldStatusTypes{
    case acceptable
    case notacceptable
}

struct CustomUI{
    let customUIAlertTextField : [CustomUIAlertTextField]
    let customUIAlertAction : [CustomUIAlertAction]
    
    init(customUIAlertTextField : [CustomUIAlertTextField] , customUIAlertAction : [CustomUIAlertAction]){
        self.customUIAlertTextField = customUIAlertTextField
        self.customUIAlertAction = customUIAlertAction
    }
    
    //static let editAction : CustomUI = .init(customUIAlertTextField: .add, customUIAlertAction: .add)
    //static let addAction : CustomUI = .init(customUIAlertTextField: .edit, customUIAlertAction: .edit)
}

struct CustomUIAlertTextField{
    let placeholderText : String
    let placeholderTextColor : UIColor
    let textfieldTextColor : UIColor
    let textFieldBackgroundColor : UIColor
    let textFieldTintColor : UIColor
    
    static let add : CustomUIAlertTextField = .init(placeholderText: "Enter your todo", placeholderTextColor: #colorLiteral(red: 0.9882352941, green: 0.7490196078, blue: 0.2862745098, alpha: 1), textfieldTextColor: #colorLiteral(red: 0.9882352941, green: 0.7490196078, blue: 0.2862745098, alpha: 1), textFieldBackgroundColor: #colorLiteral(red: 0.1215686275, green: 0.1607843137, blue: 0.2, alpha: 1), textFieldTintColor: .orange)
    
    static let edit : CustomUIAlertTextField = .init(placeholderText: "Enter your todo", placeholderTextColor: #colorLiteral(red: 0.9882352941, green: 0.7490196078, blue: 0.2862745098, alpha: 1), textfieldTextColor: #colorLiteral(red: 0.9882352941, green: 0.7490196078, blue: 0.2862745098, alpha: 1), textFieldBackgroundColor: #colorLiteral(red: 0.1215686275, green: 0.1607843137, blue: 0.2, alpha: 1), textFieldTintColor: .orange)
}

struct CustomUIAlertAction{
    let title : String
    let style : UIAlertAction.Style
    let titleTextColor : UIColor
    let actionType : actionTypes
    
    static let edit : CustomUIAlertAction = CustomUIAlertAction(title: "Edit", style: UIAlertAction.Style.default, titleTextColor: #colorLiteral(red: 0.9882352941, green: 0.7490196078, blue: 0.2862745098, alpha: 1), actionType: actionTypes.edit)
    
    static let add : CustomUIAlertAction = CustomUIAlertAction(title: "Add", style: UIAlertAction.Style.default, titleTextColor: #colorLiteral(red: 0.9882352941, green: 0.7490196078, blue: 0.2862745098, alpha: 1), actionType: actionTypes.add)
}

struct CustomUIAlertController{
    let title : String
    let message : String
    let titleColor : UIColor
    let messageColor : UIColor
    let titleFontSize : CGFloat
    let messageFontSize : CGFloat
    let backgroundColor : UIColor
    let cornerRadius : CGFloat
    let tintColor : UIColor
    
    static let edit : CustomUIAlertController = .init(title: "Edit", message: "Please enter your todo title.", titleColor: #colorLiteral(red: 0.9882352941, green: 0.7490196078, blue: 0.2862745098, alpha: 1), messageColor: #colorLiteral(red: 0.9882352941, green: 0.7490196078, blue: 0.2862745098, alpha: 1), titleFontSize: 15, messageFontSize: 14, backgroundColor: #colorLiteral(red: 0.1960784314, green: 0.2470588235, blue: 0.2941176471, alpha: 1) , cornerRadius: 1, tintColor: .yellow)
    
    static let add : CustomUIAlertController = .init(title: "Add", message: "Please enter your todo title.", titleColor: #colorLiteral(red: 0.9882352941, green: 0.7490196078, blue: 0.2862745098, alpha: 1), messageColor: #colorLiteral(red: 0.9882352941, green: 0.7490196078, blue: 0.2862745098, alpha: 1), titleFontSize: 15, messageFontSize: 14, backgroundColor: #colorLiteral(red: 0.1960784314, green: 0.2470588235, blue: 0.2941176471, alpha: 1), cornerRadius: 1, tintColor: .yellow)
}


extension UIViewController{
    
    func showBasicAlert(on vc : UIViewController , customUI : CustomUI , customUIAlertController : CustomUIAlertController , completionHandler : @escaping ((_ action : actionTypes,textFieldStatusTypes,[UITextField])-> ()) ){
        var textFieldStatus : textFieldStatusTypes = .acceptable
        
        var alertController = UIAlertController(title: customUIAlertController.title, message: customUIAlertController.message, preferredStyle: .alert)
        
        setAttributes(alertController: &alertController, customUIAlertController: customUIAlertController)
        
        setSubView(alertController: &alertController, customUIAlertController: customUIAlertController)
                
        for custom in customUI.customUIAlertTextField {
            setAlertTextField(alertController: &alertController, customUIAlertTextField: custom)
        }
        
        for custom in customUI.customUIAlertAction {
            let alertAction = UIAlertAction(title: custom.title, style: custom.style) { (actionTapped) in
                for textfieldInAlert in alertController.textFields!{
                    if(!textfieldInAlert.text!.isEmpty)
                    {
                        textFieldStatus = .notacceptable
                    }
                    else
                    {
                        textFieldStatus = .notacceptable
                    }
                }
                completionHandler(custom.actionType,textFieldStatus,alertController.textFields!)
            }
            alertAction.setValue(custom.titleTextColor, forKey: "titleTextColor")
            alertController.addAction(alertAction)
        }
        DispatchQueue.main.async {vc.present(alertController,animated: true,completion: nil)}
    }
    

}

fileprivate  func setAlertTextField(alertController: inout UIAlertController, customUIAlertTextField : CustomUIAlertTextField) {
    alertController.addTextField { textField in
        textField.placeholder = customUIAlertTextField.placeholderText
        textField.textColor = customUIAlertTextField.textfieldTextColor
        textField.backgroundColor = customUIAlertTextField.textFieldBackgroundColor
        textField.attributedPlaceholder = NSAttributedString(string: customUIAlertTextField.placeholderText, attributes: [NSAttributedString.Key.foregroundColor: customUIAlertTextField.placeholderTextColor])
        textField.tintColor = customUIAlertTextField.textFieldTintColor
        textField.borderStyle = .roundedRect
        let container = textField.superview
        let effectView = container?.superview?.subviews[0]
        container?.backgroundColor = .clear
        effectView?.removeFromSuperview()
    }
}


func setAttributes(alertController : inout UIAlertController , customUIAlertController : CustomUIAlertController){
    let titleKey = "attributedTitle" , messageKey = "attributedMessage"
    let titleAttribute = NSAttributedString(string: customUIAlertController.title, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: customUIAlertController.titleFontSize),NSAttributedString.Key.foregroundColor : customUIAlertController.titleColor])
    let messageAttribute = NSAttributedString(string: customUIAlertController.message, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: customUIAlertController.messageFontSize),NSAttributedString.Key.foregroundColor : customUIAlertController.messageColor])
    alertController.setValue(titleAttribute, forKey: titleKey)
    alertController.setValue(messageAttribute, forKey: messageKey)
}


func setSubView(alertController : inout UIAlertController , customUIAlertController : CustomUIAlertController){
    let subview = (alertController.view.subviews.first?.subviews.first?.subviews.first!)! as UIView
    subview.layer.cornerRadius = 1
    subview.backgroundColor = customUIAlertController.backgroundColor
    subview.tintColor = customUIAlertController.tintColor
}
