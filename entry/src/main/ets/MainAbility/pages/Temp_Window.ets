
@Entry
@Component
struct Temp {
  @State vOutSetValueOne: number = 25;
  build() {
      Row() {
        Column() {
          Text("温度设置"+this.vOutSetValueOne+"℃")
            .fontSize(40)
            .fontWeight(FontWeight.Bold)
            .fontColor(0xCCCCCC)
            .width('100%')
            .margin({ top: 50 })
            .textAlign(TextAlign.Center)
          Text("Temperature Setting："+this.vOutSetValueOne+"℃")
            .fontSize(40)
            .fontWeight(FontWeight.Bold)
            .fontColor(0xCCCCCC)
            .width('100%')
            .margin({ top: 50 })
            .textAlign(TextAlign.Center)

            Slider({
              value: this.vOutSetValueOne,
              min: 16,
              max: 30,
              step: 1,
              style: SliderStyle.InSet,
              direction: Axis.Vertical
            })
              .showSteps(true)
              .showTips(true)
              .blockColor(Color.Red)
              .trackColor(Color.Grey)
              .selectedColor(Color.Orange)
              .trackThickness(50)
              .margin({ top: 50 })
              .onChange((vOutSetValueOne) => {
                this.vOutSetValueOne = vOutSetValueOne
              })

        }
        .width('100%')
      }
      .height('80%')
  }
}