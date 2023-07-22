//
//  ContentView.swift
//  Merchbycreatives
//
//  Created by Iti on 19/05/2023.
//

import SwiftUI
import AVKit
import AVFoundation





struct PlayerView: UIViewRepresentable {
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<PlayerView>) {
    }

    func makeUIView(context: Context) -> UIView {
        return LoopingPlayerUIView(frame: .zero)
    }
}

class LoopingPlayerUIView: UIView {
    private let playerLayer = AVPlayerLayer()
    private var playerLooper: AVPlayerLooper?
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        // Load the resource -> h
        let fileUrl = Bundle.main.url(forResource: "bg", withExtension: "mp4")!
        let asset = AVAsset(url: fileUrl)
        let item = AVPlayerItem(asset: asset)
        // Setup the player
        let player = AVQueuePlayer()
        playerLayer.player = player
        playerLayer.videoGravity = .resizeAspectFill
        layer.addSublayer(playerLayer)
        // Create a new player looper with the queue player and template item
        playerLooper = AVPlayerLooper(player: player, templateItem: item)
        // Start the movie
        player.play()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
}

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            GeometryReader{ geo in
                ZStack{
                    PlayerView()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geo.size.width, height: geo.size.height+300)
                        .edgesIgnoringSafeArea(.all)
                        .overlay(Color.black.opacity(0.2))
                        .blur(radius: 1)
                        .edgesIgnoringSafeArea(.all)
                    
                    
                }
                Text("myMerch").foregroundColor(.white).font(.custom(
                    "HelveticaNeue-BoldItalic", size: 65)).padding([.top],100).padding([.leading],60)
                Text("All your insights...    in one place").foregroundColor(.white).font(.custom(
                    "HelveticaNeue-ThinItalic", size: 39)).padding([.top],200).padding([.leading],57)
            }
            
            VStack{}

            VStack(alignment: .center, spacing:50){
                
                NavigationLink("Sign In"){
                    SignIn()}.frame(width: 100, height: 20).foregroundColor(.white).font(Font.title.weight(.bold))
                
            }

        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
