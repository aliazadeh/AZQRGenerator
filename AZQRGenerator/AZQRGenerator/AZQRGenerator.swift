//
//  AZQRGenerator.swift
//  AZQRGenerator
//
//  Created by Ali on 6/19/17.
//  Copyright © 2017 Ali Azadeh. All rights reserved.
//

import Foundation
import UIKit
class AZQRGenerator {
    
    
  static func generateQRCode(inputString input : String)->CIImage?{
    
        let filter = CIFilter(name: "CIQRCodeGenerator")
        filter?.setValue(input.data(using: .utf8), forKey: "inputMessage")
        filter?.setValue("Q", forKey: "inputCorrectionLevel")
        let qrcodeImage = filter?.outputImage
     return qrcodeImage
        
    }
    
}
