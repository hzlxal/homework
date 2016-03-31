//
//  main.m
//  红岩作业－多线程
//
//  Created by hzl on 16/3/29.
//  Copyright © 2016年 hzl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "nonatomic.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        nonatomic *nac = [[nonatomic alloc]init];
        nac.LeftTickCount = 20;
            while (1) {
                int count = nac.LeftTickCount;
                dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
                if (count>0){
                    sleep(0.2);
                    nac.LeftTickCount = count-1;
                    dispatch_async(queue, ^{
                        NSLog(@"张润峰卖了一张票，还剩余%d张票",nac.LeftTickCount);
                    });
                }else{
                    exit(0);
    }
                NSLog(@"－－－－华丽丽的分割线－－－－");
            }

    }

}

