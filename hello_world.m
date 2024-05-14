#import <Foundation/Foundation.h>


@interface Person : NSObject
@property (readonly) NSString* firstName;
@property NSString* lastName;
-(void) speakSome;
@end

@implementation Person
-(void) speakSome{
    NSLog(@"hello Person");
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, world!");
        Person* person=[Person new];
        [person speakSome];

    }
    return 0;
}