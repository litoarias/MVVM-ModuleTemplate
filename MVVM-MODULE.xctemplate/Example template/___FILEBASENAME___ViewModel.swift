//  ___FILEHEADER___

import Foundation

protocol ___VARIABLE_productName:identifier___ViewModelType: ViewModelType {
    var sections: [(name: String, rows: [___VARIABLE_productName:identifier___ItemModel])]  { get }
}

class ___VARIABLE_productName:identifier___ViewModel: ___VARIABLE_productName:identifier___ViewModelType {
    
    weak var delegate: ViewModelDelegate?
    var sections: [(name: String, rows: [___VARIABLE_productName:identifier___ItemModel])] = []
    let dataSource: ___VARIABLE_productName:identifier___DataSourceType
    
    init(dataSource: ___VARIABLE_productName:identifier___DataSourceType) {
        self.dataSource = dataSource
    }
    
    func bootstrap() {
        loadData()
    }
    
    private func loadData() {
        delegate?.willLoadData()
        dataSource.fetch___VARIABLE_productName:identifier___ { [weak self] result in
            DispatchQueue.main.async {
                guard let ws = self else { return }
                switch result {
                case .failure(_):
                    ws.sections = []
                    
                case .success(let items):
                    let sorted___VARIABLE_productName:identifier___Models = items
                        .map({ ___VARIABLE_productName:identifier___ItemModel(item: $0) })
                        .sorted(by: { $0.name < $1.name })
                    
                    ws.sections.append(ws.section(with: sorted___VARIABLE_productName:identifier___Models, start: "A", end: "I"))
                    ws.sections.append(ws.section(with: sorted___VARIABLE_productName:identifier___Models, start: "J", end: "Q"))
                    ws.sections.append(ws.section(with: sorted___VARIABLE_productName:identifier___Models, start: "R", end: "Z"))
                }
                ws.delegate?.didLoadData()
            }
        }
    }
    
    private func section(with ___VARIABLE_productName:identifier___: [___VARIABLE_productName:identifier___ItemModel], start: Character, end: Character) -> (name: String, rows: [___VARIABLE_productName:identifier___ItemModel]) {
        let filtered___VARIABLE_productName:identifier___ = ___VARIABLE_productName:identifier___
            .filter({ !$0.name.isEmpty })
            .filter({
                $0.name.uppercased().first! >= start && $0.name.uppercased().first! <= end
            })
        return (name: "\(start) to \(end)",
            rows: filtered___VARIABLE_productName:identifier___)
    }
    
}
