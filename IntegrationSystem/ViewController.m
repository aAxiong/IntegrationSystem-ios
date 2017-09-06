//
//  ViewController.m
//  poker
//
//  Created by baifoxs on 2017/3/11.
//  Copyright © 2017年 me.poker. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


// Override to allow orientations other than the default portrait orientation.
// This method is deprecated on ios6

//-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:/
//(UIWebViewNavigationType)navigationType{
  //  NSString * urlString =  [[request URL] absoluteString];
  //  NSLog(@"urlString:%@",urlString);
   // if([@"IOS" isEqualToString:request.URL.scheme]){
   //     NSString *url = request.URL.absoluteString;
   //     NSRange range = [url rangeOfString:@":"];
   //     NSString *method = [request.URL.absoluteString substringFromIndex:range.location+1];
  //      SEL selector = NSSelectorFromString(method);
 //       if([self respondsToSelector:selector]){
  //          [self performSelector:selector];
 //       }
   //     return NO;
  //  }
  //  return YES;
//}

//- (void)shareToTest {
 //   NSLog(@"刷新");
 //   [webView reload];

        // Dispose of any resources that can be recreated.å
//}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0) {
       webView= [[UIWebView alloc]initWithFrame:CGRectMake(0.0f,0.0f,self.view.bounds.size.width,self.view.bounds.size.height)];
    }
    else {
      webView= [[UIWebView alloc]initWithFrame:CGRectMake(0.0f,0.0f,self.view.bounds.size.height,self.view.bounds.size.width)];
    }
    
    //initWithFrame:self.view.frame]
    //#ifdef __IPHONE_8_0
            //#endif
    
    
    
    //webView= [[UIWebView alloc]initWithFrame:CGRectMake(0.0f,0.0f,self.view.bounds.size.height,self.view.bounds.size.width)];
    webView.scalesPageToFit = YES;
    
    NSString *meta = [NSString stringWithFormat:@"document.getElementsByName(\"viewport\")[0].content = \"width=%f, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no\"", webView.frame.size.width];
    [webView stringByEvaluatingJavaScriptFromString:meta];
    
    NSString * mainBundlePath = [[NSBundle mainBundle] bundlePath];
    NSString * basePath = [NSString stringWithFormat:@"%@/ass",mainBundlePath];
    NSURL * baseURL = [NSURL fileURLWithPath:basePath isDirectory:YES];
    NSLog(@"baseURL:%@",baseURL);
    
    NSString * htmlPath = [NSString stringWithFormat:@"%@/index.html",basePath];
    NSString * htmlString = [NSString stringWithContentsOfFile:htmlPath
             encoding:NSUTF8StringEncoding
             error:nil];
    [webView loadHTMLString:htmlString baseURL:baseURL];
    [self.view addSubview:webView];
    
    
    
    // self.tableView.isScrollEnabled = false;
    
    
    
    webView.delegate = self;
    
    for (id subview in webView.subviews)
        if ([[subview class] isSubclassOfClass: [UIScrollView class]])
            ((UIScrollView *)subview).bounces = NO;
    
    //After iOS 5
    webView.scrollView.bounces = NO;
    
    

    
   // webView.scrollView.scrollEnabled = NO;
    
    
   // UIWebView * webView = [[UIWebView alloc ] initWithFrame:self.view.bounds];
   // webView.dataDetectorTypes = UIDataDetectorTypeAll;
    
    //NSString * mainBundletDirectory = [[NSBundle mainBundle] bundlePath];
   // NSString * path = [[NSBundle mainBundle] pathForResource:@"assets" ofType:@"html"];
   // NSString * path =[[NSBundle mainBundle] bundlePath];
   // NSURL * baseURL = [NSURL fileURLWithPath:path];
    
    //NSString * htmlPath = [[NSBundle mainBundle] pathForResource:@"index1"
                                                       //   ofType:@"html"];
   // NSString * htmlCont = [NSString stringWithContentsOfFile:htmlPath
                                                //    encoding:NSUTF8StringEncoding
                                                    //  error:nil];
  //  [self.view addSubview:webView];
    
  //  NSString *path = [[NSBundle mainBundle] bundlePath];
  //  NSURL *baseURL = [NSURL fileURLWithPath:path];
  //  NSString * htmlPath = [[NSBundle mainBundle] pathForResource:@"index1"
                                                        //  ofType:@"html"];
  //  NSString * htmlCont = [NSString stringWithContentsOfFile:htmlPath
                                                   // encoding:NSUTF8StringEncoding
                                                      // error:nil];
   // [self.view addSubview:webView loadHTMLString:htmlCont baseURL:baseURL];
    
    
    
   // NSURLRequest * request = [NSURLRequest requestWithURL:url];
   // webView.scalesPageToFit = YES;
    //[webView loadRequest:request];
    
   // [self.view addSubview:webView];
    
    
    // Do any additional setup after loading the view, typically from a nib.
    
  
     //uiwebview
  //  webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
  //  NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://demo.
    //bateersoft.cc/assets/index.html"]];
   // [self.view addSubview: webView];
    
    /*
    //webView= [[UIWebView alloc]initWithFrame:self.view.frame];
    //[webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://demo.bateersoft
     // .cc/assets/index.html"]]];
    //[self.view addSubview:webView];
    */
    
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.å
}




@end
