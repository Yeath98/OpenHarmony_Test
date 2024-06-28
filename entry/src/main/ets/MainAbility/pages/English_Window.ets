import { SearchF } from './common/Search';
import { LightControl } from './common/LightControl';
import { LightShade } from './common/LightShade';
import { Humidity } from './common/Humidity';
import { Seat } from './common/Seat';
import { Temp } from './common/Temp';
import router from '@ohos.router';

@Entry
@Component
struct En {
  @State title: string = 'Smart Cockpit Applications'
  @State message: string = 'Welcome to use!'

  @State private isSelect: boolean = true;

  build() {
    Column() {
      Row() {
        Text(this.title)
          .fontSize(80)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 60, top: 40 })
          .onClick(() => {
          })
      }
      Row() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 60 })
          .onClick(() => { })

        Image('common/images/plane.png') // 这里添加消息旁边的图片路径
          .width(180)
          .height(180)
          .margin({ left: 15 ,bottom: 30}) // 图片和文字之间的间距
      }


      Row() {
        SearchF({
          image: "common/images/search.png",
          title: "Search\nRequests",
          isSelected: this.isSelect!

        })

        Humidity({
          image: "common/images/humidity.png",
          title: "Humidity\nControl",
          isSelected: this.isSelect!
        })

        LightControl({
          image: "common/images/highlight.png",
          title: "Light\nControl",
          isSelected: this.isSelect!
        })
      }

      Row() {
        Seat({
          image: "common/images/seat.png",
          title: "Seat\nAdjustment",
          isSelected: this.isSelect!
        })

        Temp({
          image: "common/images/temp.png",
          title: "Temperature\nControl",
          isSelected: this.isSelect!
        })

        LightShade({
          image: "common/images/lightshade.png",
          title: "Light\nShade",
          isSelected: this.isSelect!
        })
      }

      Button("Chinese")
        .fontSize(50)
        .fontColor(Color.Black)
        .width(600)
        .height(100)
        .backgroundColor(Color.Grey) // 添加背景颜色
        .margin({ top: 100 })
        .onClick(() => {
          router.push({ url: 'pages/Chinese_Window' })
        })
    }
    .width('100%')
    .height('100%')
    .backgroundColor("#F5F5F5")
  }
}
