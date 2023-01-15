//
//  DanceView.swift
//  LavaGame
//
//  Created by saba on 18/06/1444 AH.
//

import SwiftUI

struct DanceView: View {
    @State var isActive : Bool = false
    @State var arrow = false
    @State private var textSwitch = false
    @State var extrasound = false
    @State var extrasound1 = false
    @State var extrasound22 = false
    @State var extrasound6 = false
    var body: some View {
        
        ZStack{
            Color.accentColor.edgesIgnoringSafeArea(.all)
            if isActive {
                DanceDurationView()
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
                }
                
                VStack{
                    ZStack{
                        
                        LottieView(lottieFile: "16773-fire.json")
                            .offset(y:30)
                        //التكست الاول بالطرف
                        
                        Text((textSwitch ? "\" Daaaance \"" : "\" When i Say Dance \""))
                            .foregroundColor(Color("Lets Start Color"))
                            .font(.system(size: 35, weight: .heavy, design: .rounded))
                            .multilineTextAlignment(.center)
                            .offset(y:170)
                            .frame(width: 400,height:300)
                        
                        
                        //
                        //                        Image("musical-note")
                        //
                        //                            .resizable()
                        //                            .scaledToFit()
                        //
                        //                            .frame(width: 70, height: 70)
                        //
                        //                            .offset(x:60,y:-200)
                        //
                        //                        Image("Music2")
                        //
                        //                            .resizable()
                        //                            .scaledToFit()
                        //                            .frame(width: 50, height: 50)
                        //                            .offset(x:-150,y:30)
                        //
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
                
                
                
                VStack{
                    
                    Button {
                        arrow = true
                    } label: {
                        ZStack{
                            LottieView(lottieFile: "ArrowDown.json")
                                .frame(width: 70 , height:70)
                                .rotationEffect(.degrees(270))
                                .bold()
                            Circle()
                                .strokeBorder(Color("Lets Start Color"), lineWidth: 10)
                            
                                .frame(width: 70 , height:70)
                            
                        }
                        
                    }
                    .offset(x:125 ,y:270)
                    .fullScreenCover(isPresented: $arrow, content: DanceDurationView.init)
                    
                    
                    
                    
                    .onAppear{
                      
                        //                        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                        //
                        //
                        //                            withAnimation{
                        //
                        //                                self.extrasound = true
                        ////                               SoundManager.instance.playSound(sound: .Kidsmusic)
                        ////                                SoundManager.instance.playSound(sound: .nowletsdance )
                        //                            }
                        //
                        //                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                            //مدة ظهور كلمة وين اي ساي دانس
                            self.textSwitch.toggle()
                            
                        }
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 4.5){
                            
                            
                            withAnimation{
                               
                                self.isActive = true
                                //                                SoundManager.instance.playSound(sound: .Kidsmusic)
                                //                                SoundManager.instance.playSound(sound: .nowletsdance )
                               
                            }
                            
                        }
                        
                       
                        
//                        DispatchQueue.main.asyncAfter(deadline: .now() + 11){
//
//                            withAnimation{
//                                SoundManager.instance.playSound(sound: .ilikeyourmove)
//                                self.isActive = true
//                                //                                SoundManager.instance.playSound(sound: .Kidsmusic)
//                                //                                SoundManager.instance.playSound(sound: .nowletsdance )
//                            }
//                            }
                            
                            //                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.5)
                            //                        {
                            //                            self.extrasound.toggle()
                            //                            SoundManager.instance.playSound(sound: .nowletsdance)
                            //                        }
                            //
                            //                        DispatchQueue.main.asyncAfter(deadline: .now() + 2)
                            //                        {
                            //                            self.extrasound1.toggle()
                            //                       //     SoundManager.instance.playSound(sound: .nowletsdance)
                            //                        }
                            //                        DispatchQueue.main.asyncAfter(deadline: .now() + 5.5)
                            //                        {
                            //                            self.extrasound1.toggle()
                            //                         //   SoundManager.instance.playSound(sound: .Kidsmusic)
                            //
                            //                        }
                            
                        
                    }
                    
                }
            }
        }
    }}
struct DanceView_Previews: PreviewProvider {
    static var previews: some View {
        DanceView()
    }
}
