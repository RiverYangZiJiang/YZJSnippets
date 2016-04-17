// AFNetworking
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: E7C5549E-E11D-4FE2-A8A6-92CBE95914C5
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
1.AFNetworking不能直接访问HTML页面
// 监听网络变化
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Preload StateManager
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];

