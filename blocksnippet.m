// BlockSnippet
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 55CDFCEB-24D0-400F-BC89-86FC7090CA7D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// block是OC对象，可以被加到NSArray等集合类中，可以作为参数在方法中传递，也可以直接被调用，类似C的函数指针【具有变量(可以像变量一样声明、赋值、传递)和函数(可以像函数一样调用)的双重属性】
// 定义block和定义函数差不多，只不过block的声明和定义可以分开写


// 1.块作为参数
- (NSURLSessionDataTask *)UserLoginWithUsername:(NSString *)username password:(NSString *)password
success:(void (^)(NSString *message))success
failure:(void (^)(NSError *error))failure;

[[V2DataManager manager] getMemberProfileWithUserId:nil username:self.usernameField.text success:^(V2MemberModel *member) {
    
    V2UserModel *user = [[V2UserModel alloc] init];
    
    user.member = member;
    user.name = member.memberName;
    
    [V2DataManager manager].user = user;
    
    [[NSNotificationCenter defaultCenter] postNotificationName:kLoginSuccessNotification object:nil];
    
    [self endLogin];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
} failure:^(NSError *error) {
    
    [self endLogin];
    
}];

// 2.块作为成员变量

