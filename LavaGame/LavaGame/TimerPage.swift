//
//  TimerPage.swift
//  LavaGame
//
//  Created by saba on 17/06/1444 AH.
//

import SwiftUI
import AVFoundation


struct TimerPage: View {
    @State var countDownTimer = 5
    @State var timerRunning = false
    
    @State var isActive : Bool = false
    let timer = Timer.publish(every: 1, on: .main , in: .common ).autoconnect()
    
    var body: some View {
        
        ZStack{
            Color.accentColor.edgesIgnoringSafeArea(.all)
            
            if isActive {
                FullLavaPage()
            }  else {
                
                VStack {
                    
                    
                    ZStack{
                        //                LottieView(lottieFile: "Comp 1-3.json")
                        //
                        //                    .frame(width: 500, height: 500)
                        //                    .offset(y:300)
                        //                    .rotationEffect(.degrees(-180))
                        
                        //                            Circle().fill(Color("Lets Start Color"))
                        //                                .frame(width : 100 , height: 100)
                        //                                .offset(x:150 ,y:400)
                        
                        //                            RoundedRectangle(cornerRadius: 100)
                        //                                .fill(Color("colororange2"))
                        //                                .frame(width :80, height:  250)
                        //                                .scaledToFill()
                        //                                .offset(x:-70,y:320)
                        //
                        //                            RoundedRectangle(cornerRadius: 100)
                        //                                .fill(Color("colororange1"))
                        //                                .frame(width :80, height:  250)
                        //                                .scaledToFill()
                        //
                        
                        //                                .offset(x:-50,y:300)
                        
                        //
                        //                            RoundedRectangle(cornerRadius: 100)
                        //                                .fill(Color("colororange2"))
                        //                                .frame(width :80, height:  250)
                        //                                .scaledToFill()
                        //                                .offset(x:50,y:50)
                        
                        //                            RoundedRectangle(cornerRadius: 100)
                        //                                .fill(Color("colororange1"))
                        //                                .frame(width :80, height:  250)
                        //                                .scaledToFill()
                        //                                .offset(x:50,y:50)
                        LottieView(lottieFile: "main-6.json")
                        
                        
                            .frame(width: 350, height: 350)
                        
                        
                        Text("\(countDownTimer)")
                            .padding()
                            .onReceive(timer) { _ in
                                if countDownTimer > 0 && timerRunning {
                                    countDownTimer -= 1
                                    //backword counting
                                } else {
                                    timerRunning = true
                                }
                                
                            }
                        
                            .font(.system(size: 150, weight: .heavy, design: .rounded))
                            .foregroundColor(Color("Lets Start Color"))
                        
                        
                        //                    Button("Start") {
                        //                        timerRunning = true
                        //
                        //                    }
                        //                    .foregroundColor(.black)
                        
                        
                        Button{
                            countDownTimer = 5
                            
                        } label: {
                            Image("again sign")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .bold()
                            
                            
                        }
                        .offset(x:-120,y:-350)
                        
                        
                        
                        
                        .offset(y:-200)
                        // LottieView(lottieFile: "Comp 1-3.json")
                        
                        .frame(width: 500, height: 500)
                        .offset(y:250)
                    }
                    Text("Get Ready..")
                        .foregroundColor(Color("Lets Start Color"))
                        .font(.system(size: 30, weight: .heavy, design: .rounded))
                        .multilineTextAlignment(.center)
                        .offset(y:-50)
                    
                    Text("To get of the Floor !")
                        .foregroundColor(Color("Lets Start Color"))
                        .font(.system(size: 30, weight: .heavy, design: .rounded))
                        .multilineTextAlignment(.center)
                        .offset(y:-40)
                    
                }
                
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                    //    SoundManager.instance.playSound(sound: .woosh)
                        withAnimation{
                            self.isActive = true
                        }}
                    DispatchQueue.main.asyncAfter(deadline: .now() + 6){
                      //  SoundManager.instance.playSound(sound: .fire)
                        withAnimation{
                            self.isActive = true
                        }}
                    
                }
            }
            
        }
    }
    struct TimerPage_Previews: PreviewProvider {
        static var previews: some View {
            TimerPage()
        }
    }
}
//  .rotation3DEffect(.degrees(45), axis: (x: 1, y: 0, z: 0))
//  @State var path = Bundle.main.path(forResource:"the-beat-of-nature-122841 ", ofType: "mp3")
// @State var audioPlayer = AVAudioPlayer(contentsOf:URL(fileURLWithPath : path))
//splash screen states
//var audioplayer : AVAudioPlayer?
//

//func playsound () {
//    if let path = Bundle.main.path(forResource:"the-beat-of-nature-122841 ", ofType: "mp3") {
//        do {
//            audioplayer = try AVAudioPlayer(contentsOf:URL(fileURLWithPath : path))
//            audioplayer?.play()
//        }catch {
//            print ("error")
//        }
//    }
//}
//playsound()
