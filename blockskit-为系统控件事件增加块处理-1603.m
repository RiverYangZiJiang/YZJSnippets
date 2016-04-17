// BlocksKit-为系统控件事件增加块处理-1603
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: A952785A-D643-4878-8D49-C11B8F781934
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// BlocksKit为第三方库
// 为系统控件事件增加块处理，使得代码更紧凑，减少方法数
#warning 杨子江 方便
    // Handles
    @weakify(self);
    [self.closeButton bk_addEventHandler:^(id sender) {
        @strongify(self);
        
        [self dismissViewControllerAnimated:YES completion:nil];
        
    } forControlEvents:UIControlEventTouchUpInside];
    
    [self.containView bk_whenTapped:^{
        @strongify(self);
        [self hideKeyboard];
    }];
    
    [self.backgroundImageView bk_whenTapped:^{
        @strongify(self);
        
        [self hideKeyboard];
        
    }];


#warning 杨子江 点击键盘Next，让密码输入框成为第一响应者
[self.usernameField setBk_shouldReturnBlock:^BOOL(UITextField *textField) {
    @strongify(self);
    
    [self.passwordField becomeFirstResponder];
    
    return YES;
}];

[self.passwordField setBk_shouldBeginEditingBlock:^BOOL(UITextField *textField) {
    @strongify(self);
    
    [self showKeyboard];
    
    return YES;
}];
