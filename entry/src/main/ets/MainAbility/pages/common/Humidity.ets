import router from '@ohos.router';
@Entry
@Component
export struct Humidity {
  @State  private image: string = ""
  @State  private title: string = ""
  @State private isSelected: boolean = true;

  build() {


    Column() {
      Image(this.image)
        .objectFit(ImageFit.Contain)
        .width(140)
        .height(120)
        .margin(20)
        .border({
          width: 12, color: this.isSelected ? Color.White : Color.Blue,
          radius: 20
        })
        .onClick(() => {
          this.isSelected = !this.isSelected;
          router.push({ url: 'pages/Humidity_Window' })

        })
      Text(this.title).fontSize(32).width(200).textAlign(TextAlign.Center)
    }
  }
}