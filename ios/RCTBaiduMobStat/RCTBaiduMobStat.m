//
//  RCTBaiduMobStat.m
//  RCTBaiduMobStat
//
//  Created by Rurui Ye on 18/07/2017.
//  Copyright © 2017 Rurui Ye. All rights reserved.
//

#import "RCTBaiduMobStat.h"
#import <React/RCTLog.h>

@implementation RCTBaiduMobStat

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(setUserId:(NSString *)userId) {
    [[BaiduMobStat defaultStat] setUserId:userId];
}

RCT_EXPORT_METHOD(initBaiduMobStat:(NSString *)appId debugOn:(BOOL)debugOn) {
    NSString *deviceId =[[BaiduMobStat defaultStat] getTestDeviceId];
    NSLog(@"[BaiduMobStat]:调试设备ID：%@",deviceId); // 调试设备ID：0CA630FC78C5D350B2A242842C9A9353
    [[BaiduMobStat defaultStat] setChannelId:@"Apple Store"];
    [[BaiduMobStat defaultStat] setEnableDebugOn:debugOn];
    [[BaiduMobStat defaultStat] setEnableEventAutoTrack:false]; // 设置控件点击event事件是否监控
    [[BaiduMobStat defaultStat] startWithAppId:appId];
}

RCT_EXPORT_METHOD(setGlobalExtraInfo:(NSDictionary *)extraDictionary) {
    BaiduMobStatExtraInfo *extraInfo = [[BaiduMobStatExtraInfo alloc] init];
    for (NSString *key in extraDictionary) {
        NSString *value = [extraDictionary objectForKey:key];
        if (![key length] || ![value length]) {
            continue;
        }
        if ([key isEqualToString:@"V1"]) {
            extraInfo.v1 = value;
        } else if ([key isEqualToString:@"V2"]) {
            extraInfo.v2 = value;
        } else if ([key isEqualToString:@"V3"]) {
            extraInfo.v3 = value;
        } else if ([key isEqualToString:@"V4"]) {
            extraInfo.v4 = value;
        } else if ([key isEqualToString:@"V5"]) {
            extraInfo.v5 = value;
        } else if ([key isEqualToString:@"V6"]) {
            extraInfo.v6 = value;
        } else if ([key isEqualToString:@"V7"]) {
            extraInfo.v7 = value;
        } else if ([key isEqualToString:@"V8"]) {
            extraInfo.v8 = value;
        } else if ([key isEqualToString:@"V9"]) {
            extraInfo.v9 = value;
        } else if ([key isEqualToString:@"V10"]) {
            extraInfo.v10 = value;
        }
    }
    [[BaiduMobStat defaultStat] setGlobalExtraInfo:extraInfo];
}

RCT_EXPORT_METHOD(onEvent:(NSString *)eventId eventLabel:(NSString *)eventLabel) {
    [[BaiduMobStat defaultStat] logEvent:eventId eventLabel: eventLabel];
}

RCT_EXPORT_METHOD(onEventDuration:(NSString *)eventId eventLabel:(NSString *)eventLabel durationTime:(nonnull NSNumber *)duration) {
    [[BaiduMobStat defaultStat] logEventWithDurationTime:eventId eventLabel: eventLabel durationTime:[duration unsignedLongValue]];
}


RCT_EXPORT_METHOD(onEventStart:(NSString *)eventId eventLabel:(NSString *)eventLabel) {
    [[BaiduMobStat defaultStat] eventStart:eventId eventLabel: eventLabel];
}


RCT_EXPORT_METHOD(onEventEnd:(NSString *)eventId eventLabel:(NSString *)eventLabel) {
    [[BaiduMobStat defaultStat] eventEnd:eventId eventLabel: eventLabel];
}


RCT_EXPORT_METHOD(onEventWithAttributes:(NSString *)eventId eventLabel:(NSString *)eventLabel attributes:(NSDictionary *)attributes) {
    [[BaiduMobStat defaultStat] logEvent:eventId eventLabel: eventLabel attributes:attributes];
}


RCT_EXPORT_METHOD(onEventDurationWithAttributes:(NSString *)eventId eventLabel:(NSString *)eventLabel durationTime:(nonnull NSNumber *)duration attributes:(NSDictionary *)attributes) {
    [[BaiduMobStat defaultStat] logEventWithDurationTime:eventId eventLabel: eventLabel durationTime:[duration unsignedLongValue] attributes:attributes];
}


RCT_EXPORT_METHOD(onEventEndWithAttributes:(NSString *)eventId eventLabel:(NSString *)eventLabel attributes:(NSDictionary *)attributes) {
    [[BaiduMobStat defaultStat] logEvent:eventId eventLabel: eventLabel attributes:attributes];
}


RCT_EXPORT_METHOD(onPageStart:(NSString *)name) {
    [[BaiduMobStat defaultStat] pageviewStartWithName:name];
}


RCT_EXPORT_METHOD(onPageEnd:(NSString *)name) {
    [[BaiduMobStat defaultStat] pageviewEndWithName:name];
}
@end
