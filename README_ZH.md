# Loading_SwiftUI

[![SPM](https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat)](https://swift.org/package-manager/)
![Xcode 14.0+](https://img.shields.io/badge/Xcode-14.0%2B-blue.svg)
![iOS 14.0+](https://img.shields.io/badge/iOS-14.0%2B-blue.svg)
![Swift 5.0+](https://img.shields.io/badge/Swift-5.0%2B-orange.svg)
![SwiftUI 3.0+](https://img.shields.io/badge/SwiftUI-3.0%2B-orange.svg)

|                        |                         |                         |                         |                          |
| ---------------------- | ----------------------- | ----------------------- | ----------------------- | ------------------------ |
| ![](Image/loading.png) | ![](Image/loading2.png) | ![](Image/loading3.png) | ![](Image/progress.png) | ![](Image/progress2.png) |
| ![](Image/succ.png)    | ![](Image/succ2.png)    | ![](Image/fail.png)     | ![](Image/fail2.png)    |                          |



Loading_SwiftUI是基于SwiftUI开发的Loading弹窗工具，内置了几个样式，目前有 Loading，Progress，Success，Fail。样式参考[ProgressHUD](https://github.com/relatedcode/ProgressHUD) 。



```swift
loading.showLoading()
loading.showProgress()
loading.showSuccess()
loading.showFail()

loading.dismiss()
```

也可以自定义你自己的Loading样式，无任何侵入，无继承，完全原生，只需要扩展一下控制器的方法就可以

```swift
extension LoadingManager {
    //展示自定义View//自己可以重写替换
   func showCustom(){
        show {
            CustomView()
        }
    }
}
```

## 用法

在需要弹出Toast的页面创建控制器

```swift
    @EnvironmentObject private var loading: LoadingManager
    //OR
    @StateObject var loading = LoadingManager()
```

页面内添加控制器

```
.addLoading(loading)
```

控制Toast弹出的位置，然后调用show方法即可

```
loading.showLoading()
```

控制器

```swift
    //HUD提示
    @Published public var text: String?
    //HUD提示字体颜色
    @Published public var textColor = Color.black
    //HUD提示字体颜色
    @Published public var textFont: Font = .system(size: 15, weight: .medium)
    //HUD Loading颜色
    @Published public var accentColor = Color.blue
    ///进度条进度 0--1
    @Published public var progress: CGFloat = 0
```




## 安装

### cocoapods

1.在 Podfile 中添加 `pod 'Loading_SwiftUI'`

2.执行 `pod install 或 pod update`

3.导入 `import Loading_SwiftUI`

### Swift Package Manager

从 Xcode 11 开始，集成了 Swift Package Manager，使用起来非常方便。Loading_SwiftUI 也支持通过 Swift Package Manager 集成。

在 Xcode 的菜单栏中选择 `File > Swift Packages > Add Pacakage Dependency`，然后在搜索栏输入

`https://github.com/jackiehu/Loading_SwiftUI`，即可完成集成

### 手动集成

Loading_SwiftUI 也支持手动集成，只需把Sources文件夹中的SwiftMediator文件夹拖进需要集成的项目即可


## 作者

jackiehu, 814030966@qq.com

## 更多砖块工具加速APP开发

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftMediator&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftMediator)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftBrick&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftBrick)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftShow&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftShow)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftLog&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftLog)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftyForm&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftyForm)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftEmptyData&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftEmptyData)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftPageView&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftPageView)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=JHTabBarController&theme=radical&locale=cn)](https://github.com/jackiehu/JHTabBarController)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftMesh&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftMesh)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftNotification&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftNotification)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftNetSwitch&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftNetSwitch)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftButton&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftButton)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftDatePicker&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftDatePicker)


## 许可

Loading_SwiftUI is available under the MIT license. See the LICENSE file for more info.
