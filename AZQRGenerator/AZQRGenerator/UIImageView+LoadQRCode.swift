//
//  UIImageView+LoadQRCode.swift
//  AZQRGenerator
//
//  Created by Ali on 6/19/17.
//  Copyright © 2017 Ali Azadeh. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    func loadQRCode(inputString input : String){
    let img = AZQRGenerator.generateQRCode(inputString: input)
        if img != nil {
            let scaleX = self.frame.size.width / (img!.extent.size.width)
            let scaleY = self.frame.size.height / (img!.extent.size.height)
            let transformedImage = img!.transformed(by: CGAffineTransform(scaleX: scaleX, y: scaleY))
        self.image = UIImage(ciImage: transformedImage)
        }
    }
}
