//
//  Utilities.swift
//  TwitterTutorial
//
//  Created by watanabedaichi on 2023/06/10.
//

import UIKit

class Utilities {
    
    func inputContainerView(withImage image: UIImage, textField: UITextField) -> UIView {
        let view = UIView()
        let iv = UIImageView()
        
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true

        iv.image = image
        view.addSubview(iv)
        iv.anchor(left: view.leftAnchor, bottom: view.bottomAnchor,
                  paddingLeft: 8, paddingBottom: 8)
        iv.setDimensions(width: 24, height: 24)
        
        view.addSubview(textField)
        textField.anchor(left: iv.rightAnchor, bottom: iv.bottomAnchor,
                         right: view.rightAnchor, paddingLeft: 8, paddingRight: 8)
        
        return view
    }
    
}
