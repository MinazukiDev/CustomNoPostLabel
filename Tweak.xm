@interface SBUILegibilityLabel : UIView
@end

%hook SBUILegibilityLabel
- (void)layoutSubviews {
    %orig;
    UILabel *myLabel = MSHookIvar<UILabel *>(self,"_lookasideLabel");
    myLabel.text = @"通知なし！";
}
%end
    