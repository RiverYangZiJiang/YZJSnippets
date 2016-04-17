// 黑夜模式-1603
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: CF9FB85C-16BF-44A8-A47D-0CF4B0234582
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // 【如果配置了主题自动切换，根据屏幕亮度，自动切换夜间模式或白天模式】
    if (kSetting.themeAutoChange) {
        CGFloat brightness = [UIScreen mainScreen].brightness;
        
        if (brightness < 0.2) {
            kSetting.theme = V2ThemeNight;
        } else {
            kSetting.theme = V2ThemeDefault;
        }
    }
    
}
