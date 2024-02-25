import SwiftUI

@main
struct MyApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear(perform: {
                    CustomFont.registerFonts()
                })
                .preferredColorScheme(.light)
        }
    }
}
