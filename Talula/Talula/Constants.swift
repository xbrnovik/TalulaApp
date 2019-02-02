//
//  Constants.swift
//  Talula
//
//  Created by Diana Brnovik on 30/01/2019.
//  Copyright © 2019 Diana Brnovik. All rights reserved.
//

import Foundation
import UIKit
import MapKit

struct Constants {
    
    struct ui {
        static let masterReusableCellId: String = "masterCell"
        static let bigMargin: CGFloat = 15
        static let mediumMargin: CGFloat = 10
        static let smallMargin: CGFloat = 5
        static let iconSize: CGFloat = 50
    }
    
    struct map {
        static let latitudeDelta: CLLocationDegrees = 0.05
        static let longitudeDelta: CLLocationDegrees = 0.05
    }
    
    struct error {
        static let dataDomain = "dataError"
        static let emptyReceivedData = 101
        static let incorrectDataFormat = 102
        static let syncFailure = 103
    }
    
    struct coreData {
        static let entityName: String = "Meteorite"
        static let defaultDescriptorPropertyName: String = "date"
    }
    
    struct fonts {
        static let titleFont = UIFont.preferredFont(forTextStyle: .headline)
        static let bodyFont = UIFont.preferredFont(forTextStyle: .body)
        static let subtitleFont = UIFont.preferredFont(forTextStyle: .footnote)
    }
    
    struct numberFormatters {
        static let locale: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            formatter.locale = NSLocale.current
            return formatter
        }()
    }
    
}
