//
//  BaseNetManager.h
//  53KF
//
//  Created by Albert on 2016/11/30.
//  Copyright © 2016年 Albert. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseNetManager : NSObject

/**
 对AFHTTPSessionManager的GET请求方法进行了封装

 @param path     请求的路径，即 ? 前面部分
 @param params   参数
 @param complete 完成回调

 @return dataTask
 */
+ (id)GET:(NSString *)path parameters:(NSDictionary *)params completionHandler:(void(^)(id responseObj, NSError *error))complete;

/**
 对AFHTTPSessionManager的POST请求方法进行了封装
 
 @param path     请求的路径，即 ? 前面部分
 @param params   参数
 @param complete 完成回调
 
 @return dataTask
 */
+ (id)POST:(NSString *)path parameters:(NSDictionary *)params completionHandler:(void(^)(id responseObj, NSError *error))complete;

/**
 异步下载

 @param path                  文件网络地址
 @param downloadProgressBlock 进度回调
 @param destination           存放位置
 @param completionHandler     完成回调
 */
+ (void)downloadWithPath:(NSString *)path
                progress:(void(^)(NSProgress *downloadProgress))downloadProgressBlock
             destination:(NSURL * (^)(NSURL *targetPath, NSURLResponse *response))destination
       completionHandler:(void(^)(NSURLResponse *response, NSURL *filePath, NSError *error))completionHandler;

/**
 为了应付某些服务器对于中文字符串不支持的情况，需要转化字符串为带有%号形势

 @param path   请求的路径，即 ? 前面部分
 @param params 请求的参数，即 ? 号后面部分

 @return 转化 路径+参数 拼接出的字符串中的中文为 % 号形式
 */
+ (NSString *)percentPathWithPath:(NSString *)path params:(NSDictionary *)params;

@end
