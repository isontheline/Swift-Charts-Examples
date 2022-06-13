//
// Copyright © 2022 Swift Charts Examples.
// Open Source - MIT License

import Foundation
import SwiftUI

enum ChartCategory: String, CaseIterable, Hashable, Identifiable {
    case line
    case bar
    case area
    case range
    case heatMap
    
    var id: String { self.rawValue }
}

enum ChartType: String, Identifiable, CaseIterable {
    
    // Line Charts
    case singleLine
    
    // Bar Charts
    case singleBar
    case twoBars
    case pyramid
    case oneDimensionalBar
    
    // Area Charts
    case areaSimple
    
    // Range Charts
    case rangeSimple

    // HeatMap Charts
    case heatMap
    case customizeableHeatMap
    
    var id: String { self.rawValue }
    
    var title: String {
        switch self {
        case .singleLine:
            return "Single Line"
        case .singleBar:
            return "Single Bar"
        case .twoBars:
            return "Two Bars"
        case .pyramid:
            return "Pyramid"
        case .oneDimensionalBar:
            return "One Dimensional Bar"
        case .areaSimple:
            return "Simple Area"
        case .rangeSimple:
            return "Simple Range"
        case .heatMap:
            return "Heat Map"
        case .customizeableHeatMap:
            return "Heat Map"
        }
    }
    
    var category: ChartCategory {
        switch self {
        case .singleLine:
            return .line
        case .singleBar:
            return .bar
        case .twoBars:
            return .bar
        case .oneDimensionalBar:
            return .bar
        case .pyramid:
            return .bar
        case .areaSimple:
            return .area
        case .rangeSimple:
            return .range
        case .heatMap:
            return .heatMap
        case .customizeableHeatMap:
            return .heatMap
        }
    }
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .singleLine:
            LineChartSimpleOverview()
        case .singleBar:
            BarChartSimpleOverview()
        case .twoBars:
            TwoBarsSimpleOverview()
        case .oneDimensionalBar:
            OneDimensionalBarSimpleOverview()
        case .pyramid:
            PyramidChartOverview()
        case .areaSimple:
            AreaChartSimpleOverview()
        case .rangeSimple:
            RangeChartSimpleOverview()
        case .heatMap:
            HeatMapOverview()
        case .customizeableHeatMap:
            CustomizableHeatMapOverview()
        }
    }
}
