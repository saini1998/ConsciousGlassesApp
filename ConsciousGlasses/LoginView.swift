//
//  SwiftUIView.swift
//  ConsciousGlasses
//
//  Created by Aaryaman Saini on 23/10/21.
//

import SwiftUI
import SwiftUIX

struct LoginView: View {
    @State private var email: String = "Email"
    @State private var password: String = "Password"
    @State private var willMoveToHomeScreen: Bool = false
    
    
    var body: some View {
        ZStack{
            background
            logincontent
        }
        .navigate(to: HomeView(), when: $willMoveToHomeScreen)
    }
    
    var background: some View{
        ZStack{
            AngularGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9957614541, green: 0.5791325569, blue: 0, alpha: 1)),Color(#colorLiteral(red: 0.4744538665, green: 0.4745411873, blue: 0.4744548202, alpha: 1)),Color(#colorLiteral(red: 2.514852531e-05, green: 0, blue: 0.004306100775, alpha: 1)),Color(#colorLiteral(red: 0.9957614541, green: 0.5791325569, blue: 0, alpha: 1)),Color(#colorLiteral(red: 0.4744538665, green: 0.4745411873, blue: 0.4744548202, alpha: 1)),Color(#colorLiteral(red: 2.514852531e-05, green: 0, blue: 0.004306100775, alpha: 1)),Color(#colorLiteral(red: 0.9957614541, green: 0.5791325569, blue: 0, alpha: 1))]), center: .center, angle: .degrees(30))
            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0), Color.white.opacity(1)]), startPoint: .bottom, endPoint: .top)
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    var logincontent: some View{
        VStack{
            
            Text("Login")
                //                .font(.title)
                .foregroundColor(Color(#colorLiteral(red: 2.514852531e-05, green: 0, blue: 0.004306100775, alpha: 1)))
                .font(.system(size: 50))
                .bold()
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
            Image(systemName: "faceid")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .foregroundColor(Color(#colorLiteral(red: 0.9948499799, green: 0.5876758695, blue: 0.008249755017, alpha: 1)))
                .background(VisualEffectBlurView(blurStyle: .systemThickMaterialDark))
                .cornerRadius(10)
            
            Spacer()
            
            Text("OR")
                .foregroundColor(.black)
                .font(.largeTitle)
                .bold()
            Spacer()
            Group{
                Group{
                    TextField(text: $email)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .font(.system(size: 30))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .background(VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark))
                    TextField(text: $password)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .font(.system(size: 30))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .background(VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark))
                }
                
                Spacer()
                Button(action: {
                    willMoveToHomeScreen = true
                }) {
                    Text("Submit")
                        .font(.system(size: 30))
                        .foregroundColor(Color(#colorLiteral(red: 0.9948499799, green: 0.5876758695, blue: 0.008249755017, alpha: 1)))
                        .bold()
                }
                .buttonStyle(PlainButtonStyle())
                .frame(width: 300, height: 30)
                .padding()
                .background(VisualEffectBlurView(blurStyle: .systemThickMaterialDark))
                .cornerRadius(18)
            }
            
            Spacer()
            
            
            Button(action: {}) {
                HStack{
                    Image(systemName: "mic.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                        .foregroundColor(Color(#colorLiteral(red: 0.9948499799, green: 0.5876758695, blue: 0.008249755017, alpha: 1)))
                    Text("Alice here, how can I help?")
                        .font(.system(size: 25))
                        .foregroundColor(Color(#colorLiteral(red: 0.9948499799, green: 0.5876758695, blue: 0.008249755017, alpha: 1)))
                }
            }
            .buttonStyle(PlainButtonStyle())
            .frame(maxWidth: .infinity)
            .frame(height: 70)
            .padding()
            .background(VisualEffectBlurView(blurStyle: .systemChromeMaterialDark))
            .offset(y: 30)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


