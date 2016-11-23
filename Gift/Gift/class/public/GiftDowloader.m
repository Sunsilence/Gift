//
//  GiftDowloader.m
//  Gift
//
//  Created by Silence on 16/11/23.
//  Copyright © 2016年 Silence. All rights reserved.
//

#import "GiftDowloader.h"

@implementation GiftDowloader

+(void)downloadWithUrlString:(NSString *)urlString seccess:(void (^)(NSData *))finishBlock fail:(void (^)(NSError *))failBlock{
    
    //1 创建 URL
    NSURL *url=[NSURL URLWithString:urlString];
    
    //2 创建 request
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    
    //3 创建 AFURLSessionManager 对象
    NSURLSessionConfiguration *config=[NSURLSessionConfiguration defaultSessionConfiguration];
    
    AFURLSessionManager *manager=[[AFURLSessionManager alloc] initWithSessionConfiguration:config];
    
    manager.responseSerializer=[AFHTTPResponseSerializer serializer];
    
    //4 下载对象
    NSURLSessionTask *task=[manager dataTaskWithRequest:request completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        if (error){
            failBlock(error);
        }else{
            NSHTTPURLResponse *r=(NSHTTPURLResponse *)response;
            if (r.statusCode==200){
                //返回正确的数据
                finishBlock(responseObject);
            }else{
                NSError *error=[NSError errorWithDomain:urlString code:r.statusCode userInfo:@{@"msg":@"下载失败"}];
                failBlock(error);
            }
        }
    }];
    [task resume];
}

@end
