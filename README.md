#红岩第二周作业报告
##学到的内容
1. 学习到了使用dispatch_get_global_queue来获得全局队列，并用dispatch_async方法来创建子线程。
2. 知道了非原子性的缺点，即多个全局并发异步线程会损坏数据的完整性。
##遇到的问题
1. dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);

                    dispatch_async(queue, ^{
                        NSLog(@"张润峰卖了一张票，还剩余%d张票",nac.LeftTickCount);
                    });
                }else{
                    exit(0);
    }
                NSLog(@"－－－－华丽丽的分割线－－－－");
4. 在这段代码中若没有NSLog(@"－－－－华丽丽的分割线－－－－");这句话的话则子线程里面的NSLog语句无法输出。