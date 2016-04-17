// initWithNibName
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 1108CBFD-2EB7-4DC7-AEA6-869EB7C5EED4
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// V2LoginViewController *loginViewController = [[V2LoginViewController alloc] init];时也会调用initWithNibName方法
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        self.isKeyboardShowing = NO;
        self.isLogining = NO;
        
    }
    return self;
}