%hook SpringBoard


- (void)applicationDidFinishLaunching:(id)application
{
    %orig;

    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Welcome to iPhone 4s!" message:nil delegate:self cancelButtonTitle:@"Goddamn!" otherButtonTitles:nil];

    [alert show];
    [alert release];

}


%end
