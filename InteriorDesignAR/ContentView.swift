//
//  ContentView.swift
//  InteriorDesignAR
//
//  Created by Marc Jacques on 6/15/21.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    @EnvironmentObject var placementSettings: PlacementSettings
    @State private var isControlsVisible: Bool = true
    @State private var showBrowse: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            ARViewContainer()
            
            if self.placementSettings.selectedModel == nil {
                ControlView(isControlsVisible: $isControlsVisible, showBrowse: $showBrowse)
            } else {
                PlacementView()
            }
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    @EnvironmentObject var placementSettings: PlacementSettings
    
    func makeUIView(context: Context) -> CustomARView {
        
        let arView = CustomARView(frame: .zero)
        
        //Subscribe to SceneEvents.Update
        self.placementSettings.sceneObserver = arView.scene.subscribe(to: SceneEvents.Update.self, { (event) in
            
            
            //TODO: call updateScene method
        })
        
        return arView
        
    }
    
    func updateUIView(_ uiView: CustomARView, context: Context) {}
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(PlacementSettings())
    }
}
#endif
