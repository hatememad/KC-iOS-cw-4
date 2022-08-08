//
//  ContentView.swift
//  cw4 meow
//
//  Created by Ammar Emad on 07/08/2022.
//

import SwiftUI

struct ContentView: View {
   @State var finalgrade = ""
    @State var gradedes = ""
    var body: some View {
        ZStack{
           Image("WhatsApp Image 2022-08-08 at 8.19.40 PM")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Text("حاسبة الدرجات")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                Spacer()
                Image("5721117")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
                TextField("enter your grade", text: $finalgrade)
                    .background(.white)
                    .textFieldStyle(.roundedBorder)
                Text(" احسب درجتي")
                    .font(.largeTitle)
                    .frame(width: 200, height:40)
                    .background(.yellow)
                    .onTapGesture {
                        if (Double(finalgrade) ?? 0) >= 90 {
                            gradedes = "امتياز"
                        }
                        else if (Double(finalgrade) ?? 0) >= 80 {
                            gradedes = "جيد جدا"
                        }
                        else if (Double(finalgrade) ?? 0) >= 70 {
                            gradedes = "جيد"
                        }
                        else if (Double(finalgrade) ?? 0) >= 60 {
                            gradedes = "مقبول"
                        }
                        else if  (Double(finalgrade) ?? 0) < 60 {
                            gradedes = " راسب"
                        }
                    }
                Text("لقد حصلت على درجة")
                    .font(.largeTitle)
                Text(gradedes)
                    .font(.largeTitle)
                
                Spacer()
            }.padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
