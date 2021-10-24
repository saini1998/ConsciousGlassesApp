//
//  ContentView.swift
//  ConsciousGlasses
//
//  Created by Aaryaman Saini on 23/10/21.
//

import SwiftUI
import SwiftUIX

struct ContentView: View {
    
    @State private var willMoveToLoginScreen = false
    @State private var willMoveToSignupScreen = false

    var body: some View {
        ZStack{
            background
            content
            
        }
        .navigate(to: SignUpView(), when: $willMoveToSignupScreen)
        .navigate(to: LoginView(), when: $willMoveToLoginScreen)

    }
    
    var background: some View{
        ZStack{
            AngularGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)),Color(#colorLiteral(red: 0.4756349325, green: 0.4756467342, blue: 0.4756404161, alpha: 1)),Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),Color(#colorLiteral(red: 1, green: 0.5788115263, blue: 0, alpha: 1)),Color(#colorLiteral(red: 0.4744538665, green: 0.4745411873, blue: 0.4744548202, alpha: 1)),Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),Color(#colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1))]), center: .center, angle: .degrees(30))
            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0), Color.white.opacity(1)]), startPoint: .bottom, endPoint: .top)
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    var content: some View{
        VStack{
            Text("Conscious Glasses")
                //                .font(.title)
                .foregroundColor(Color(#colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1)))
                .font(.system(size: 50))
                .bold()
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
            Image("frontView")
                .resizable()
                .scaledToFit()
                .background(VisualEffectBlurView(blurStyle: .systemThinMaterialDark))
                .cornerRadius(40)
                .padding()
            Spacer()
            Button(action: {
                willMoveToLoginScreen = true
            }) {
                Text("Login")
                    .font(.system(size: 30))
                    .foregroundColor(Color(#colorLiteral(red: 0.9948499799, green: 0.5876758695, blue: 0.008249755017, alpha: 1)))
                    .bold()
            }
            .buttonStyle(PlainButtonStyle())
            .frame(width: 300, height: 30)
            .padding()
            .background(VisualEffectBlurView(blurStyle: .systemThickMaterialDark))
            .cornerRadius(18)
            Button(action: {
                willMoveToSignupScreen = true
            }) {
                Text("Sign Up")
                    .font(.system(size: 30))
                    .foregroundColor(Color(#colorLiteral(red: 0.9948499799, green: 0.5876758695, blue: 0.008249755017, alpha: 1)))
                    .bold()


            }
            .buttonStyle(PlainButtonStyle())
            .frame(width: 300, height: 30)
            .padding()
            .background(VisualEffectBlurView(blurStyle: .systemThickMaterialDark))
            .cornerRadius(18)
            Spacer()
            Button(action: {}) {
                HStack{
                    Image(systemName: "mic.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                        .foregroundColor(Color(#colorLiteral(red: 0.9988062978, green: 0.5875615478, blue: 0, alpha: 1)))
                    Text("Alice here, how can I help?")
                        .font(.system(size: 25))
                        .foregroundColor(Color(#colorLiteral(red: 0.9988062978, green: 0.5875615478, blue: 0, alpha: 1)))
                }
                


            }
            .buttonStyle(PlainButtonStyle())
            .frame(maxWidth: .infinity)
            .frame(height: 70)
            .padding()
            .background(VisualEffectBlurView(blurStyle: .systemChromeMaterialDark))
//            .background(VisualEffectBlurView(blurStyle: .light))
            .offset(y: 30)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}

extension View {
    /// Navigate to a new view.
    /// - Parameters:
    ///   - view: View to navigate to.
    ///   - binding: Only navigates when this condition is `true`.
    func navigate<NewView: View>(to view: NewView, when binding: Binding<Bool>) -> some View {
        NavigationView {
            ZStack {
                self
                    .navigationBarTitle("")
                    .navigationBarHidden(true)

                NavigationLink(
                    destination: view
                        .navigationBarTitle("")
                        .navigationBarHidden(true),
                    isActive: binding
                ) {
                    EmptyView()
                }
            }
        }
    }
}
