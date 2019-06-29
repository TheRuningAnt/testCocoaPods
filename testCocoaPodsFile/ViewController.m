//
//  ViewController.m
//  TestBlock
//
//  Created by 赵广亮 on 2019/6/27.
//  Copyright © 2019年 ZhaoGuangLiang. All rights reserved.
//

#import "ViewController.h"
#import "Dog.h"
@interface ViewController ()

@property (nonatomic,copy) float (^myBlock)(NSInteger intNumber,float floatNumer);
@property (nonatomic,strong) Dog *myDog;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    float (^floatBlock)(int,float) = ^(int a,float fb){
//        return  a + fb;
//    };
//
//    __block float num = 5;
//    [self usetGetBlock:^float(int a, float v) {
//        num = a*v;
//        return a*v;
//    }];
//    [self usetGetBlock:floatBlock];
//
//    NSLog(@"numr == %lf",num);
    
    
//    int number1 = 34;
//    NSLog(@"number1 = %d",number1);
//    
//    NSInteger number2 = 34;
//    NSLog(@"number2 = %ld",number2);
//
//    float number3 = 23.4;
//    NSLog(@"number3 = %f",number3);
//    
//    CGFloat numer4 = 34.5;
//    NSLog(@"numer4 = %f",numer4);
    
    
    _myDog = [Dog new];
    NSLog(@"retian comunt = %@",[_myDog valueForKey:@"retainCount"]);
    __weak typeof (self) weakSelf = self;
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        __strong typeof(weakSelf) strongSelf = weakSelf;
        float (^floatBlock)(int,float) = ^(int a,float fb){
            strongSelf.myDog.name = @"3212";
            return  a + fb;
        };
        floatBlock(2,3);
    });


    typeof (Dog*)ggG = _myDog;
    NSLog(@"ggG = %@",ggG);
    
    NSLog(@"retian comunt = %@",[_myDog valueForKey:@"retainCount"]);
    NSLog(@"retian comunt = %@",[_myDog valueForKey:@"retainCount"]);
}

-(void)usetGetBlock:(float (^)(int a,float v))block{
    NSLog(@"result == %lf",block(23,45.6));
}

@end
