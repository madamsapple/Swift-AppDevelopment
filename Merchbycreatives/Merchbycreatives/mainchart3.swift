//
//  mainchart3.swift
//  Merchbycreatives
//
//  Created by Iti on 09/06/2023.
//

import Foundation
import SwiftUI
import Charts

struct monthly_rate: Identifiable {
    var id = UUID()
    var date: Int
    var sale: Int
    var stock: Int
    var sellrate: Int{
        return sale/stock*100
    }
}

let tshirtrate: [monthly_rate] = [
    monthly_rate(date: 01, sale: 34, stock: 10),
    monthly_rate(date: 02, sale: 30, stock: 10),
    monthly_rate(date: 03, sale: 23, stock: 10),
    monthly_rate(date: 04, sale: 26, stock: 10),
    monthly_rate(date: 05, sale: 27, stock: 10),
    monthly_rate(date: 06, sale: 31, stock: 10),
    monthly_rate(date: 07, sale: 49, stock: 10),
    monthly_rate(date: 08, sale: 55, stock: 10),
    monthly_rate(date: 09, sale: 52, stock: 10),
    monthly_rate(date: 10, sale: 43, stock: 10),
    monthly_rate(date: 11, sale: 46, stock: 10),
    monthly_rate(date: 12, sale: 23, stock: 10),
    monthly_rate(date: 13, sale: 27, stock: 10),
    monthly_rate(date: 14, sale: 55, stock: 10),
    monthly_rate(date: 15, sale: 48, stock: 10),
    monthly_rate(date: 16, sale: 33, stock: 10),
    monthly_rate(date: 17, sale: 39, stock: 10),
    monthly_rate(date: 18, sale: 45, stock: 10),
    monthly_rate(date: 19, sale: 37, stock: 10),
    monthly_rate(date: 20, sale: 31, stock: 10),
    monthly_rate(date: 21, sale: 30, stock: 10),
    monthly_rate(date: 22, sale: 22, stock: 10),
    monthly_rate(date: 23, sale: 24, stock: 10),
    monthly_rate(date: 24, sale: 42, stock: 10),
    monthly_rate(date: 25, sale: 49, stock: 10),
    monthly_rate(date: 26, sale: 52, stock: 10),
    monthly_rate(date: 27, sale: 36, stock: 10),
    monthly_rate(date: 28, sale: 46, stock: 10),
    monthly_rate(date: 29, sale: 32, stock: 10),
    monthly_rate(date: 30, sale: 31, stock: 10),
    monthly_rate(date: 31, sale: 25, stock: 10)
]

let blshirtrate: [monthly_rate] = [
    monthly_rate(date: 01, sale: 24, stock: 10),
    monthly_rate(date: 02, sale: 40, stock: 10),
    monthly_rate(date: 03, sale: 33, stock: 10),
    monthly_rate(date: 04, sale: 16, stock: 10),
    monthly_rate(date: 05, sale: 47, stock: 10),
    monthly_rate(date: 06, sale: 61, stock: 10),
    monthly_rate(date: 07, sale: 49, stock: 10),
    monthly_rate(date: 08, sale: 45, stock: 10),
    monthly_rate(date: 09, sale: 42, stock: 10),
    monthly_rate(date: 10, sale: 53, stock: 10),
    monthly_rate(date: 11, sale: 66, stock: 10),
    monthly_rate(date: 12, sale: 63, stock: 10),
    monthly_rate(date: 13, sale: 77, stock: 10),
    monthly_rate(date: 14, sale: 85, stock: 10),
    monthly_rate(date: 15, sale: 28, stock: 10),
    monthly_rate(date: 16, sale: 43, stock: 10),
    monthly_rate(date: 17, sale: 49, stock: 10),
    monthly_rate(date: 18, sale: 47, stock: 10),
    monthly_rate(date: 19, sale: 40, stock: 10),
    monthly_rate(date: 20, sale: 57, stock: 10),
    monthly_rate(date: 21, sale: 58, stock: 10),
    monthly_rate(date: 22, sale: 59, stock: 10),
    monthly_rate(date: 23, sale: 25, stock: 10),
    monthly_rate(date: 24, sale: 52, stock: 10),
    monthly_rate(date: 25, sale: 56, stock: 10),
    monthly_rate(date: 26, sale: 62, stock: 10),
    monthly_rate(date: 27, sale: 64, stock: 10),
    monthly_rate(date: 28, sale: 74, stock: 10),
    monthly_rate(date: 29, sale: 52, stock: 10),
    monthly_rate(date: 30, sale: 51, stock: 10),
    monthly_rate(date: 31, sale: 55, stock: 10)
]

let mugrate: [monthly_rate] = [
    monthly_rate(date: 01, sale: 14, stock: 10),
    monthly_rate(date: 02, sale: 20, stock: 10),
    monthly_rate(date: 03, sale: 23, stock: 10),
    monthly_rate(date: 04, sale: 26, stock: 10),
    monthly_rate(date: 05, sale: 27, stock: 10),
    monthly_rate(date: 06, sale: 21, stock: 10),
    monthly_rate(date: 07, sale: 29, stock: 10),
    monthly_rate(date: 08, sale: 25, stock: 10),
    monthly_rate(date: 09, sale: 12, stock: 10),
    monthly_rate(date: 10, sale: 13, stock: 10),
    monthly_rate(date: 11, sale: 16, stock: 10),
    monthly_rate(date: 12, sale: 13, stock: 10),
    monthly_rate(date: 13, sale: 27, stock: 10),
    monthly_rate(date: 14, sale: 15, stock: 10),
    monthly_rate(date: 15, sale: 18, stock: 10),
    monthly_rate(date: 16, sale: 23, stock: 10),
    monthly_rate(date: 17, sale: 19, stock: 10),
    monthly_rate(date: 18, sale: 27, stock: 10),
    monthly_rate(date: 19, sale: 30, stock: 10),
    monthly_rate(date: 20, sale: 37, stock: 10),
    monthly_rate(date: 21, sale: 28, stock: 10),
    monthly_rate(date: 22, sale: 29, stock: 10),
    monthly_rate(date: 23, sale: 35, stock: 10),
    monthly_rate(date: 24, sale: 42, stock: 10),
    monthly_rate(date: 25, sale: 26, stock: 10),
    monthly_rate(date: 26, sale: 22, stock: 10),
    monthly_rate(date: 27, sale: 14, stock: 10),
    monthly_rate(date: 28, sale: 24, stock: 10),
    monthly_rate(date: 29, sale: 32, stock: 10),
    monthly_rate(date: 30, sale: 21, stock: 10),
    monthly_rate(date: 31, sale: 25, stock: 10)
]

let monthlyratedata = [
    (item: "T-shirt", data: tshirtrate),
    (item: "Blue shirt", data: blshirtrate),
    (item: "Mug", data: mugrate)
]



struct mainchart3: View{
    
    @State private var time3 = "month"
    
    var body: some View{
        VStack{
            GroupBox ( "Sell-through rate (in %) in the last 6 months") {
                Picker("", selection: $time3) {
                    Text("Past 30 Days").tag("month")
                    Text("Past 12 Months").tag("year")
                }
                .pickerStyle(.segmented).padding(.bottom, 20)
                
                if time3 == "month"{
                    Chart{
                        ForEach(monthlyratedata, id: \.item){ element in
                            ForEach(element.data) {
                                LineMark(
                                    x: .value("Month", $0.date),
                                    y: .value("Sell-through rate", $0.sellrate))
                                .foregroundStyle(by: .value("Item", element.item))
                                .position(by: .value("Item", element.item))
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
                    
                } else if time3 == "year"{
                    Chart{
                        ForEach(sales, id: \.item){ element in
                            ForEach(element.data) {

                                LineMark(
                                    x: .value("Month", $0.month),
                                    y: .value("Sell-through rate", $0.sellrate))
                                .foregroundStyle(by: .value("Item", element.item))
                                .position(by: .value("Item", element.item))

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
