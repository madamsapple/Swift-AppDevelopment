//
//  mainchart2.swift
//  Merchbycreatives
//
//  Created by Iti on 09/06/2023.
//

import Foundation
import SwiftUI
import Charts

struct monthly_growth: Identifiable {
    var id = UUID()
    var date: Int
    var growth: Double
}

let tshirtgrowth: [monthly_growth] = [
    monthly_growth(date: 01, growth: -34.0),
    monthly_growth(date: 02, growth: 30.0),
    monthly_growth(date: 03, growth: 23.0),
    monthly_growth(date: 04, growth: 26.0),
    monthly_growth(date: 05, growth: 27.0),
    monthly_growth(date: 06, growth: -31.0),
    monthly_growth(date: 07, growth: 49.0),
    monthly_growth(date: 08, growth: 55.0),
    monthly_growth(date: 09, growth: 52.0),
    monthly_growth(date: 10, growth: 43.0),
    monthly_growth(date: 11, growth: 46.0),
    monthly_growth(date: 12, growth: 23.0),
    monthly_growth(date: 13, growth: 27.0),
    monthly_growth(date: 14, growth: 55.0),
    monthly_growth(date: 15, growth: 48.0),
    monthly_growth(date: 16, growth: -33.0),
    monthly_growth(date: 17, growth: 39.0),
    monthly_growth(date: 18, growth: -45.0),
    monthly_growth(date: 19, growth: -37.0),
    monthly_growth(date: 20, growth: 31.0),
    monthly_growth(date: 21, growth: 30.0),
    monthly_growth(date: 22, growth: 22.0),
    monthly_growth(date: 23, growth: -24.0),
    monthly_growth(date: 24, growth: 42.0),
    monthly_growth(date: 25, growth: 49.0),
    monthly_growth(date: 26, growth: -52.0),
    monthly_growth(date: 27, growth: 36.0),
    monthly_growth(date: 28, growth: 46.0),
    monthly_growth(date: 29, growth: 32.0),
    monthly_growth(date: 30, growth: 31.0),
    monthly_growth(date: 31, growth: 25.0)
]

let blshirtgrowth: [monthly_growth] = [
    monthly_growth(date: 01, growth: 24.0),
    monthly_growth(date: 02, growth: 40.0),
    monthly_growth(date: 03, growth: 33.0),
    monthly_growth(date: 04, growth: 16.0),
    monthly_growth(date: 05, growth: 47.0),
    monthly_growth(date: 06, growth: -61.0),
    monthly_growth(date: 07, growth: 49.0),
    monthly_growth(date: 08, growth: 45.0),
    monthly_growth(date: 09, growth: 42.0),
    monthly_growth(date: 10, growth: 53.0),
    monthly_growth(date: 11, growth: 66.0),
    monthly_growth(date: 12, growth: 63.0),
    monthly_growth(date: 13, growth: 77.0),
    monthly_growth(date: 14, growth: 85.0),
    monthly_growth(date: 15, growth: -28.0),
    monthly_growth(date: 16, growth: 43.0),
    monthly_growth(date: 17, growth: 49.0),
    monthly_growth(date: 18, growth: 47.0),
    monthly_growth(date: 19, growth: 40.0),
    monthly_growth(date: 20, growth: 57.0),
    monthly_growth(date: 21, growth: 58.0),
    monthly_growth(date: 22, growth: -59.0),
    monthly_growth(date: 23, growth: 25.0),
    monthly_growth(date: 24, growth: 52.0),
    monthly_growth(date: 25, growth: -56.0),
    monthly_growth(date: 26, growth: 62.0),
    monthly_growth(date: 27, growth: 64.0),
    monthly_growth(date: 28, growth: 74.0),
    monthly_growth(date: 29, growth: -52.0),
    monthly_growth(date: 30, growth: 51.0),
    monthly_growth(date: 31, growth: 55.0)
]

let muggrowth: [monthly_growth] = [
    monthly_growth(date: 01, growth: -14.0),
    monthly_growth(date: 02, growth: 20.0),
    monthly_growth(date: 03, growth: -23.0),
    monthly_growth(date: 04, growth: 26.0),
    monthly_growth(date: 05, growth: 27.0),
    monthly_growth(date: 06, growth: -21.0),
    monthly_growth(date: 07, growth: 29.0),
    monthly_growth(date: 08, growth: 25.0),
    monthly_growth(date: 09, growth: 12.0),
    monthly_growth(date: 10, growth: 13.0),
    monthly_growth(date: 11, growth: 16.0),
    monthly_growth(date: 12, growth: 13.0),
    monthly_growth(date: 13, growth: 27.0),
    monthly_growth(date: 14, growth: -15.0),
    monthly_growth(date: 15, growth: 18.0),
    monthly_growth(date: 16, growth: 23.0),
    monthly_growth(date: 17, growth: -19.0),
    monthly_growth(date: 18, growth: 27.0),
    monthly_growth(date: 19, growth: 30.0),
    monthly_growth(date: 20, growth: 37.0),
    monthly_growth(date: 21, growth: 28.0),
    monthly_growth(date: 22, growth: 29.0),
    monthly_growth(date: 23, growth: 35.0),
    monthly_growth(date: 24, growth: 42.0),
    monthly_growth(date: 25, growth: 26.0),
    monthly_growth(date: 26, growth: -22.0),
    monthly_growth(date: 27, growth: 14.0),
    monthly_growth(date: 28, growth: 24.0),
    monthly_growth(date: 29, growth: -32.0),
    monthly_growth(date: 30, growth: 21.0),
    monthly_growth(date: 31, growth: 25.0)
]

let monthly_growthdata = [
    (item: "T-shirt", data: tshirtgrowth),
    (item: "Blue shirt", data: blshirtgrowth),
    (item: "Mug", data: muggrowth)
]


struct mainchart2: View{
    
    @State private var time2 = "month"
    
    var body: some View{
        VStack{
            GroupBox ("Growth in sales (in %) in the last 6 months") {
                Picker("", selection: $time2) {
                    Text("Past 30 Days").tag("month")
                    Text("Past 12 Months").tag("year")
                }
                .pickerStyle(.segmented).padding(.bottom, 20)
                
                if time2 == "month"{
                    Chart{
                        ForEach(monthly_growthdata, id: \.item){ element in
                            ForEach(element.data) {
                                LineMark(
                                    x: .value("Month", $0.date),
                                    y: .value("Growth", $0.growth)
                                )
                                .foregroundStyle(by: .value("Item", element.item))
                                .position(by: .value("Item", element.item))
                                //.symbol(by: .value("Month", element.item))
                            }
                        }
                    }.chartForegroundStyleScale([
                        "T-shirt": CustomColor.olive,
                        "Blue shirt": CustomColor.maroon,
                        "Mug": CustomColor.purplish
                        ])
                    .frame(height: 150).chartYAxis {
                        AxisMarks(position: .leading)
                    }
                }
                else if time2 == "year"{
                    Chart{
                        ForEach(sales, id: \.item){ element in
                            ForEach(element.data) {
                                LineMark(
                                    x: .value("Month", $0.month),
                                    y: .value("Growth", $0.growth)
                                )
                                .foregroundStyle(by: .value("Item", element.item))
                                .position(by: .value("Item", element.item))
                                .symbol(by: .value("Month", element.item))
                            }
                        }
                    }.chartForegroundStyleScale([
                        "T-shirt": CustomColor.olive,
                        "Blue shirt": CustomColor.maroon,
                        "Mug": CustomColor.purplish
                        ])
                    .frame(height: 150).chartYAxis {
                        AxisMarks(position: .leading)
                    }
                }
                
                
            }.padding([.top, .leading, .trailing], 20)
        }
    }
}
