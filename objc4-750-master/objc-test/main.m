//
//  main.m
//  objc-test
//
//  Created by CoderHong on 2018/12/16.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <objc/message.h>

#import "Person.h"
/*
 总结：
 dyld是动态链接器，启动编译后的二进制文件（所有.o文件的集合），然后dyld参与进来，初始化二进制，把一些动态库，例如Fundation，UIKit，Runtime
 lib库，GCD，Block等链接进来，然后修正地址偏移（ASLR，Apple为了防止攻击，可执行文件和动态链接库的每次加载地址都不同），然后dyld把这些符号，类，方法等加载进内存，runtime向dyld注册了回调，当全部加载进内存的时候，交给runtime来处理，runtime根据加载进来的类递归层级遍历，根据runtime中的objc定义的结构体加载成对应的格式（例如Class结构体，Objc结构体，objc_msgSend方法调用等）以及调用+load方法完成初始化，至此，可执行文件中和动态链接库的符号（Class，Protocol，SEL，IMP）按runtime格式加载进内存了，后续的那些方法例如动态添加Class和Swizzle才会生效
 ---------------------
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *p = [[Person alloc] init];
        [p release];
        
    }
    return 0;
}


