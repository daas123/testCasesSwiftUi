//
//  ViewModel.swift
//  testCasesSwiftUi
//
//  Created by Neosoft on 28/11/23.
//

import Foundation
import UIKit
class ViewModel:ObservableObject{
    @Published var text = ""
    @Published var convertedText = ""
    let converter = Converter()
    
    func convertMoney(dlr:Int){
        converter.convertInrToUsd(inr: text)
        self.hideKeyBoard()
    }
    
    func hideKeyBoard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        
        
    }
}
