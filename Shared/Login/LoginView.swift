//
//  ContentView.swift
//  Shared
//
//  Created by Carlos Osejo on 21/7/21.
//

import SwiftUI

struct LoginView: View {
    // MARK: - Propertiers
    var presenter: LoginPresenterProtocol
    @ObservedObject var store: UserStore
    
    @State private var email = ""
    @State private var password = ""
    
    init(store: UserStore) {
      self.store = store
      self.presenter = LoginPresenter(view: store)
    }
    
    // MARK: - View
    var body: some View {
        
        VStack(alignment: .center, spacing: 40) {
            VStack { () -> AnyView in
                switch store.state {
                case .loading:
                    return AnyView(ProgressView())
                case .show(let message):
                    return AnyView(Text(message))
                default:
                    return AnyView(EmptyView())
                }
            }
            
            VStack(alignment: .leading, spacing: 40) {
                TextField("Email", text: self.$email)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(20.0)
                    .shadow(radius: 10.0, x: 20, y: 10)
                
                SecureField("Password", text: self.$password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(20.0)
                    .shadow(radius: 10.0, x: 20, y: 10)
            }.padding([.leading, .trailing], 27.5)
            
            Button(action: {}) {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.green)
                    .cornerRadius(15.0)
                    .shadow(radius: 10.0, x: 20, y: 10)
                    .onTapGesture {
                        presenter.login(username: self.email, password: self.password)
                    }
            }.padding(.top, 50)
            
            Spacer()
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [.blue, .blue]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all))
        
    }
}

//extension Color {
//    static var themeTextField: Color {
//        return Color(red: 220.0/255.0, green: 230.0/255.0, blue: 230.0/255.0, opacity: 1.0)
//    }
//}
