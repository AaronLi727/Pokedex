//
//  Extensions.swift
//  Pokedex
//
//  Created by Aaron Li on 5/10/20.
//  Copyright © 2020 Aaron Li. All rights reserved.
//

import UIKit

extension UIColor
{
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
           return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
       }
       
       static func mainPink() -> UIColor {
        return UIColor.rgb(red: 146, green: 133, blue: 225)
       }
}

extension UIView
{

    func center(inView view: UIView) //centers name label(texts) within view
    {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        self.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func anchor(top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?,  paddingTop: CGFloat, paddingLeft: CGFloat, paddingBottom: CGFloat, paddingRight: CGFloat, width: CGFloat, height: CGFloat) {
           
           translatesAutoresizingMaskIntoConstraints = false
           
           if let top = top {
               self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
           }
           
           if let left = left {
               self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
           }
           
           if let bottom = bottom {
               bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
           }
           
           if let right = right {
               rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
           }
           
           if width != 0 {
               widthAnchor.constraint(equalToConstant: width).isActive = true
           }
           
           if height != 0 {
               heightAnchor.constraint(equalToConstant: height).isActive = true
           }
       }
}
