//
//  CustomTableViewController.m
//  CustomTableViewViewLayout
//
//  Created by Nikunj on 8/15/18.
//  Copyright © 2018 Nikunj. All rights reserved.
//

#import "CustomTableViewController.h"
@interface NameCell :UITableViewCell // first Cell

@property (weak, nonatomic) IBOutlet UILabel *recmended;
@property (weak, nonatomic) IBOutlet UILabel *cmpprice;
@property (weak, nonatomic) IBOutlet UILabel *cmpName;
@end

@implementation NameCell
@end

@interface desCell : UITableViewCell // Second Cell

@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;
@property (weak, nonatomic) IBOutlet UILabel *label4;
@property (weak, nonatomic) IBOutlet UILabel *label5;
@property (weak, nonatomic) IBOutlet UILabel *label6;
@property (weak, nonatomic) IBOutlet UILabel *label7;
@property (weak, nonatomic) IBOutlet UILabel *label8;
@property (weak, nonatomic) IBOutlet UILabel *label9;
@property (weak, nonatomic) IBOutlet UILabel *label10;

@end

@implementation desCell

@end
@interface CustomTableViewController ()
@property (weak, nonatomic) IBOutlet UITableView *secondTableView;
@property (weak, nonatomic) IBOutlet UITableView *firstTableView;

@end

@implementation CustomTableViewController
{
    NSArray *dataArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    dataArray = [[NSArray alloc]initWithObjects:@"TCS",@"SBI",@"YESBank",@"HDFC",@"TATASteel",@"ABB",
    @"ACC",
    @"ABCAPITAL",
    @"AMBUJACEM",
    @"ASHOKLEY",
    @"AUROPHARMA",
    @"DMART",
    @"BANKBARODA",
    @"BEL",
    @"BHEL",
    @"BOSCHLTD",
    @"BRITANNIA",
    @"CADILAHC",
    @"COLPAL",
    @"CONCOR",
    @"CUMMINSIND",
    @"DLF",
    @"DABUR",
    @"EMAMILTD",nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [dataArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView == _firstTableView) {
        NameCell *cell = [_firstTableView dequeueReusableCellWithIdentifier:@"NameCell"];
            cell.cmpName.text= [dataArray objectAtIndex:indexPath.row];
        cell.cmpprice.text = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
            cell.recmended.text = @"BUY";
        
        return cell;
    }
    else
    {
        desCell *cell = [_secondTableView dequeueReusableCellWithIdentifier:@"desCell"];
            cell.label1.text = [NSString stringWithFormat:@"lbl1%ld",(long)indexPath.row];;
            cell.label2.text = [NSString stringWithFormat:@"lbl2%ld",(long)indexPath.row];;
            cell.label3.text = [NSString stringWithFormat:@"lbl3%ld",(long)indexPath.row];;
            cell.label4.text = [NSString stringWithFormat:@"lbl4%ld",(long)indexPath.row];;
            cell.label5.text = [NSString stringWithFormat:@"lbl5%ld",(long)indexPath.row];;
            cell.label6.text = [NSString stringWithFormat:@"lbl6%ld",(long)indexPath.row];;
            cell.label7.text = [NSString stringWithFormat:@"lbl7%ld",(long)indexPath.row];;
            cell.label8.text = [NSString stringWithFormat:@"lbl8%ld",(long)indexPath.row];;
            cell.label9.text = [NSString stringWithFormat:@"lbl9%ld",(long)indexPath.row];;
            cell.label10.text = [NSString stringWithFormat:@"lbl10%ld",(long)indexPath.row];;
        
        return cell;
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 55; 
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView;
{
    //[_badgeView1 removeFromSuperview];
    UITableView *mixTable = nil;
    if (self.firstTableView == scrollView) {
        mixTable = self.secondTableView;
    } else if (self.secondTableView == scrollView) {
        mixTable = self.firstTableView;
    }
    
    [mixTable setContentOffset:scrollView.contentOffset];
}

@end
