//
//  Insights.swift
//  Merchbycreatives
//
//  Created by Iti on 27/05/2023.
//

import Foundation
import SwiftUI
import Charts

struct sale: Identifiable{
    var id = UUID()
    var month: String
    var value: Int
    var growth: Double
    var stock: Int
    
    init(month: String, value: Int, growth: Double, stock: Int) {
        self.month = month
        self.value = value
        self.growth = growth
        self.stock = stock
    }
    
    //Sell through rate is calculated by dividing the number of units sold by the number of units received, then multiplying the sum by 100.
    var sellrate: Int{
            return value/stock*100
    }
}


//MONTHLY SALES
let tshirt: [sale] = [
    sale(month: "February", value: 215, growth: 2.0, stock: 120),
    sale(month: "March", value: 125, growth: -20.0, stock: 110),
    sale(month: "April", value: 217, growth: 33.0, stock: 125),
    sale(month: "May", value: 326, growth: 14.0, stock: 80),
    sale(month: "June", value: 230, growth: 5.0, stock: 20),
    sale(month: "July", value: 221,  growth: 42.0, stock: 70)
]

let blshirt: [sale] = [
    sale(month: "February", value: 235, growth: 3.0, stock: 120),
    sale(month: "March", value: 320, growth: 10.0, stock: 130),
    sale(month: "April", value: 357, growth: 39.5, stock: 205),
    sale(month: "May", value: 260, growth: 4.2, stock: 117),
    sale(month: "June", value: 123, growth: -42.6, stock: 122),
    sale(month: "July", value: 128,  growth: 12.6, stock: 130)
]

let mug: [sale] = [
    sale(month: "February", value: 322, growth: 13.8, stock: 100),
    sale(month: "March", value: 232, growth: 8.6, stock: 78),
    sale(month: "April", value: 234, growth: 2.1, stock: 90),
    sale(month: "May", value: 155, growth: 14.7, stock: 80),
    sale(month: "June", value: 129, growth: -12.4, stock: 102),
    sale(month: "July", value: 247,  growth: -1.3, stock: 93)
]

let sales = [
    (item: "T-shirt", data: tshirt),
    (item: "Blue shirt", data: blshirt),
    (item: "Mug", data: mug)
]



//events: (IDs are festivals, concert, live sessions)
struct event: Identifiable{
    let id = UUID()
    var month: String
    var attendance: Int
    var location: String

    
    init(month: String, attendance: Int, location: String) {
        self.month = month
        self.attendance = attendance
        self.location = location
    }
}

let singnight: [event] = [
    event(month: "February", attendance: 120, location: "London")
]

let mayrave: [event] = [
    event(month: "May", attendance: 330, location: "Manchester")
]

let allpointseast: [event] = [
    event(month: "June", attendance: 180, location: "London")
]

let tinydesk: [event] = [
    event(month: "July", attendance: 48, location: "London")
]

let events = [
    (concert: "A night with Sasha", data: singnight),
    (concert: "Manchester Rave", data: mayrave),
    (concert: "All Points", data: allpointseast),
    (concert: "Tiny Desk", data: tinydesk)
]


//releases: (IDs are vinyls, CDs, streaming)
struct release: Identifiable{
    let id = UUID()
    var month: String
    var unitssold: Int

    
    init(month: String, units: Int) {
        self.month = month
        self.unitssold = units
    }
}

let debut: [release] = [
    release(month: "February", units: 481)
]

let vinyl: [release] = [
    release(month: "April", units: 360)
]

let spotifyalb: [release] = [
    release(month: "February", units: 96000)
]

let releases = [
    (cd: "Debut album", data: debut),
    (cd: "Debut Vinyl", data: vinyl)
]

struct Insights: View {
    
    @State private var time1 = 0
    @State private var time2 = 0
    @State private var time3 = 0
    @State private var showunitsold = false
    @State private var showingSheet = false
    
    var body: some View {
        
        ScrollView{
            
            //main enclosing vstack
            VStack{
                Text("Insights").foregroundStyle(Color(uiColor: UIColor(red: 191/255, green: 131/255, blue: 0/255, alpha: 1))).padding(.top, 40).font(.custom(
                    "HelveticaNeue-Bold", size: 35)).font(Font.body.weight(.regular))
                    
                //group 1 with 1st and 2nd charts
                Group{
                    
                    //first chart VStack
                    mainchart1()
                    
                    shmorebutton1().sheet(isPresented: $showingSheet) {
                        chart1sales()
                    }
                    
                    Spacer(minLength: 20)
                    
                    
                    //2nd chart Growth in sales vstack
                    mainchart2()
                    //shmorebutton2()
                    chart2sales()
                    Spacer(minLength: 20)
                    
                }
                    
                //group 2 with 3rd and 4th charts
                Group{

                    //3rd VStsack SELL-through rate
                    mainchart3()
                    //shmorebutton3()
                    Spacer(minLength: 20)


                    //4th Overview of...
                    mainchart4()
//                    shmorebutton4()
                    Spacer(minLength: 20)

                }
            }
        }.background(LinearGradient(gradient: Gradient(colors: [CustomColor.skin, CustomColor.lilac]), startPoint: .top, endPoint: .bottom))
    }
}



struct Insights_Previews: PreviewProvider {
    static var previews: some View {
        Insights()
    }
}
