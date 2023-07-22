//
//  Landing-Page.swift
//  Merchbycreatives
//
//  Created by Iti on 20/05/2023.
//

import Foundation
import SwiftUI


struct product: Identifiable{
    var id: String{
        self.title
    }
    var title: String
    var image: Image
}

class Catalogue: ObservableObject{
    @Published var products: [product] = [
            product(title: "T-Shirt", image: Image("tshirt")),
            product(title: "Scarf", image: Image("scarf")),
            product(title: "Ranger Print", image: Image("bluesh"))
    ]
}


struct CustomColor {
    static let skin = Color("skin")
    static let lilac = Color("lilac")
    static let olive = Color("clr_tshirt")
    static let maroon = Color("clr_scarf")
    static let purplish = Color("clr_blshirt")
    static let gradient1 = Color("block_gradient1")
    static let gradient2 = Color("block_gradient2")
    static let greyish = Color("knowmore1")
}

struct Landingpage: View {
    
    var catalogue = Catalogue()
    
    @State private var showWebView = false
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        

        
        ScrollView(.vertical){
            
            VStack{
                
            
            //keeps track of width of catalogue's scrollview
            var scrlview_w: Double = 0.0
            
            //change spacing between titles of catalog items
            let title_pad: CGFloat = 14
            
            //catalog vstack
            VStack(alignment: .leading){
                Spacer(minLength: 90)
                Text("My Catalogue").padding([.leading],15).padding(.bottom,5).font(Font.title.weight(.bold)).foregroundColor(.white).shadow(color: .black, radius: 4, x: 1, y: 2).overlay(Rectangle().frame(width: 500, height: 1, alignment: .bottom).foregroundColor(Color.white), alignment: .bottom)
                //frame height is dist between "my catalogue" and images
                //padding is space (in this case from leading aka from left edge of text)
                //Font.(insert size of text here).weight(.insert thickness))
                Spacer(minLength: 30)
                ScrollView(.horizontal){
                    
                    //cant use foreach since list items are always stacked vertically in layout
                    HStack{
                        VStack{
                            catalogue.products[0].image.cornerRadius(6)
                            Text(catalogue.products[0].title).font(.custom(
                                "HelveticaNeue-ThinItalic", size: 20)).foregroundColor(.white).frame(width: 128, height: 50).background(CustomColor.olive).cornerRadius(6)
                        }.padding(.horizontal, title_pad)
                        VStack{
                            catalogue.products[1].image.cornerRadius(6)
                            Text(catalogue.products[1].title).font(.custom(
                                "HelveticaNeue-ThinItalic", size: 20)).foregroundColor(.white).frame(width: 128, height: 50).background(CustomColor.maroon).cornerRadius(6)
                        }
                        VStack{
                            catalogue.products[2].image.cornerRadius(6)
                            Text(catalogue.products[2].title).font(.custom(
                                "HelveticaNeue-ThinItalic", size: 20)).foregroundColor(.white).frame(width: 128, height: 50).background(CustomColor.purplish).cornerRadius(6)
                        }.padding(.horizontal, title_pad)
                        
                    }
                    .background(
                        //geo reader helps us measure width
                        GeometryReader { proxy in
                            Color.clear.onAppear { scrlview_w = proxy.size.width}
                        }
                    )
                    
                    
                }
            }.padding(.bottom, 70)
            
            
            //recent sales section
            VStack(alignment: .leading ){
                Text("What's Recent").foregroundColor(.white).font(Font.title.weight(.bold)).padding(.leading,15).padding(.bottom,5).shadow(color: .black, radius: 4, x: 1, y: 2).overlay(Rectangle().frame(width: 500, height: 1, alignment: .bottom).foregroundColor(Color.white), alignment: .bottom)
                
                HStack{
                    //Image("tshirt_sales").padding(.trailing, 0)
                    Text("+35   ").foregroundColor(.white).font(.custom(
                        "HelveticaNeue-BoldItalic", size: 45))
                    Text("  T-shirts sold over last 5 days   ").foregroundColor(.white).font(Font.body.weight(.regular))
                    
                }.frame(width: 400, height: 100).background(LinearGradient(gradient: Gradient(colors: [CustomColor.gradient1, CustomColor.gradient2]), startPoint: .leading, endPoint: .trailing))
                    .padding(.top, 4).shadow(color: .black, radius: 4, x: 1, y: 2)
                
                HStack{
                    Text("↑67%").foregroundColor(.white).font(.custom(
                        "HelveticaNeue-BoldItalic", size: 45))
                    Text("increase in scarf sales over the last 3 days  ").foregroundColor(.white).font(Font.body.weight(.regular))
                }.frame(width: 400, height: 100).background(LinearGradient(gradient: Gradient(colors: [CustomColor.gradient1, CustomColor.gradient2]), startPoint: .leading, endPoint: .trailing))
                    .padding(.top, 4).shadow(color: .black, radius: 4, x: 1, y: 2)
            }
            
                VStack(alignment: .leading ){
                    
                    Text("Know More").foregroundColor(.white).font(Font.title.weight(.bold)).padding(.top,30).padding(.leading,15).padding(.bottom,5).shadow(color: .black, radius: 4, x: 1, y: 2).overlay(Rectangle().frame(width: 500, height: 1, alignment: .bottom).foregroundColor(Color.white), alignment: .bottom)
                    
                    VStack{
                        Text("Streaming giant Spotify reveals timely merch promotion helps boost sales. One metric tells that fans view merch 7.2x more on release day.").padding(20).font(Font.headline.weight(.bold))
                        
                        Button {
                            showWebView.toggle()
                        } label: {
                            Text("Read more").padding(.bottom, 15).foregroundColor(.purple)
                            
                        }
                        .sheet(isPresented: $showWebView) {
                            Webview(url: URL(string: "https://artists.spotify.com/en/blog/fan-study-merch-edition-music-data-infographic")!)
                        }
                    }.background(LinearGradient(gradient: Gradient(colors: [CustomColor.greyish, .white]), startPoint: .top, endPoint: .bottom))
                    
                    
                    
                    
                }.cornerRadius(6)
            }
        }.background(LinearGradient(gradient: Gradient(colors: [CustomColor.skin, CustomColor.lilac]), startPoint: .top, endPoint: .bottom))
        
    }
}
    
//provides preview of page
struct Landingpage_Previews: PreviewProvider {
    
    static var previews: some View {
        Landingpage()
    }
}
