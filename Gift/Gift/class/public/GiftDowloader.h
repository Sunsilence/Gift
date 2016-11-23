//
//  GiftDowloader.h
//  Gift
//
//  Created by Silence on 16/11/23.
//  Copyright © 2016年 Silence. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GiftDowloader : NSObject


+(void)downloadWithUrlString:(NSString *)urlString seccess:(void(^)(NSData *data))finishBlock fail:(void(^)(NSError *error))failBlock;


@end
