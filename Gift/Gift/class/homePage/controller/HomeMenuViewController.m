//
//  HomeMenuViewController.m
//  Gift
//
//  Created by Silence on 16/11/28.
//  Copyright © 2016年 Silence. All rights reserved.
//

#import "HomeMenuViewController.h"
#import "Const.h"

static CGFloat const titleH = 44;

static CGFloat const MaxScale = 1.2;

@interface HomeMenuViewController ()<UIScrollViewDelegate>

@property (nonatomic,strong)UIScrollView *titleScrollView;

@property (nonatomic,strong)UIScrollView *contentScrollView;

@property (nonatomic,strong)NSArray *titlesArr;

@property (nonatomic,strong)NSMutableArray *buttons;

@property (nonatomic,strong)UIButton *selectedBtn;

@property (nonatomic,strong)UIImageView *imageBackView;

@end

@implementation HomeMenuViewController

#pragma mark - lazy loading
-(NSMutableArray *)buttons{
    if (!_buttons){
        _buttons = [NSMutableArray array];
        
    }
    return _buttons;
}

-(NSArray *)titlesArr{
    if (!_titlesArr){
        _titlesArr=[NSArray arrayWithObjects:@"精选",@"关注",@"送女票",@"海淘",@"创意生活",@"送基友",@"送爸妈",@"送同事",@"设计感",@"文艺风",@"奇葩搞怪",@"科技范",@"数码",@"萌萌哒",@"爱读书", nil];
    }
    return _titlesArr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.automaticallyAdjustsScrollViewInsets=NO;
    
    self.contentScrollView.contentSize=CGSizeMake(self.titlesArr.count*ScreenW, 0);
    
    self.contentScrollView.showsHorizontalScrollIndicator=NO;
    self.contentScrollView.pagingEnabled=YES;
    self.contentScrollView.delegate=self;
}

#pragma mark -private
-(void)addChildViewController:(UIViewController *)childController{
    for (int i=0;i<self.titlesArr.count;i++){
        
    }
}



@end
