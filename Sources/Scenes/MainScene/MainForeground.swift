import Scenes
import Igis

class MainForeground : RenderableEntity {
    let text : Text

    init() {

        text = Text(location:Point(x:50, y:50), text:"This should theoretically be a button.")
        text.font = "30pt Ariel"

        super.init(name:"main-foreground")

    }

    override func setup(canvasSize:Size, canvas:Canvas) {
        canvas.render(text)
    }

}