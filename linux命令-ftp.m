// Linux命令-FTP
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: FC91DAA1-3AB5-418A-9FF6-47C81E6BE60B
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
mac下一般用smb服务来进行远程文件访问，但要用FTP的话，高版本的mac os默认关掉了，可以用如下命令打开:
sudo -s launchctl load -w /System/Library/LaunchDaemons/ftp.plist
相应的，要关闭则：
sudo -s launchctl unload -w /System/Library/LaunchDaemons/ftp.plist