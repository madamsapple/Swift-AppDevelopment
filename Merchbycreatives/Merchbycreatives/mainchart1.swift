//
//  mainchart1.swift
//  Merchbycreatives
//
//  Created by Iti on 09/06/2023.
//

import Foundation
import SwiftUI
import Charts


struct daily: Identifiable {
    var id = UUID()
    var day: String
    var sale: Int
}

let dailytshirt: [daily] = [
    daily(day: "Mon", sale: 34),
    daily(day: "Tue", sale: 30),
    daily(day: "Wed", sale: 23),
    daily(day: "Thu", sale: 26),
    daily(day: "Fri", sale: 27),
    daily(day: "Sat", sale: 31),
    daily(day: "Sun", sale: 49)
]

let dailyblshirt: [daily] = [
    daily(day: "Mon", sale: 44),
    daily(day: "Tue", sale: 37),
    daily(day: "Wed", sale: 55),
    daily(day: "Thu", sale: 56),
    daily(day: "Fri", sale: 25),
    daily(day: "Sat", sale: 34),
    daily(day: "Sun", sale: 41)
]

let dailymug: [daily] = [
    daily(day: "Mon", sale: 34),
    daily(day: "Tue", sale: 30),
    daily(day: "Wed", sale: 19),
    daily(day: "Thu", sale: 23),
    daily(day: "Fri", sale: 25),
    daily(day: "Sat", sale: 22),
    daily(day: "Sun", sale: 38)
]

let dailydata = [
    (item: "T-shirt", data: dailytshirt),
    (item: "Blue shirt", data: dailyblshirt),
    (item: "Mug", data: dailymug)
]

struct monthly: Identifiable {
    var id = UUID()
    var date: Int
    var sale: Int
}

let monthlytshirt: [monthly] = [
    monthly(date: 01, sale: 34),
    monthly(date: 02, sale: 30),
    monthly(date: 03, sale: 23),
    monthly(date: 04, sale: 26),
    monthly(date: 05, sale: 27),
    monthly(date: 06, sale: 31),
    monthly(date: 07, sale: 49),
    monthly(date: 08, sale: 55),
    monthly(date: 09, sale: 52),
    monthly(date: 10, sale: 43),
    monthly(date: 11, sale: 46),
    monthly(date: 12, sale: 23),
    monthly(date: 13, sale: 27),
    monthly(date: 14, sale: 55),
    monthly(date: 15, sale: 48),
    monthly(date: 16, sale: 33),
    monthly(date: 17, sale: 39),
    monthly(date: 18, sale: 45),
    monthly(date: 19, sale: 37),
    monthly(date: 20, sale: 31),
    monthly(date: 21, sale: 30),
    monthly(date: 22, sale: 22),
    monthly(date: 23, sale: 24),
    monthly(date: 24, sale: 42),
    monthly(date: 25, sale: 49),
    monthly(date: 26, sale: 52),
    monthly(date: 27, sale: 36),
    monthly(date: 28, sale: 46),
    monthly(date: 29, sale: 32),
    monthly(date: 30, sale: 31),
    monthly(date: 31, sale: 25),
]

let monthlyblshirt: [monthly] = [
    monthly(date: 01, sale: 24),
    monthly(date: 02, sale: 40),
    monthly(date: 03, sale: 33),
    monthly(date: 04, sale: 16),
    monthly(date: 05, sale: 47),
    monthly(date: 06, sale: 61),
    monthly(date: 07, sale: 49),
    monthly(date: 08, sale: 45),
    monthly(date: 09, sale: 42),
    monthly(date: 10, sale: 53),
    monthly(date: 11, sale: 66),
    monthly(date: 12, sale: 63),
    monthly(date: 13, sale: 77),
    monthly(date: 14, sale: 85),
    monthly(date: 15, sale: 28),
    monthly(date: 16, sale: 43),
    monthly(date: 17, sale: 49),
    monthly(date: 18, sale: 47),
    monthly(date: 19, sale: 40),
    monthly(date: 20, sale: 57),
    monthly(date: 21, sale: 58),
    monthly(date: 22, sale: 59),
    monthly(date: 23, sale: 25),
    monthly(date: 24, sale: 52),
    monthly(date: 25, sale: 56),
    monthly(date: 26, sale: 62),
    monthly(date: 27, sale: 64),
    monthly(date: 28, sale: 74),
    monthly(date: 29, sale: 52),
    monthly(date: 30, sale: 51),
    monthly(date: 31, sale: 55),
]

let monthlymug: [monthly] = [
    monthly(date: 01, sale: 14),
    monthly(date: 02, sale: 20),
    monthly(date: 03, sale: 23),
    monthly(date: 04, sale: 26),
    monthly(date: 05, sale: 27),
    monthly(date: 06, sale: 21),
    monthly(date: 07, sale: 29),
    monthly(date: 08, sale: 25),
    monthly(date: 09, sale: 12),
    monthly(date: 10, sale: 13),
    monthly(date: 11, sale: 16),
    monthly(date: 12, sale: 13),
    monthly(date: 13, sale: 27),
    monthly(date: 14, sale: 15),
    monthly(date: 15, sale: 18),
    monthly(date: 16, sale: 23),
    monthly(date: 17, sale: 19),
    monthly(date: 18, sale: 27),
    monthly(date: 19, sale: 30),
    monthly(date: 20, sale: 37),
    monthly(date: 21, sale: 28),
    monthly(date: 22, sale: 29),
    monthly(date: 23, sale: 35),
    monthly(date: 24, sale: 42),
    monthly(date: 25, sale: 26),
    monthly(date: 26, sale: 22),
    monthly(date: 27, sale: 14),
    monthly(date: 28, sale: 24),
    monthly(date: 29, sale: 32),
    monthly(date: 30, sale: 21),
    monthly(date: 31, sale: 25),
]

let monthlydata = [
    (item: "T-shirt", data: monthlytshirt),
    (item: "Blue shirt", data: monthlyblshirt),
    (item: "Mug", data: monthlymug)
]

struct mainchart1: View{
    
    
    @State private var selectedperiod = "week"
    @State private var selectedMonth: String?
    
    
    var body: some View{
        
        VStack {
            GroupBox ("Merch units sold") {
                Picker("Period", selection: $selectedperiod) {
                    Text("Past 1 Week").tag("week")
                    Text("Past 30 Days").tag("month")
                    Text("Past 12 Months").tag("year")
                }
                .pickerStyle(.segmented).padding(.bottom, 20)
                
                    
                    if selectedperiod == "week"{
                        
                        Chart{
                            ForEach(dailydata, id: \.item){ element in
                                ForEach(element.data) {
                                    BarMark(
                                        x: .value("Month", $0.day),
                                        y: .value("Items sold", $0.sale)
                                    )
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
                    else if selectedperiod == "month"{

                        Chart{
                            ForEach(monthlydata, id: \.item){ element in
                                ForEach(element.data) {
                                    BarMark(
                                        x: .value("Month", $0.date),
                                        y: .value("Items sold", $0.sale)
                                    )
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

                    } else if selectedperiod == "year"{
                        Chart{
                            ForEach(sales, id: \.item){ element in
                                ForEach(element.data) {
                                    BarMark(
                                        x: .value("Month", $0.month),
                                        y: .value("Items sold", $0.value)
                                    )
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
                }
            }.padding([.top, .leading, .trailing], 20)
            
        }
    }

