// viewWillLayoutSubviews
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: C027F418-63FF-4A29-BAD1-93AF3EBB8CBD
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#pragma mark - Layout
// Called to notify the view controller that its view is about to layout its subviews.
// 晚于viewDidLoad及viewWillAppear的调用、早于viewDidAppear，可在此对子视图进行布局，一般情况下也可以在viewWillAppear方法中进行布局
- (void)viewWillLayoutSubviews {
    NSLog(@"%s", __func__);
    self.backgroundImageView.frame = self.view.frame;
    self.closeButton.frame = (CGRect){10, 20, 44, 44};
    
    self.containView.frame = (CGRect){0, kContainViewYNormal, kScreenWidth, 300};
    self.logoLabel.center = (CGPoint){kScreenWidth/2, 30};
    self.descriptionLabel.frame = (CGRect){20, 60, kScreenWidth - 20,70};
    self.usernameField.frame = (CGRect){60, 150, kScreenWidth - 120, 30};
    self.passwordField.frame = (CGRect){60, 190, kScreenWidth - 120, 30};
    self.loginButton.center = (CGPoint){kScreenWidth/2, 270};
    
}