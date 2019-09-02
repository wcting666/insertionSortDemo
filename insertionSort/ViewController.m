//
//  ViewController.m
//  insertionSort
//
//  Created by Wcting on 2019/9/2.
//  Copyright © 2019年 EJIAJX_wct. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *arr = [NSMutableArray arrayWithArray:@[@5,@2,@6,@9,@1,@3,@8,@7,@4,@6]];
    [self insertionSort:arr];
    NSLog(@"arrSort:%@",arr);
}
//插入排序
- (void)insertionSort:(NSMutableArray *)arr
{
    int n = arr.count;
    for (int i=1; i<n; ++i) {
        int key = [arr[i] intValue];//待比较的数
        int j = i-1;
        /* Move elements of arr[0..i-1], that are greater than key, to one position ahead of their current position */
        while (j>=0 && [arr[j] intValue] > key) {
            arr[j+1] = arr[j];
            j = j-1;
            
        }
        arr[j+1] = [NSNumber numberWithInt:key];
        
    }
    
}

@end
