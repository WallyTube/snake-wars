import Scenes

class MainForegroundLayer : Layer {

    let foreground = MainForeground()
    
    init() {
        super.init(name:"main-foreground")
        insert(entity:foreground, at:.back)
    }

}