// FrameAccessor-方便得到和修改view.frame的值-1603
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: D06FA7C0-E035-4696-9071-ECA60DDA7C1C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// 直接修改menuView.frame的x坐标
self.menuView.x = offset - kMenuWidth;

// ViewFrameAccessor.m中实现如下
- (void)setX:(CGFloat)newX
{
    CGRect newFrame = self.frame;
    newFrame.origin.x = newX;
    self.frame = newFrame;
}