//
//  HomePageController.m
//  Gift
//
//  Created by Silence on 16/11/21.
//  Copyright © 2016年 Silence. All rights reserved.
//

#import "HomePageController.h"
#import "HomePageScrollModel.h"

@interface HomePageController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong)UITableView *tabView;
@property (nonatomic,strong)HomePageScrollModel *model;

@end

@implementation HomePageController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor cyanColor];
    
    [self downloadScrollData];
}

-(void)downloadScrollData{
    //http://api.liwushuo.com/v2/banners
    NSString *urlString=@"http://api.liwushuo.com/v2/banners";
    
    [GiftDowloader downloadWithUrlString:urlString seccess:^(NSData *data) {
        
        //JSON 解析
        NSError *error=nil;
        HomePageScrollModel *model=[[HomePageScrollModel alloc] initWithData:data error:&error];
        if (error){
            NSLog(@"%@",error);
        }else{
            
            self.model=model;
            
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.tabView reloadData];
            });
            
        }
        
    } fail:^(NSError *error) {
        NSLog(@"%@",error);
    }];
}

-(void)createTableView{
    
    self.automaticallyAdjustsScrollViewInsets=NO;
    self.tabView=[[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    self.tabView.delegate=self;
    self.tabView.dataSource=self;
    
    [self.view addSubview:self.tabView];
    
    //约束
    __weak typeof(self) weakSelf=self;
    [self.tabView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(weakSelf.view).insets(UIEdgeInsetsMake(64, 0, 49, 0));
    }];
    
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

#pragma mark - UItableView 的代理

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.model.data.banners.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 0;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return [[UITableViewCell alloc] init];
}

@end
