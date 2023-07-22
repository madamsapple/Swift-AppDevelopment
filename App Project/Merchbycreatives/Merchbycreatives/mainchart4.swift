//
//  mainchart4.swift
//  Merchbycreatives
//
//  Created by Iti on 09/06/2023.
//

import Foundation
import SwiftUI
import Charts

struct mainchart4: View{
    
    var body: some View{
        VStack{
            GroupBox ("Overview of occurence of merch sales + live events + releases") {
                Text("Past 6 Months").padding(10).font(.custom(
                    "HelveticaNeue-ThinItalic", size: 17))
                Chart{
                    ForEach(events, id: \.concert){ element in
                        ForEach(element.data) {

                            PointMark(
                                x: .value("Month", $0.month),
                                y: .value("", $0.attendance))
                            .foregroundStyle(by: .value("Concert", element.concert))
                            .position(by: .value("Concert", element.concert))

                        }
                    }

                    ForEach(releases, id: \.cd){ element in
                        ForEach(element.data) {

                            PointMark(
                                x: .value("Month", $0.month),
                                y: .value("", $0.unitssold))
                            .foregroundStyle(by: .value("CD", element.cd))
                            .position(by: .value("CD", element.cd))

                        }
                    }

                    ForEach(sales, id: \.item){ element in
                        ForEach(element.data) {

                            PointMark(
                                x: .value("Month", $0.month),
                                y: .value("", $0.value))
                            .symbol(by: .value("Month", element.item))
                            .position(by: .value("Item", element.item))

                        }
                    }

                }
                .frame(height: 150).chartYAxis(.hidden)

            }.padding([.top, .leading, .trailing], 20)
        }
    }
}
