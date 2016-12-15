//
//  ViewController.m
//  RakeshDemoApp
//
//  Created by Satish Garlapati on 12/7/16.
//  Copyright © 2016 Satish Garlapati. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@property(nonatomic,strong) UIButton * someBtn;
@property(nonatomic,strong) UITextField * username;
@property(nonatomic,strong) UITextField * password;
@property(nonatomic,strong) UISwitch * swt;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [[UIColor alloc]initWithPatternImage:[UIImage imageNamed:@"12.jpg"]];
    [self callMeMethod];
    
    _someBtn = [[UIButton alloc]init];
    _someBtn.frame = CGRectMake(110, 260, 80, 40);
    [_someBtn setTitle:@"Submit" forState:UIControlStateNormal];
    [_someBtn addTarget:self action:@selector(BtnClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_someBtn];
    
    int z = [self whatEverYouWant:8];
    NSLog(@"%i",z);
    
    
    _username = [[UITextField alloc]init];
    _username.frame = CGRectMake(100, 160, 100, 30);
    _username.layer.borderColor = [UIColor redColor].CGColor;
    _username.backgroundColor = [UIColor whiteColor];
    _username.placeholder = @"username";
    [_username addTarget:self action:@selector(textMethod) forControlEvents:UIControlEventEditingDidEnd];
    [self.view addSubview:_username];
    
    _password = [[UITextField alloc]init];
    _password.frame = CGRectMake(100, 220, 100, 30);
    _password.layer.borderColor = [UIColor redColor].CGColor;
    _password.backgroundColor = [UIColor whiteColor];
    _password.placeholder = @"password";
    _password.secureTextEntry = YES;
    [self.view addSubview:_password];
    
//    _swt = [[UISwitch alloc]initWithFrame:CGRectMake(240, 60, 60, 40)];
//    [_swt addTarget:self action:@selector(switchMethod) forControlEvents:UIControlEventValueChanged];
//    [self.view addSubview:_swt];
    
}

-(void)switchMethod {
    if(_swt.on == YES){
        self.view.backgroundColor = [[UIColor alloc]initWithPatternImage:[UIImage imageNamed:@"Unknown.jpg"]];
    }else {
    self.view.backgroundColor = [UIColor orangeColor];
    }
    
}

-(void) textMethod {
    self.view.backgroundColor = [UIColor yellowColor];

    NSLog(@"editing ended");
    
}

-(int) whatEverYouWant: (int) localName {
    return localName*30;
}


-(void) BtnClicked{
        
    //self.view.backgroundColor = [[UIColor alloc]initWithPatternImage:[UIImage imageNamed:@"Unknown.jpg"]];
    }
    
//    if (self.view.backgroundColor == [UIColor redColor]) {
//        self.view.backgroundColor = [UIColor blueColor];
//    }else
//    {
//        self.view.backgroundColor = [UIColor redColor];
//    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)callMeMethod{
    
    
    NSString * name = @"Rakesh";
    NSLog(@"%@", name);
    [self secondMethod];
    
}

-(void)secondMethod {
    
    
    
    
}

@end
