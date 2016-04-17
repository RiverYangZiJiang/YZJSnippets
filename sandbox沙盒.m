// SandBox沙盒
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 9A6E5BB1-57CA-4AC7-A907-DF25109E17F7
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
    // Xcode7.1沙盒路径 /Users/yangzijiang/Library/Developer/CoreSimulator/Devices/565F8DF5-5182-4737-93BF-9DA41B2F9351/data/Containers/Data/Application/
    // 沙盒Home目录
    NSString *homePath = NSHomeDirectory();
    // Documents目录
    NSString *documentsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];