#import <Foundation/Foundation.h>


@interface Person : NSObject
@property (readonly) NSString* firstName;
@property NSString* lastName;
-(void) speakSome;
-(void) speakWithArg:(NSString*)str;
@end

@implementation Person
-(void) speakSome{
    NSLog(@"hello Person");
}

-(void) speakWithArg:(NSString*)str{
      NSLog(@"hello Person:%@",str);
      [self callSelfFunc:str];
}

-(NSString*) callSelfFunc:(NSString*) str{
       NSLog(@"callSelfFunc:%@",str);
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, world!");
        Person* person=[Person new];
        [person speakSome];
        [person speakWithArg:@"speakWithArg zzzz"];

    }
    return 0;
}