//
//  Converter.swift
//  testCasesSwiftUi
//
//  Created by Neosoft on 28/11/23.
//

import Foundation
class Converter{
    func convertInrToUsd(inr:String)->String{
        let usdRate = 22.22
        let inrvalue = Double(inr) ?? 0
        if inrvalue.isZero || inrvalue.isZero || inrvalue <= 0 {
            return "Enter the Positive value"
        }
        
        if inrvalue >= 100000{
            return "Value is to big For COnverting"
        }
        
        return "\(String(format: "%.2f", inrvalue*usdRate))"
    }

}
