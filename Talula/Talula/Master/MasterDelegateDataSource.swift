//
//  MasterDelegateDataSource.swift
//  Talula
//
//  Created by Diana Brnovik on 30/01/2019.
//  Copyright © 2019 Diana Brnovik. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class MasterDelegateDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    private var meteoritesFRC: NSFetchedResultsController<Meteorite>
    
    var presentDetailHandler: ((Meteorite) -> ())?
        
    init(meteoritesFRC: NSFetchedResultsController<Meteorite>) {
        self.meteoritesFRC = meteoritesFRC
    }
    
    // MARK: - UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meteoritesFRC.fetchedObjects?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let defaultCell = UITableViewCell()
        let cell: MasterCell? = tableView.dequeueReusableCell(withIdentifier: Constants.ui.masterReusableCellId) as? MasterCell
        cell?.titleLabel.text = self.meteoritesFRC.object(at: indexPath).name ?? "Unknown name"
        return cell ?? defaultCell
        
    }
    
    // MARK: - UITableViewDelegate
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedMeteorite = self.meteoritesFRC.object(at: indexPath)
        presentDetailHandler?(selectedMeteorite)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
