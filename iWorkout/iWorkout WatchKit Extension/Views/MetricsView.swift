//
//  MetricsView.swift
//  iWorkout WatchKit Extension
//
//  Created by Daniel Barclay on 15/06/2021.
//

import SwiftUI

struct MetricsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("09:41.04").foregroundColor(Color.yellow).fontWeight(.bold)
            Text(Measurement(value: 47, unit: UnitEnergy.kilocalories).formatted(.measurement(width: .abbreviated, usage: .workout, numberFormat: .numeric(precision: .fractionLength(0)))))
            Text(153.formatted(.number.precision(.fractionLength(0))) + " bpm")
            Text(Measurement(value: 515, unit: UnitLength.meters).formatted(.measurement(width: .abbreviated, usage: .road)))
        }.font(.system(.title, design: .rounded).monospacedDigit().lowercaseSmallCaps()).frame(maxWidth: .infinity, alignment: .leading).ignoresSafeArea(edges: .bottom).scenePadding()
    }
}

struct MetricsView_Previews: PreviewProvider {
    static var previews: some View {
        MetricsView()
    }
}
