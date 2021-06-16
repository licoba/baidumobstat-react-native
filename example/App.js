/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow strict-local
 */

import React from 'react';
import type {Node} from 'react';
import {StyleSheet, Text, useColorScheme, View, Button} from 'react-native';

import BaiduMobStat from 'react-native-tmk-baidumobstat';

import {Colors} from 'react-native/Libraries/NewAppScreen';

const App: () => Node = () => {
  const setUserId = () => {
    console.log('===> 点击了 testUserId');
    BaiduMobStat.setUserId('testUserId');
  };

  const setGlobalExtraInfo = () => {
    BaiduMobStat.setGlobalExtraInfo({
      V1: 'value1',
      V2: 'value2',
    });
  };
  const onEvent = () => {
    BaiduMobStat.onEvent('event1', '事件一');
  };

  const onEventDuration = () => {
    BaiduMobStat.onEventDuration('event2', '事件二', 1000);
  };

  const onEventStart = () => {
    BaiduMobStat.onEventStart('event3', '事件三');
  };

  const onEventEnd = () => {
    BaiduMobStat.onEventEnd('event3', '事件三');
  };

  const onEventWithAttributes = () => {
    BaiduMobStat.onEventWithAttributes('event4', '事件四', {分类: '分类一'});
  };

  const onEventWithAttributesDuration = () => {
    BaiduMobStat.onEventDurationWithAttributes('event5', '事件五', 1000, {
      分类: '分类一',
    });
  };

  const onEventStartAttribute = () => {
    BaiduMobStat.onEventStart('event6', '事件六');
  };

  const onEventEndWithAttributes = () => {
    BaiduMobStat.onEventEndWithAttributes('event6', '事件六', {
      分类: '分类一',
    });
  };

  const onPageStart = () => {
    BaiduMobStat.onPageStart('页面一');
  };

  const onPageEnd = () => {
    BaiduMobStat.onPageEnd('页面一');
  };

  return (
    <View style={styles.container}>
      <Button onPress={() => setUserId()} title="设置userId" />
      <Button onPress={() => setGlobalExtraInfo()} title="设置ExtraInfo" />
      <Button onPress={() => onEvent()} title="事件一" />
      <Button onPress={() => onEventDuration()} title="事件二" />
      <Button onPress={() => onEventStart()} title="事件三开始" />
      <Button onPress={() => onEventEnd()} title="事件三结束" />
      <Button
        onPress={() => onEventWithAttributes()}
        title="事件四（带属性）"
      />
      <Button onPress={() => onEventWithAttributesDuration()} title="事件五" />
      <Button
        onPress={() => onEventStartAttribute()}
        title="事件六开始（带属性）"
      />
      <Button
        onPress={() => onEventEndWithAttributes()}
        title="事件六结束（带属性）"
      />
      <Button onPress={() => onPageStart()} title="页面开始" color="#841584" />
      <Button onPress={() => onPageEnd()} title="页面结束" color="#841584" />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});

export default App;
