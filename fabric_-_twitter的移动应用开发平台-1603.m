// Fabric - Twitter的移动应用开发平台-1603
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 24F8C581-EB4B-4D00-965B-166C870EAD5D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
https://get.fabric.io
介绍：Fabric是一个模块化、跨平台的移动开发套件，帮你用最少的努力打造最好的应用程序。应用集成该平台之后，可以快速集成其他模块化的工具，如崩溃分析Crashlytics、将自己的移动应用变现的MoPub(它可以通过让广告主对广告位进行实时竞价的方式，填补移动应用中的空白广告位。开发者也可以使用MoPub SDK来填补各种广告位，包括横幅广告和原生广告。)。可以在web或在Fabric APP上看到自己应用活跃用户数，崩溃日志等信息，如果发生重大事故，Fabric APP还会给你推送消息。
使用方法：1.注册Fabric账号之后，给自己的应用生成一个APIKey，将该key配置到应用的plist文件中，参考v2ex代码。2.然后再找didFinishLaunchingWithOptions方法中加入以下代码即可，其中CrashlyticsKit是你想要集成的模块工具
[Fabric with:@[CrashlyticsKit]];