//
//  SJEasyBlankView.m
//  Expecta
//
//  Created by weibiao li on 2018/4/8.
//

#import "SJEasyBlankView.h"
#import "objc/runtime.h"
@interface SJEasyBlankView()
    /** <#digest#> */
    @property (weak, nonatomic) UIButton *reloadBtn;
    /** <#digest#> */
    @property (weak, nonatomic) UIImageView *imageView;
    /** <#digest#> */
    @property (weak, nonatomic) UILabel *tipLabel;
    /** <#digest#> */
    @property (nonatomic, copy) void(^reloadBlock)(UIButton *sender);
@end

@implementation SJEasyBlankView
    
    

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
//        [self.tipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//            
//            make.centerX.offset(0);
//            make.left.right.equalTo(self.imageView);
//            make.top.mas_offset(frame.size.height * 0.2);
//            
//        }];
//        
//        [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
//            
//            make.top.mas_equalTo(self.tipLabel.mas_bottom).offset(10);
//            make.centerX.offset(0);
//        }];
//        
//        [self.reloadBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            
//            make.centerX.offset(0);
//            make.top.mas_equalTo(self.imageView.mas_bottom).offset(10);
//            make.left.right.equalTo(self.imageView);
//            make.height.mas_equalTo(44);
//        }];
    }
    return self;
}
    -(void)configWithType:(SJEasyBlankPageViewType)type  reloadButtonBlock:(void(^)(UIButton *sender))block{
        switch (type) {
            case SJEasyBlankPageViewTypeNoData:{//无数据
                self.tipLabel.text = @"暂无数据";
                self.imageView.image = [UIImage imageNamed:@"aaaa"];
                
            }
            break;
            case SJEasyBlankPageViewTypeNoNet:{//无网络
                self.tipLabel.text = @"暂无数据";
                self.imageView.image = [UIImage imageNamed:@"aaaa"];
            }
            break;
            case SJEasyBlankPageViewTypeError:{//有错误
                self.tipLabel.text = @"未知错误";
                self.imageView.image = [UIImage imageNamed:@"aaaa"];
            }
            break;
            default:{
                 [self removeFromSuperview];
            }
            break;
        }
    }
@end



static char BlankPageViewKey;
@implementation  UIView (SJConfigueBlank)
    - (void)setBlankPageView:(SJEasyBlankView *)blankPageView{
        objc_setAssociatedObject(self, &BlankPageViewKey,
                                 blankPageView,
                                 OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
- (SJEasyBlankView *)blankPageView{
    return objc_getAssociatedObject(self, &BlankPageViewKey);
}
-(void)configBlackPage:(SJEasyBlankPageViewType)type  reloadButtonBlock:(void(^)(UIButton *sender))block{
    

    switch (type) {
        case SJEasyBlankPageViewTypeNormal:{//正常
            if (self.blankPageView) {
                self.blankPageView.hidden = YES;
                [self.blankPageView removeFromSuperview];
            }
        }
        break;
        default:{
            if (!self.blankPageView) {
                self.blankPageView = [[SJEasyBlankView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))];
            }
            self.blankPageView.hidden = NO;
            [self addSubview:self.blankPageView];
            [self.blankPageView configWithType:type reloadButtonBlock:block];
        }
        break;
    }
    
    
}
@end


