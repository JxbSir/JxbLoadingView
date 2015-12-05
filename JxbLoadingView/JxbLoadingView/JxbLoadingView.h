//
//  JxbLoadingView.h
//  TP
//
//  Created by Peter on 15/11/27.
//  Copyright © 2015年 VizLab. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface JxbLoadingView : UIView

/**
 *  回调block   callback block
 */
typedef void (^JxbLoadingCompleteBlock) ();

/**
 *  线条宽度
 */
@property (nonatomic,assign)CGFloat lineWidth;

/**
 *  线条颜色
 */
@property (nonatomic,copy  )UIColor *strokeColor;

/**
 *  开始 start
 */
- (void)startLoading;

/**
 *  结束，视图会被移除   end, view will be removed
 */
- (void)endLoading;

/**
 *  以成功结束动画    stop animation with a success
 *
 *  @param block 回调（callback）
 */
- (void)finishSuccess:(JxbLoadingCompleteBlock)block;

/**
 *  以失败结束动画    stop animation with a failure
 *
 *  @param block 回调（callback）
 */
- (void)finishFailure:(JxbLoadingCompleteBlock)block;
@end
