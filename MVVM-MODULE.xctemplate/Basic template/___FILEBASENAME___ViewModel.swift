//  ___FILEHEADER___

import Foundation

protocol ___VARIABLE_productName:identifier___ViewModelType: ViewModelType {
}

class ___VARIABLE_productName:identifier___ViewModel: ___VARIABLE_productName:identifier___ViewModelType {
    
    weak var delegate: ViewModelDelegate?
    
    init() {
        
    }
    
    func bootstrap() {
        loadData()
    }
    
    private func loadData() {
        delegate?.willLoadData()
        
    }
    
}
