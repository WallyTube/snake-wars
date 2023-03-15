import Scenes

class MainBackgroundLayer : Layer {

    let background = MainBackground()
    
    init() {
        super.init(name:"main-background")
        insert(entity:background, at:.back)
    }
    
}