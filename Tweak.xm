#import <UIKit/UITableView.h>

NSArray *appsName ;
NSArray *appsID ;

static void loadPrefs() {
NSUserDefaults *preferences = [[NSUserDefaults alloc] initWithSuiteName:@"com.easy-z.byesep"];
NSArray *apps = [preferences objectForKey:@"BSSelectedApp"];
appsName = [apps valueForKey:@"name"];
appsID = [apps valueForKey:@"bundleID"];
}


%hook UITableView
-(void)viewDidLoad
{
    %orig;
    [self setSeparatorStyle:42069];
}

-(void)setSeparatorStyle:(long long)arg1
{
    %orig(0);

 NSLog(@"selected apps name:%@ and bundleID:%@",appsName, appsID);

}
%end

%ctor {
    CFNotificationCenterAddObserver(
    CFNotificationCenterGetDarwinNotifyCenter(), NULL,
    (CFNotificationCallback)loadPrefs,
    CFSTR("com.eazy-z.byesep-prefsreload"), NULL,
    CFNotificationSuspensionBehaviorDeliverImmediately);
    loadPrefs();
}
