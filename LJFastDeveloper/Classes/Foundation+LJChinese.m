//
//  Foundation+LSChinese.m
//   LJFastDeveloper
//
//  Created by  manajay on 2019/2/22.
//  Copyright © 2019  manajay. All rights reserved.
//


#pragma mark -------------------- CC Mark -----------------
#pragma mark 由于是冲洗系统的方法，所以不需要包含.h 文件，所以把.h 文件删除 。在.m文件中直接导入Foundation

#import <Foundation/Foundation.h>


#pragma mark -------------------- CC Mark -----------------
#pragma mark 字典
@implementation NSDictionary (chinese)

-(NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level{
    
    //1.创建一个可变字符串
    NSMutableString *string = [NSMutableString string];
    
    
    //拼接 “{”
    [string appendString:@"{\n"];
    
    //遍历字典 （字典从哪儿来，本身self 就是字典）
    //拼接key : value
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        
        [string appendFormat:@"   %@:",key];
        [string appendFormat:@"%@,\n",obj];
        
    }];
    
    
    /**
     
     也可以通过 for循环遍历的方法
     
     for (id obj in self) {
     [string appendFormat:@"%@:",key];
     [string appendFormat:@"\"%@\",\n",obj];
     }
     
     */
    
    //拼接 “}”
    [string appendString:@"\n}"];
    
    
    //删除逗号
    
    //最后一个 是没有逗号的
    //*********** 从后往前搜索 得到的是搜索到的第一个符号的位置 *********//
    NSRange range = [string rangeOfString:@",\n" options:NSBackwardsSearch];
    if (range.location != NSNotFound) {
        [string deleteCharactersInRange:range];
    }
    
    
    return string;
}


@end


#pragma mark -------------------- CC Mark -----------------
#pragma mark 数组

@implementation NSArray (Log)

//重写系统的方法控制输出
-(NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level
{
    NSMutableString *string = [NSMutableString string];
    
    //{}
    [string appendString:@"[\n"];
    
    //拼接obj
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [string appendFormat:@"%@,\n",obj];
    }];
    
    [string appendString:@"\n]"];
    
    //删除逗号
    //从后往前搜索 得到的是搜索到的第一个符号的位置
    NSRange range = [string rangeOfString:@",\n" options:NSBackwardsSearch];
    if (range.location != NSNotFound) {
        [string deleteCharactersInRange:range];
    }
    
    return string;
}

@end
