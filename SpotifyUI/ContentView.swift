//
//  ContentView.swift
//  SpotifyUI
//
//  Created by CJ Stevens on 2/17/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(){
            LinearGradient(
                gradient: Gradient(colors: [Color(red: 0.3843, green: 0.6471, blue: 0.3569), Color(red: 0.2706, green: 0.4471, blue: 0.251)]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            VStack(){
                HStack(alignment: .center, spacing: 40){
                    Image(systemName: "chevron.down")
                        .font(.system(size: 20))
                    Spacer()
                    Text("playlist name")
                        Spacer()
                    Image(systemName: "ellipsis")
                        .font(.system(size: 20))
                }
                .foregroundColor(.white)
                .padding()
                
                Image("album_cover")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 350)
                    .shadow(radius: 20)
                    .padding(20)
                VStack(spacing: 0){
                    HStack(){
                        VStack(alignment: .leading){
                            Text("See You Again")
                                .font(.title2.bold())
                                .foregroundColor(.white)
                            Text("Tyler, the Creator")
                                .foregroundColor(.white.opacity(0.7))
                        }
                        Spacer()
                        Image(systemName: "heart")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                    }
                    .padding()
                    VStack(spacing: 5){
                        Slider(value: .constant(0.05))
                            .accentColor(.white)
                        HStack{
                            Text("0:10")
                            Spacer()
                            Text("3:26")
                        }
                        .font(.caption)
                        .foregroundColor(.white.opacity(0.7))
                    }
                    .padding()
                    HStack(spacing: 40){
                        Image(systemName: "shuffle")
                            .font(.system(size: 30))
                        Image(systemName: "backward.end.fill")
                            .font(.system(size: 30))
                        Image(systemName: "pause.circle.fill")
                            .font(.system(size: 55))
                        Image(systemName: "forward.end.fill")
                            .font(.system(size: 30))
                        Image(systemName: "repeat")
                            .font(.system(size: 30))
                        
                    }
                    .foregroundColor(.white)
                }
                HStack(alignment: .center, spacing: 50){
                    Image(systemName: "tv.and.hifispeaker.fill")
                        .font(.system(size: 20))
                    Spacer()
                    Image(systemName: "square.and.arrow.up")
                        .font(.system(size: 20))
                    Image(systemName: "text.line.first.and.arrowtriangle.forward")
                        .font(.system(size: 20))
                    
                }
                .foregroundColor(.white)
                .padding(20)
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ContentView()
}
