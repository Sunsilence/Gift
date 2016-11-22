//
//  GiftTabBarController.m
//  Gift
//
//  Created by Silence on 16/11/22.
//  Copyright © 2016年 Silence. All rights reserved.
//

#import "GiftTabBarController.h"

@interface GiftTabBarController ()

@end

@implementation GiftTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [UITabBar appearance].tintColor=[UIColor colorWithRed:255.0f/255.0f green:66.0f/255.0f blue:88.0f/255.0f alpha:1.0f];
    
    [self createViewControllers];
}

-(void)createViewControllers{
    //1 首页
    [self addSubController:@"HomePageController" imageName:@"tab_icon_home_default" selectImageName:@"tab_icon_home_Select" title:@"首页"];
    
    //2 榜单
    [self addSubController:@"ListController" imageName:@"tab_btn_list_default" selectImageName:@"tab_btn_list_select" title:@"榜单"];
    
    //3 分类
    [self addSubController:@"ClassificationController" imageName:@"tab_btn_sort_default" selectImageName:@"tab_btn_sort_select" title:@"分类"];
    
    //4 我的
    [self addSubController:@"MineController" imageName:@"tab_btn_mine_default" selectImageName:@"tab_btn_mine_select" title:@"我的"];
}

-(void)addSubController:(NSString *)ctrlName imageName:(NSString *)imageName selectImageName:(NSString *)selectImageName title:(NSString *)title{
    //1 创建一个视图控制器对象
    Class cls=NSClassFromString(ctrlName);
    UIViewController *tmpCtrl=[[cls alloc] init];
    
    //2 设置文字
    tmpCtrl.tabBarItem.title=title;
    //3 图片
    tmpCtrl.tabBarItem.image=[UIImage imageNamed:imageName];
    tmpCtrl.tabBarItem.selectedImage=[UIImage imageNamed:selectImageName];
    //4 导航
    UINavigationController *nav=[[UINavigationController alloc] initWithRootViewController:tmpCtrl];
    //5 让 tabBarController 管理这个视图控制器
    
    [self addChildViewController:nav];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
