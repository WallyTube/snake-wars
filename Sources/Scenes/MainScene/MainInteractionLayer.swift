import Scenes

class MainInteractionLayer : Layer {

    let interaction = MainInteraction()

    init() {
        super.init(name:"main-interaction")
        insert(entity:interaction, at:.back)
    }

}