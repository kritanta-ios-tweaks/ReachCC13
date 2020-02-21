
@interface SBControlCenterController // [[%c(SBControlCenterController) sharedInstance] presentAnimated:TRUE]
+(id)sharedInstance;
+(void)presentAnimated:(BOOL)arg1;
-(BOOL)isVisible;
-(void)dismissAnimated:(BOOL)arg1 ;
@end

%hook SBReachabilityManager

-(void)_activateReachability:(id)arg
{
    [[objc_getClass("SBControlCenterController") sharedInstance] presentAnimated:YES];
}
-(void)toggleReachability
{

    [[objc_getClass("SBControlCenterController") sharedInstance] presentAnimated:YES];
}

%end