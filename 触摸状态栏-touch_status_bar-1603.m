// 触摸状态栏-touch status bar-1603
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 0AFB3FA1-6761-46E3-9376-6A6908799C6B
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// 应用代理类，判断是否touch了状态栏，如果是，则发送通知
#pragma mark - Status bar touch tracking
// 【touch状态栏，SCPullRefreshViewController监听到touch事件，然后将tableView滚到第一行】
- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    CGPoint location = [[[event allTouches] anyObject] locationInView:[self window]];
    CGRect statusBarFrame = [UIApplication sharedApplication].statusBarFrame;
    if (CGRectContainsPoint(statusBarFrame, location)) {
        [[NSNotificationCenter defaultCenter] postNotificationName:kStatusBarTappedNotification
                                                            object:nil];
    }
}

// 控制器类监听和处理通知
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didReceiveStatusBarTappedNotification) name:kStatusBarTappedNotification object:nil];
}
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:kStatusBarTappedNotification object:nil];
}

- (void)didReceiveStatusBarTappedNotification {
    
    [self.tableView scrollRectToVisible:(CGRect){0, 0, kScreenWidth, 0.1} animated:YES];
    
}
