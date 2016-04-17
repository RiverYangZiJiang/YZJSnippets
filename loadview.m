// loadView
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 7A248165-471F-4A72-867D-F1C01FC3A1F1
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// This is where subclasses should create their custom view hierarchy if they aren't using a nib.
- (void)loadView {
    [super loadView];
    
    // 【放在viewDidLoad调用也能出视图】
    [self configureViews];
    [self configureContainerView];
    
}