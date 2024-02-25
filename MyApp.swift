import SwiftUI

@main
struct MyApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear(perform: {
                    CustomFont.registerFonts()
                    AudioManager.shared.playBackgroundMusic(fileName: MusicPath.mainBGM)
                })
                .preferredColorScheme(.light)
        }
    }
}
