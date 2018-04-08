//
//  SJEasyBlankView.h
//  Expecta
//
//  Created by weibiao li on 2018/4/8.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, SJEasyBlankPageViewType) {
    SJEasyBlankPageViewTypeNormal,
    SJEasyBlankPageViewTypeNoData,
    SJEasyBlankPageViewTypeNoNet,
    SJEasyBlankPageViewTypeError,
};

typedef enum : NSUInteger {
    LMJEasyBlankPageViewTypeNoData
} LMJEasyBlankPageViewType;



@interface SJEasyBlankView : UIView

-(void)configWithType:(SJEasyBlankPageViewType)type  reloadButtonBlock:(void(^)(UIButton *sender))block;
    
@end

@interface UIView (SJConfigueBlank)
    -(void)configBlackPage:(SJEasyBlankPageViewType)type  reloadButtonBlock:(void(^)(UIButton *sender))block;
@end
