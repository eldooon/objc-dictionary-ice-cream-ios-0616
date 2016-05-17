//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSArray *) namesForIceCream:(NSString *)iceCream;{
    
    NSMutableArray *iceCreamArray = [[NSMutableArray alloc]init]; //create new mutable array
    NSDictionary *iceCreamName = @ {    @"Joe"    : @"Peanut Butter and Chocolate",
                                        @"Tim"    : @"Natural Vanilla",
                                        @"Sophie" : @"Mexican Chocolate",
                                        @"Deniz"  : @"Natural Vanilla",
                                        @"Tom"    : @"Mexican Chocolate",
                                        @"Jim"    : @"Natural Vanilla",
                                        @"Mark"   : @"Cookies 'n Cream"};
    
    for (NSString *keys in iceCreamName){ //create new "keys" string for loop in dictionary
        if ([iceCreamName[keys] isEqualToString:iceCream]){ //if any values is equal to iceCream string
            
            [iceCreamArray addObject: keys]; //add keys to array
        }
            
    }
    

    return iceCreamArray; //return new array with keys
}

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName{
    
    NSMutableDictionary *countsByIceCream = [[NSMutableDictionary alloc]init]; //create new mutable dictionary
    
    for (NSString *keys in iceCreamByName){
        NSString *iceCream = iceCreamByName[keys];
        
        if ([countsByIceCream objectForKey:iceCream] == 0){
            
            NSArray *countingIceCream = [self namesForIceCream:(iceCream)]; //create new array using previous method
            NSNumber *countPerIceCream = @([countingIceCream count]); //intialize count per icecream
            countsByIceCream[iceCream] = countPerIceCream; //all together
        }
    }
    
    return countsByIceCream; //return new dictionary
}


@end
