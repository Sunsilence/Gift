//
//  Const.h
//  Gift
//
//  Created by Silence on 16/11/25.
//  Copyright © 2016年 Silence. All rights reserved.
//

#ifndef Const_h
#define Const_h

#pragma mark - 宏定义

#define ScreenW [UIScreen mainScreen].bounds.size.width
#define ScreenH [UIScreen mainScreen].bounds.size.height

#define Color(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define RandomColor Color(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))/** 随机色  */


#endif /* Const_h */
