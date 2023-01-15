//
//  DanceDurationView.swift
//  LavaGame
//
//  Created by saba on 19/06/1444 AH.
//

import SwiftUI

struct DanceDurationView: View {
    @State var isActive : Bool = false
    
    @State private var textSwitch = false
    @State var extrasound = false
    var body: some View {
        ZStack{
            Color.accentColor.edgesIgnoringSafeArea(.all)
            if isActive {
                TimerPage()
            }  else {
                ZStack{
                    
                    Circle()
                        .foregroundColor(Color("Lets Start Color"))
                        .frame(width:100,height:100)
                        .offset(x:-150,y:-400)
                    
                    Circle()
                        .foregroundColor(Color("Lets Start Color 2"))
                        .frame(width:50,height:50)
                        .offset(x:90,y:-300)
                    
                    Circle()
                        .foregroundColor(Color("Lets Start Color"))
                        .frame(width:100,height:100)
                        .offset(x:150,y:400)
                    
                    RoundedRectangle(cornerRadius: 45)
                        .frame(width:60,height:150)
                        .offset(x:-100,y:300)
                        .foregroundColor(Color("colororange1"))
                    
                    RoundedRectangle(cornerRadius: 45)
                        .frame(width:60,height:150)
                        .offset(x:-90,y:300)
                        .foregroundColor(Color("colororange2"))
                    
                    
                    
                    RoundedRectangle(cornerRadius: 45)
                        .frame(width:60,height:150)
                        .offset(x:120,y:-30)
                        .foregroundColor(Color("colororange1"))
                    RoundedRectangle(cornerRadius: 45)
                        .frame(width:60,height:150)
                        .offset(x:130,y:-30)
                        .foregroundColor(Color("colororange2"))
                    
                    RoundedRectangle(cornerRadius: 45)
                        .frame(width:60,height:200)
                        .offset(x:-100,y:-150)
                        .foregroundColor(Color("colororange1"))
                    RoundedRectangle(cornerRadius: 45)
                        .frame(width:60,height:200)
                        .offset(x:-90,y:-150)
                        .foregroundColor(Color("colororange2"))
                    
                    LottieView(lottieFile: "Music Notes.json")
                        .rotationEffect(.degrees(360))
                        .offset(x:10,y:250)
                }
                VStack{
                    
                    
                    
                    
                    ZStack{
                        //                        LottieView(lottieFile: "Comp 2.json")
                        //                            .offset(x:90,y:-250)
                        
                        
                        //                        Image("music-3")
                        //                            .resizable()
                        //                            .scaledToFit()
                        //                            .frame(width: 150, height: 150)
                        //                            .offset(x:80,y:-300)
                        
                        LottieView(lottieFile: "16773-fire.json")
                            .offset(y:30)
                        
                        //                        but get off the floor in
                        Text((textSwitch ? "\" I like Your Moves! \"" : "\" Now Let's Dance \""))
                            .foregroundColor(Color("Lets Start Color"))
                            .font(.system(size: 35, weight: .heavy, design: .rounded))
                            .multilineTextAlignment(.center)
                            .offset(y:160)
                        
                        //                        LottieViewTime(lottieFile: "127642-stage-curtain-opening.json")
                        //                            .frame(width: 500 , height:900)
                        LottieViewTime(lottieFile: "Confetti - Start-2.json")
                            .offset(y:-210)
                        
                        //                        LottieView(lottieFile: "Comp 2.json")
                        //                            .offset(x:-90,y:300)
                        //
                        //                        LottieView(lottieFile: "113021-sparkles-emoji.json")
                        //                            .offset(y:300)
                        //                            .frame(width: 100 , height:100)
                        
                        
                        
                        Image("musical-note")
                        
                            .resizable()
                            .scaledToFit()
                        
                            .frame(width: 70, height: 70)
                        
                            .offset(x:60,y:-200)
                        
                        Image("Music2")
                        
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .offset(x:-170)
                        
                        //                        Image("musical-note")
                        //
                        //                            .resizable()
                        //                            .scaledToFit()
                        //
                        //                            .frame(width: 40, height: 40)
                        //
                        //                            .offset(x:10,y:250)
                    }
                    
                }
                
                
                
                
                
                
                
                
                
                
                
                .onAppear{
                   
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5.5) {
                        self.textSwitch.toggle()
                        
                    }
//                    SoundManager.instance.playSound(sound: .allthesong)
                    //here the long sound
                    DispatchQueue.main.asyncAfter(deadline: .now() + 10){
                        //SoundManager.instance.playSound(sound: .beeb10seconds)
                        
                        withAnimation{
                          
                            self.isActive = true
                        }
                        
                        
                    }
                    
                }
                
            }}
    }
}

struct DanceDurationView_Previews: PreviewProvider {
    static var previews: some View {
        DanceDurationView()
    }
}
