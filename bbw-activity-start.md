# BBW活动服务


**简介**:BBW活动服务


**HOST**:test23.wolxf.com


**联系人**:


**Version**:V2.0


**接口路径**:/activity/v2/api-docs


[TOC]






# Feign调用-VIP活动配置


## 修改VIP等级配置触发奖励更新


**接口地址**:`/activity,/activity/activity/remote/vip/auto/save`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>修改VIP等级配置触发奖励更新</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


# Feign调用-活动相关接口


## 获取活动配置信息


**接口地址**:`/activity,/activity/activity/remote/queryActivityDeposit`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>获取活动配置信息</p>



**请求示例**:


```javascript
{
  "activityId": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|ActivityInfoQuery|ActivityInfoQuery|
|&emsp;&emsp;activityId|活动ID 集合||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ActivityDepositDetailsRDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ActivityDepositDetailsRDTO|ActivityDepositDetailsRDTO|
|&emsp;&emsp;activityDesc|活动说明|string||
|&emsp;&emsp;activityName|活动名称|string||
|&emsp;&emsp;depositAmount|充值金额|integer(int64)||
|&emsp;&emsp;display|是否显示 0：隐藏；1：显示|boolean||
|&emsp;&emsp;endDate|结束日期|string(date-time)||
|&emsp;&emsp;gameTypeList|参与活动的游戏类型|array|integer|
|&emsp;&emsp;gameTypes|参与活动的游戏类型|string||
|&emsp;&emsp;giftAmount|赠送金额|integer(int64)||
|&emsp;&emsp;giftMaxAmount|最大赠送金额|integer(int64)||
|&emsp;&emsp;giftRate|赠送比例|number||
|&emsp;&emsp;giftType|赠送类型 0：固定金额；1：充值比率|integer(int32)||
|&emsp;&emsp;id|活动ID|integer(int64)||
|&emsp;&emsp;levelList|用户等级集合|array|integer|
|&emsp;&emsp;levels|玩家等级|string||
|&emsp;&emsp;multipleNum|稽核倍数|integer(int32)||
|&emsp;&emsp;operator|操作人|string||
|&emsp;&emsp;paymentIdList|参数活动的支付通道|array|integer|
|&emsp;&emsp;paymentIds|参数活动的支付通道|string||
|&emsp;&emsp;specified|指定金额赠送配置|string||
|&emsp;&emsp;startDate|开始日期|string(date-time)||
|&emsp;&emsp;status|活动状态： 1-开启，2-关闭|integer(int32)||
|&emsp;&emsp;targetType|目标类型；1：全部用户；2：用户等级|integer(int32)||
|&emsp;&emsp;times|允许参与次数 0:首充；1：不限制|integer(int32)||
|&emsp;&emsp;updateTime|更新时间|string(date-time)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"activityDesc": "",
		"activityName": "",
		"depositAmount": 0,
		"display": true,
		"endDate": "",
		"gameTypeList": [],
		"gameTypes": "",
		"giftAmount": 0,
		"giftMaxAmount": 0,
		"giftRate": 0,
		"giftType": 0,
		"id": 0,
		"levelList": [],
		"levels": "",
		"multipleNum": 0,
		"operator": "",
		"paymentIdList": [],
		"paymentIds": "",
		"specified": "",
		"startDate": "",
		"status": 0,
		"targetType": 0,
		"times": 0,
		"updateTime": ""
	},
	"isSuccess": true,
	"message": ""
}
```


## 获取充值活动配置信息


**接口地址**:`/activity,/activity/activity/remote/queryActivityDepositConfig/{activityId}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>获取充值活动配置信息</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|activityId|activityId|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ActivityDepositConfigModel»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ActivityDepositConfigModel|ActivityDepositConfigModel|
|&emsp;&emsp;activityId||integer(int64)||
|&emsp;&emsp;channelModeId||string||
|&emsp;&emsp;channelModeNames||string||
|&emsp;&emsp;createBy||integer(int64)||
|&emsp;&emsp;createTime||string(date-time)||
|&emsp;&emsp;depositAmount||integer(int64)||
|&emsp;&emsp;gameTypeNames||string||
|&emsp;&emsp;gameTypes||string||
|&emsp;&emsp;giftAmount||integer(int64)||
|&emsp;&emsp;giftMaxAmount||integer(int64)||
|&emsp;&emsp;giftRate||number||
|&emsp;&emsp;giftType||integer(int32)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;levels||string||
|&emsp;&emsp;levelsNames||string||
|&emsp;&emsp;multipleNum||integer(int32)||
|&emsp;&emsp;paymentModeId||string||
|&emsp;&emsp;paymentModeNames||string||
|&emsp;&emsp;specified||string||
|&emsp;&emsp;targetType||integer(int32)||
|&emsp;&emsp;times||integer(int32)||
|&emsp;&emsp;updateBy||integer(int64)||
|&emsp;&emsp;updateTime||string(date-time)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"activityId": 0,
		"channelModeId": "",
		"channelModeNames": "",
		"createBy": 0,
		"createTime": "",
		"depositAmount": 0,
		"gameTypeNames": "",
		"gameTypes": "",
		"giftAmount": 0,
		"giftMaxAmount": 0,
		"giftRate": 0,
		"giftType": 0,
		"id": 0,
		"levels": "",
		"levelsNames": "",
		"multipleNum": 0,
		"paymentModeId": "",
		"paymentModeNames": "",
		"specified": "",
		"targetType": 0,
		"times": 0,
		"updateBy": 0,
		"updateTime": ""
	},
	"isSuccess": true,
	"message": ""
}
```


## 获取体验金活动校验配置


**接口地址**:`/activity,/activity/activity/remote/queryExperienceVerify`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>获取体验金活动校验配置</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ExperienceBonusVerifyConfigWapDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ExperienceBonusVerifyConfigWapDTO|ExperienceBonusVerifyConfigWapDTO|
|&emsp;&emsp;verifyPhoneStatus|校验手机号配置 1开启 2关闭|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"verifyPhoneStatus": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# Feign调用-站内信相关接口


## 发送单条站内信


**接口地址**:`/activity,/activity/activity/remote/msg/sendMsgSingle`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>发送单条站内信</p>



**请求示例**:


```javascript
{
  "content": "",
  "customerId": 0,
  "previewContent": "",
  "title": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|SendMessageSingleCmd|SendMessageSingleCmd|
|&emsp;&emsp;content|内容||false|string||
|&emsp;&emsp;customerId|会员编码||false|integer(int64)||
|&emsp;&emsp;previewContent|预览内容||false|string||
|&emsp;&emsp;title|标题||false|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 发送单条站内信


**接口地址**:`/activity,/activity/activity/remote/msg/sendMsgSingleWithExpireTime`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>发送单条站内信</p>



**请求示例**:


```javascript
{
  "content": "",
  "customerId": 0,
  "expireTime": 0,
  "previewContent": "",
  "title": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|SendMessageSingleWithExpireTimeCmd|SendMessageSingleWithExpireTimeCmd|
|&emsp;&emsp;content|内容||false|string||
|&emsp;&emsp;customerId|会员编码||false|integer(int64)||
|&emsp;&emsp;expireTime|过期时间||false|integer(int64)||
|&emsp;&emsp;previewContent|预览内容||false|string||
|&emsp;&emsp;title|标题||false|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


# Feign调用-红包雨活动配置


## 修改VIP等级配置触发奖励更新


**接口地址**:`/activity,/activity/activity/remote/money/rain/auto/save`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>修改VIP等级配置触发奖励更新</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


# Feign调用-老带新相关接口


## 通过老带新注册发送站内信


**接口地址**:`/activity,/activity/activity/remote/recommend/msg/register`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>通过老带新注册发送站内信</p>



**请求示例**:


```javascript
{
  "inviteeAccount": "",
  "inviteeId": 0,
  "inviterAccount": "",
  "inviterId": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|SendRegisterMsgByRecommendCmd|SendRegisterMsgByRecommendCmd|
|&emsp;&emsp;inviteeAccount|||false|string||
|&emsp;&emsp;inviteeId|||false|integer(int64)||
|&emsp;&emsp;inviterAccount|||false|string||
|&emsp;&emsp;inviterId|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


# Feign调用-返水活动配置


## 获取当前活动比例配置


**接口地址**:`/activity,/activity/activity/remote/rebate/current/radio/list`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>获取当前活动比例配置</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«CurrentRebateRatioDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|CurrentRebateRatioDTO|
|&emsp;&emsp;gamePlatformId|游戏厂商ID|integer(int64)||
|&emsp;&emsp;gamePlatformNo|游戏厂商编码|string||
|&emsp;&emsp;gameTypeId|游戏类别ID|integer(int64)||
|&emsp;&emsp;gameTypeNo|游戏类别编码|string||
|&emsp;&emsp;rebateRatio|返水比例|number||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"gamePlatformId": 0,
			"gamePlatformNo": "",
			"gameTypeId": 0,
			"gameTypeNo": "",
			"rebateRatio": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


# Feign调用-首页banner相关接口


## 首页弹窗广告


**接口地址**:`/activity,/activity/activity/remote/home/queryAds`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>首页弹窗广告</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«AdsModel»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|AdsModel|
|&emsp;&emsp;content||string||
|&emsp;&emsp;createBy||integer(int64)||
|&emsp;&emsp;createTime||string(date-time)||
|&emsp;&emsp;endTime||integer(int64)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;linkAdr||string||
|&emsp;&emsp;linkId||integer(int64)||
|&emsp;&emsp;linkMethod||integer(int32)||
|&emsp;&emsp;linkType||integer(int32)||
|&emsp;&emsp;sort||integer(int32)||
|&emsp;&emsp;startTime||integer(int64)||
|&emsp;&emsp;status||integer(int32)||
|&emsp;&emsp;title||string||
|&emsp;&emsp;updateBy||integer(int64)||
|&emsp;&emsp;updateTime||string(date-time)||
|&emsp;&emsp;visible||integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"content": "",
			"createBy": 0,
			"createTime": "",
			"endTime": 0,
			"id": 0,
			"linkAdr": "",
			"linkId": 0,
			"linkMethod": 0,
			"linkType": 0,
			"sort": 0,
			"startTime": 0,
			"status": 0,
			"title": "",
			"updateBy": 0,
			"updateTime": "",
			"visible": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 首页banner


**接口地址**:`/activity,/activity/activity/remote/home/queryBanners`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>首页banner</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«BannerModel»»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|BannerModel|
|&emsp;&emsp;bannerName||string||
|&emsp;&emsp;clientType||integer(int32)||
|&emsp;&emsp;createBy||integer(int64)||
|&emsp;&emsp;createTime||string(date-time)||
|&emsp;&emsp;deleted||integer(int32)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;linkAdr||string||
|&emsp;&emsp;linkId||integer(int64)||
|&emsp;&emsp;linkMethod||integer(int32)||
|&emsp;&emsp;linkType||integer(int32)||
|&emsp;&emsp;pic||string||
|&emsp;&emsp;sort||integer(int32)||
|&emsp;&emsp;station||integer(int32)||
|&emsp;&emsp;updateBy||integer(int64)||
|&emsp;&emsp;updateTime||string(date-time)||
|&emsp;&emsp;visible||integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"bannerName": "",
			"clientType": 0,
			"createBy": 0,
			"createTime": "",
			"deleted": 0,
			"id": 0,
			"linkAdr": "",
			"linkId": 0,
			"linkMethod": 0,
			"linkType": 0,
			"pic": "",
			"sort": 0,
			"station": 0,
			"updateBy": 0,
			"updateTime": "",
			"visible": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 首页公告


**接口地址**:`/activity,/activity/activity/remote/home/queryBulletins`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>首页公告</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«BulletinModel»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|BulletinModel|
|&emsp;&emsp;bulletinLinkColor||string||
|&emsp;&emsp;bulletinLinkText||string||
|&emsp;&emsp;bulletinLinkUrl||string||
|&emsp;&emsp;bulletinType||integer(int32)||
|&emsp;&emsp;content||string||
|&emsp;&emsp;createBy||integer(int64)||
|&emsp;&emsp;createTime||string(date-time)||
|&emsp;&emsp;endTime||integer(int64)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;linkAdr||string||
|&emsp;&emsp;linkId||integer(int64)||
|&emsp;&emsp;linkMethod||integer(int32)||
|&emsp;&emsp;linkType||integer(int32)||
|&emsp;&emsp;sort||integer(int32)||
|&emsp;&emsp;startTime||integer(int64)||
|&emsp;&emsp;status||integer(int32)||
|&emsp;&emsp;updateBy||integer(int64)||
|&emsp;&emsp;updateTime||string(date-time)||
|&emsp;&emsp;visible||integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"bulletinLinkColor": "",
			"bulletinLinkText": "",
			"bulletinLinkUrl": "",
			"bulletinType": 0,
			"content": "",
			"createBy": 0,
			"createTime": "",
			"endTime": 0,
			"id": 0,
			"linkAdr": "",
			"linkId": 0,
			"linkMethod": 0,
			"linkType": 0,
			"sort": 0,
			"startTime": 0,
			"status": 0,
			"updateBy": 0,
			"updateTime": "",
			"visible": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 查询社交分享配置


**接口地址**:`/activity,/activity/activity/remote/home/queryShareChatConfig`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询社交分享配置</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«ShareChatConfigModel»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|ShareChatConfigModel|
|&emsp;&emsp;chatName||string||
|&emsp;&emsp;createBy||integer(int64)||
|&emsp;&emsp;createTime||integer(int64)||
|&emsp;&emsp;enable||boolean||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;logo||string||
|&emsp;&emsp;shareUrl||string||
|&emsp;&emsp;sort||integer(int32)||
|&emsp;&emsp;type||integer(int32)||
|&emsp;&emsp;updateBy||integer(int64)||
|&emsp;&emsp;updateTime||integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"chatName": "",
			"createBy": 0,
			"createTime": 0,
			"enable": true,
			"id": 0,
			"logo": "",
			"shareUrl": "",
			"sort": 0,
			"type": 0,
			"updateBy": 0,
			"updateTime": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


# H5活动信息


## 查询活动状况


**接口地址**:`/activity,/activity/activity/wap/info`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询活动状况</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ActivityInfoWapDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ActivityInfoWapDTO|ActivityInfoWapDTO|
|&emsp;&emsp;currentTime|当前时间|integer(int64)||
|&emsp;&emsp;moneyRainSwitch|红包雨活动开关|boolean||
|&emsp;&emsp;next|红包雨下一轮时间|integer(int64)||
|&emsp;&emsp;redemptionCodeSwitch|兑换码活动开关|boolean||
|&emsp;&emsp;signing|可签到数量|integer(int32)||
|&emsp;&emsp;signingEndTime|签到活动结束时间|integer(int64)||
|&emsp;&emsp;vipBonus|VIP奖励数量（等级奖励、周奖励、月奖励数量、周返利）|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"currentTime": 0,
		"moneyRainSwitch": true,
		"next": 0,
		"redemptionCodeSwitch": true,
		"signing": 0,
		"signingEndTime": 0,
		"vipBonus": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 查询其他类型


**接口地址**:`/activity,/activity/activity/wap/others`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询其他类型</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«OthersInfoWapDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||OthersInfoWapDTO|OthersInfoWapDTO|
|&emsp;&emsp;depositDiscount|未领取优惠存入奖励数量|integer(int32)||
|&emsp;&emsp;total|数量总计|integer(int32)||
|&emsp;&emsp;unReadNums|未读数量|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"depositDiscount": 0,
		"total": 0,
		"unReadNums": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 根据活动编码查询活动信息


**接口地址**:`/activity,/activity/activity/wap/queryActivityByCode`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|code|活动编码|query|true|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ActivityWapDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ActivityWapDTO|ActivityWapDTO|
|&emsp;&emsp;status|活动状态 1-开启，2-关闭|integer(int32)||
|&emsp;&emsp;title|活动标题|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"status": 0,
		"title": ""
	},
	"isSuccess": true,
	"message": ""
}
```


# H5端-充值活动相关接口


## 获取会员充值活动


**接口地址**:`/activity,/activity/activity/wap/deposit/queryActivityDepositList`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>获取会员充值活动</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«ActivityDepositWapDTO»»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|ActivityDepositWapDTO|
|&emsp;&emsp;activityDesc|活动描述|string||
|&emsp;&emsp;activityId|活动ID|integer(int64)||
|&emsp;&emsp;activityName|活动名称|string||
|&emsp;&emsp;amount|充值金额|integer(int64)||
|&emsp;&emsp;channelId|充值通道ID|integer(int64)||
|&emsp;&emsp;modelId|充值方式ID|integer(int64)||
|&emsp;&emsp;paymentList|充值配置|array|ChannelModeDTO|
|&emsp;&emsp;&emsp;&emsp;channelId|充值通道ID|integer||
|&emsp;&emsp;&emsp;&emsp;modeId|充值方式ID|integer||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"activityDesc": "",
			"activityId": 0,
			"activityName": "",
			"amount": 0,
			"channelId": 0,
			"modelId": 0,
			"paymentList": [
				{
					"channelId": 0,
					"modeId": 0
				}
			]
		}
	],
	"isSuccess": true,
	"message": ""
}
```


# H5端-分享、邀请相关接口


## 老带新-成就奖页面接口


**接口地址**:`/activity,/activity/activity/wap/share/getAchieveList`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>老带新-成就奖页面接口</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ShareRecommendAchieveDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ShareRecommendAchieveDTO|ShareRecommendAchieveDTO|
|&emsp;&emsp;achieveList|成就奖配置信息|array|ShareRecommendAchieveScheduleDTO|
|&emsp;&emsp;&emsp;&emsp;bonus|邀请达标奖金|integer||
|&emsp;&emsp;&emsp;&emsp;inviteNum|邀请人数|integer||
|&emsp;&emsp;bonusList|会员已完成的成就奖信息|array|ShareRecommendAchieveBonusDTO|
|&emsp;&emsp;&emsp;&emsp;id|id|integer||
|&emsp;&emsp;&emsp;&emsp;inviteFinishNum|已邀请达标人数|integer||
|&emsp;&emsp;&emsp;&emsp;inviteNum|邀请人数|integer||
|&emsp;&emsp;&emsp;&emsp;status|奖励状态 -1未达标 0未领取 1已领取 2已发放|integer||
|&emsp;&emsp;logo|成就奖页面头部logo|string||
|&emsp;&emsp;totalFinishNum|总邀请达标人数|integer(int32)||
|&emsp;&emsp;totalInviteNum|总邀请人数|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"achieveList": [
			{
				"bonus": 0,
				"inviteNum": 0
			}
		],
		"bonusList": [
			{
				"id": 0,
				"inviteFinishNum": 0,
				"inviteNum": 0,
				"status": 0
			}
		],
		"logo": "",
		"totalFinishNum": 0,
		"totalInviteNum": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 老带新-获取代理等级配置


**接口地址**:`/activity,/activity/activity/wap/share/getAgentLevelInfo`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>老带新-获取代理等级配置</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«ShareAgentLevelConfigDTO»»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|ShareAgentLevelConfigDTO|
|&emsp;&emsp;agentLevel|代理排序|integer(int32)||
|&emsp;&emsp;agentTitle|代理等级名称|string||
|&emsp;&emsp;teamBets|团队投注|integer(int64)||
|&emsp;&emsp;teamDeposit|团队充值|integer(int64)||
|&emsp;&emsp;totalMembers|团队人数|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"agentLevel": 0,
			"agentTitle": "",
			"teamBets": 0,
			"teamDeposit": 0,
			"totalMembers": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 邀请记录


**接口地址**:`/activity,/activity/activity/wap/share/getInviteList`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>邀请记录</p>



**请求示例**:


```javascript
{
  "current": 0,
  "recordType": 0,
  "size": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|ActivityRecommendRecordQuery|ActivityRecommendRecordQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;recordType|记录类型 1:邀请合格奖金记录; 3:邀请注册奖金记录；4:邀请注册充值奖金记录；||false|integer(int32)||
|&emsp;&emsp;size|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ShareInvitationDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ShareInvitationDTO|ShareInvitationDTO|
|&emsp;&emsp;content|说明|string||
|&emsp;&emsp;inviteUsers|邀请注册人数|integer(int32)||
|&emsp;&emsp;invites|邀请记录|PageDTO«ShareRecommendInviteDTO»|PageDTO«ShareRecommendInviteDTO»|
|&emsp;&emsp;&emsp;&emsp;data||array|ShareRecommendInviteDTO|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;account|玩家账号|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;inviteeBonus|受邀人奖金|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;inviterBonus|邀请合格奖金/邀请注册奖金/邀请注册充值奖金|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;inviterId|邀请人ID|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;registerDate|玩家注册日期|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;taskStatus|任务完成状态|string||
|&emsp;&emsp;&emsp;&emsp;empty||boolean||
|&emsp;&emsp;&emsp;&emsp;notEmpty||boolean||
|&emsp;&emsp;&emsp;&emsp;pageIndex||integer||
|&emsp;&emsp;&emsp;&emsp;pageSize||integer||
|&emsp;&emsp;&emsp;&emsp;totalCount||integer||
|&emsp;&emsp;&emsp;&emsp;totalPages||integer||
|&emsp;&emsp;rechargeRecommendCount|邀请充值人数|integer(int32)||
|&emsp;&emsp;standardUsers|合格人数|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"content": "",
		"inviteUsers": 0,
		"invites": {
			"data": [
				{
					"account": "",
					"inviteeBonus": 0,
					"inviterBonus": 0,
					"inviterId": 0,
					"registerDate": "",
					"taskStatus": ""
				}
			],
			"empty": true,
			"notEmpty": true,
			"pageIndex": 0,
			"pageSize": 0,
			"totalCount": 0,
			"totalPages": 0
		},
		"rechargeRecommendCount": 0,
		"standardUsers": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 老带新-获取老带新首页信息(未登录)


**接口地址**:`/activity,/activity/activity/wap/share/getShareInfo`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>老带新-获取老带新首页信息(未登录)</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ShareInviteInfoDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ShareInviteInfoDTO|ShareInviteInfoDTO|
|&emsp;&emsp;achieveList|成就奖配置信息|array|ShareRecommendAchieveScheduleDTO|
|&emsp;&emsp;&emsp;&emsp;bonus|邀请达标奖金|integer||
|&emsp;&emsp;&emsp;&emsp;inviteNum|邀请人数|integer||
|&emsp;&emsp;achievementSwitch|成就奖金开关 1:开；2:关|integer(int32)||
|&emsp;&emsp;agentDepositConfigs|代理邀请充值返佣配置|array|AgentDepositConfigDTO|
|&emsp;&emsp;&emsp;&emsp;agentLevel|代理等级|integer||
|&emsp;&emsp;&emsp;&emsp;agentTitle|代理等级名称|string||
|&emsp;&emsp;&emsp;&emsp;level1DepositRate|一级充值返佣返水比例|number||
|&emsp;&emsp;&emsp;&emsp;level2DepositRate|二级充值返佣返水比例|number||
|&emsp;&emsp;&emsp;&emsp;level3DepositRate|三级充值返佣返水比例|number||
|&emsp;&emsp;&emsp;&emsp;level4DepositRate|四级充值返佣返水比例|number||
|&emsp;&emsp;agentInviterConfigs|代理邀请合格奖金配置|array|AgentInviterConfigDTO|
|&emsp;&emsp;&emsp;&emsp;agentLevel|代理等级|integer||
|&emsp;&emsp;&emsp;&emsp;agentTitle|代理等级名称|string||
|&emsp;&emsp;&emsp;&emsp;inviteeBonus|受邀人奖金|integer||
|&emsp;&emsp;&emsp;&emsp;inviterBonus|邀请人奖金|integer||
|&emsp;&emsp;agentRankConfig|代理排行版配置|array|number|
|&emsp;&emsp;agentRankSwitch|代理排行版开关 1:开；2:关|integer(int32)||
|&emsp;&emsp;agentRebateConfigs|代理邀请投注返佣配置|array|AgentRebateConfigDTO|
|&emsp;&emsp;&emsp;&emsp;agentLevel|代理等级|integer||
|&emsp;&emsp;&emsp;&emsp;agentTitle|代理等级名称|string||
|&emsp;&emsp;&emsp;&emsp;level1RebateRate|一级返水比例|number||
|&emsp;&emsp;&emsp;&emsp;level2RebateRate|二级返水比例|number||
|&emsp;&emsp;&emsp;&emsp;level3RebateRate|三级返水比例|number||
|&emsp;&emsp;&emsp;&emsp;level4RebateRate|四级返水比例|number||
|&emsp;&emsp;&emsp;&emsp;typeId|游戏类型ID|integer||
|&emsp;&emsp;&emsp;&emsp;typeName|游戏类别名称|string||
|&emsp;&emsp;&emsp;&emsp;typeNo|游戏类型编码|string||
|&emsp;&emsp;depositBonusSwitch|邀请注册充值奖金开关 1开 2关,默认关闭|integer(int32)||
|&emsp;&emsp;depositRebateRate|充值返佣比例|number||
|&emsp;&emsp;depositSwitch|充值返佣开关 1:开；2:关|integer(int32)||
|&emsp;&emsp;inviteDepositBonus|邀请注册充值奖金|integer(int64)||
|&emsp;&emsp;inviteRegisterBonus|邀请注册奖金|integer(int64)||
|&emsp;&emsp;inviteeBonus|受邀人奖金|integer(int64)||
|&emsp;&emsp;inviteeBonusCheck|受邀人奖金开关 1开 2关|integer(int32)||
|&emsp;&emsp;inviterBonus|邀请人奖金|integer(int64)||
|&emsp;&emsp;inviterBonusCheck|邀请人奖金开关 1开 2关|integer(int32)||
|&emsp;&emsp;level1RebateRate|一级返水比例|number||
|&emsp;&emsp;level2RebateRate|一级返水比例|number||
|&emsp;&emsp;level3RebateRate|一级返水比例|number||
|&emsp;&emsp;level4RebateRate|一级返水比例|number||
|&emsp;&emsp;limitIpCount|合格用户条件同ip限制数量|integer(int32)||
|&emsp;&emsp;limitIpCountSwitch|邀请同IP 开关 1:开；2:关|integer(int32)||
|&emsp;&emsp;minBet|最低打码金额|integer(int64)||
|&emsp;&emsp;minBetTotalCheck|最低打码金额开关 1开 2关|integer(int32)||
|&emsp;&emsp;minDeposit|最低充值金额|integer(int64)||
|&emsp;&emsp;minDepositTotalCheck|最低存款总额开关 1开 2关|integer(int32)||
|&emsp;&emsp;mobileValidCheck|是否验证手机号，1-开，2-关|integer(int32)||
|&emsp;&emsp;qualifiedGameTypes|合格用户游戏类型 多个都号隔开|string||
|&emsp;&emsp;qualifiedGameTypesAll|合格用户游戏类型 是否全部类型 true 是， false 不是|boolean||
|&emsp;&emsp;rebateSwitch|投注返水开关 1:开；2:关|integer(int32)||
|&emsp;&emsp;registerBonusSwitch|邀请注册奖金开关 1开 2关,默认关闭|integer(int32)||
|&emsp;&emsp;rewardSwitch|推荐奖励开关，1-开，2-关|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"achieveList": [
			{
				"bonus": 0,
				"inviteNum": 0
			}
		],
		"achievementSwitch": 0,
		"agentDepositConfigs": [
			{
				"agentLevel": 0,
				"agentTitle": "",
				"level1DepositRate": 0,
				"level2DepositRate": 0,
				"level3DepositRate": 0,
				"level4DepositRate": 0
			}
		],
		"agentInviterConfigs": [
			{
				"agentLevel": 0,
				"agentTitle": "",
				"inviteeBonus": 0,
				"inviterBonus": 0
			}
		],
		"agentRankConfig": [],
		"agentRankSwitch": 0,
		"agentRebateConfigs": [
			{
				"agentLevel": 0,
				"agentTitle": "",
				"level1RebateRate": 0,
				"level2RebateRate": 0,
				"level3RebateRate": 0,
				"level4RebateRate": 0,
				"typeId": 0,
				"typeName": "",
				"typeNo": ""
			}
		],
		"depositBonusSwitch": 0,
		"depositRebateRate": 0,
		"depositSwitch": 0,
		"inviteDepositBonus": 0,
		"inviteRegisterBonus": 0,
		"inviteeBonus": 0,
		"inviteeBonusCheck": 0,
		"inviterBonus": 0,
		"inviterBonusCheck": 0,
		"level1RebateRate": 0,
		"level2RebateRate": 0,
		"level3RebateRate": 0,
		"level4RebateRate": 0,
		"limitIpCount": 0,
		"limitIpCountSwitch": 0,
		"minBet": 0,
		"minBetTotalCheck": 0,
		"minDeposit": 0,
		"minDepositTotalCheck": 0,
		"mobileValidCheck": 0,
		"qualifiedGameTypes": "",
		"qualifiedGameTypesAll": true,
		"rebateSwitch": 0,
		"registerBonusSwitch": 0,
		"rewardSwitch": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 老带新-获取老带新首页信息(登录)


**接口地址**:`/activity,/activity/activity/wap/share/getShareInvite`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>老带新-获取老带新首页信息(登录)</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ShareInviteDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ShareInviteDTO|ShareInviteDTO|
|&emsp;&emsp;agentList|Agent major income|array|ShareInviteAgentDTO|
|&emsp;&emsp;&emsp;&emsp;bonus|赠送奖金|integer||
|&emsp;&emsp;&emsp;&emsp;type|类型：invite：邀请；bet：返水；register:邀请注册 ;deposit: 邀请注册充值；achieve：成就奖金；rebate：充值返佣|string||
|&emsp;&emsp;leaderboardList|Leaderboard|array|ShareInviteLeaderboardDTO|
|&emsp;&emsp;&emsp;&emsp;bonus|奖金|integer||
|&emsp;&emsp;&emsp;&emsp;inviteAccount|被邀请人账号|string||
|&emsp;&emsp;&emsp;&emsp;type|类型：invite：邀请；bet：返水；register:邀请注册 ;deposit: 邀请注册充值；achieve：成就奖金；rebate：充值返佣|string||
|&emsp;&emsp;level1RebateRate|一级返水比例|number||
|&emsp;&emsp;level2RebateRate|一级返水比例|number||
|&emsp;&emsp;level3RebateRate|一级返水比例|number||
|&emsp;&emsp;level4RebateRate|一级返水比例|number||
|&emsp;&emsp;revenueGoals|计算奖金|integer(int64)||
|&emsp;&emsp;rewardsList|Rewards|array|ShareInviteRewardsDTO|
|&emsp;&emsp;&emsp;&emsp;bonus|奖金|integer||
|&emsp;&emsp;&emsp;&emsp;peopleNum|人数|integer||
|&emsp;&emsp;&emsp;&emsp;type|类型：invite：邀请；bet：返水；register:邀请注册 ;deposit: 邀请注册充值；achieve：成就奖金；rebate：充值返佣|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"agentList": [
			{
				"bonus": 0,
				"type": ""
			}
		],
		"leaderboardList": [
			{
				"bonus": 0,
				"inviteAccount": "",
				"type": ""
			}
		],
		"level1RebateRate": 0,
		"level2RebateRate": 0,
		"level3RebateRate": 0,
		"level4RebateRate": 0,
		"revenueGoals": 0,
		"rewardsList": [
			{
				"bonus": 0,
				"peopleNum": 0,
				"type": ""
			}
		]
	},
	"isSuccess": true,
	"message": ""
}
```


## 分享、邀请


**接口地址**:`/activity,/activity/activity/wap/share/invite`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>分享、邀请</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ActivityShareInviteDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ActivityShareInviteDTO|ActivityShareInviteDTO|
|&emsp;&emsp;achieveCopywritings|成就奖文案|ActivityShareCopywritingDTO|ActivityShareCopywritingDTO|
|&emsp;&emsp;&emsp;&emsp;content|内容|string||
|&emsp;&emsp;&emsp;&emsp;copywritingNo|文案类型：invite：邀请；bet：返水|string||
|&emsp;&emsp;&emsp;&emsp;subTitle|副标题|string||
|&emsp;&emsp;&emsp;&emsp;title|标题|string||
|&emsp;&emsp;achieveSwitch|成就奖开关 1:开；2:关|integer(int32)||
|&emsp;&emsp;agentRankSwitch|充值返佣开关 1:开；2:关|integer(int32)||
|&emsp;&emsp;betCopywritings|返水文案|ActivityShareCopywritingDTO|ActivityShareCopywritingDTO|
|&emsp;&emsp;&emsp;&emsp;content|内容|string||
|&emsp;&emsp;&emsp;&emsp;copywritingNo|文案类型：invite：邀请；bet：返水|string||
|&emsp;&emsp;&emsp;&emsp;subTitle|副标题|string||
|&emsp;&emsp;&emsp;&emsp;title|标题|string||
|&emsp;&emsp;chatTools|分享社交工具|array|ChatToolsDTO|
|&emsp;&emsp;&emsp;&emsp;logo|Logo|string||
|&emsp;&emsp;&emsp;&emsp;shareUrl|分享URl|string||
|&emsp;&emsp;depositBonusSwitch|邀请注册充值奖金开关 1开 2关,默认关闭|integer(int32)||
|&emsp;&emsp;depositSwitch|充值返佣开关 1:开；2:关|integer(int32)||
|&emsp;&emsp;inviteCopywritings|邀请文案|ActivityShareCopywritingDTO|ActivityShareCopywritingDTO|
|&emsp;&emsp;&emsp;&emsp;content|内容|string||
|&emsp;&emsp;&emsp;&emsp;copywritingNo|文案类型：invite：邀请；bet：返水|string||
|&emsp;&emsp;&emsp;&emsp;subTitle|副标题|string||
|&emsp;&emsp;&emsp;&emsp;title|标题|string||
|&emsp;&emsp;inviteUrl|邀请连接|string||
|&emsp;&emsp;inviteUsers|邀请人数|integer(int32)||
|&emsp;&emsp;rebateSwitch|投注返水开关 1:开；2:关|integer(int32)||
|&emsp;&emsp;rechargeRecommendCount|邀请充值人数|integer(int32)||
|&emsp;&emsp;registerBonusSwitch|邀请注册奖金开关 1开 2关,默认关闭|integer(int32)||
|&emsp;&emsp;rewardSwitch|推荐奖励开关，1-开，2-关|integer(int32)||
|&emsp;&emsp;shareContent|分享内容|string||
|&emsp;&emsp;standardUsers|邀请达标人数|integer(int32)||
|&emsp;&emsp;todayBonus|今日奖金|integer(int64)||
|&emsp;&emsp;yesterDayBonus|昨日奖金|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"achieveCopywritings": {
			"content": "",
			"copywritingNo": "",
			"subTitle": "",
			"title": ""
		},
		"achieveSwitch": 0,
		"agentRankSwitch": 0,
		"betCopywritings": {
			"content": "",
			"copywritingNo": "",
			"subTitle": "",
			"title": ""
		},
		"chatTools": [
			{
				"logo": "",
				"shareUrl": ""
			}
		],
		"depositBonusSwitch": 0,
		"depositSwitch": 0,
		"inviteCopywritings": {
			"content": "",
			"copywritingNo": "",
			"subTitle": "",
			"title": ""
		},
		"inviteUrl": "",
		"inviteUsers": 0,
		"rebateSwitch": 0,
		"rechargeRecommendCount": 0,
		"registerBonusSwitch": 0,
		"rewardSwitch": 0,
		"shareContent": "",
		"standardUsers": 0,
		"todayBonus": 0,
		"yesterDayBonus": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 老带新-领取成就奖奖金


**接口地址**:`/activity,/activity/activity/wap/share/receiveAchieve/{id}`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>老带新-领取成就奖奖金</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id|id|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 会员返水总数据-v5.0.3


**接口地址**:`/activity,/activity/activity/wap/share/recommend-total-bounds`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>会员返水总数据-v5.0.3</p>



**请求示例**:


```javascript
{
  "bonusType": 0,
  "current": 0,
  "endDate": 0,
  "size": 0,
  "startDate": 0,
  "type": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|ShareRecommendQuery|ShareRecommendQuery|
|&emsp;&emsp;bonusType|||false|integer(int32)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endDate|结束日期||true|integer(int64)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startDate|开始日期||true|integer(int64)||
|&emsp;&emsp;type|类型：invite：邀请；bet：返水；register:邀请注册 ;deposit: 邀请注册充值；achieve：成就奖金；rebate：充值返佣,agentRanking：代理排行榜||true|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ShareRecommendSumDataDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ShareRecommendSumDataDTO|ShareRecommendSumDataDTO|
|&emsp;&emsp;totalBonus|总奖金|integer(int64)||
|&emsp;&emsp;totalCustomers|总人数|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"totalBonus": 0,
		"totalCustomers": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 会员返水奖金记录（分页）


**接口地址**:`/activity,/activity/activity/wap/share/recommendBonus`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>会员返水奖金记录（分页）</p>



**请求示例**:


```javascript
{
  "bonusType": 0,
  "current": 0,
  "endDate": 0,
  "size": 0,
  "startDate": 0,
  "type": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|ShareRecommendQuery|ShareRecommendQuery|
|&emsp;&emsp;bonusType|||false|integer(int32)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endDate|结束日期||true|integer(int64)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startDate|开始日期||true|integer(int64)||
|&emsp;&emsp;type|类型：invite：邀请；bet：返水；register:邀请注册 ;deposit: 邀请注册充值；achieve：成就奖金；rebate：充值返佣,agentRanking：代理排行榜||true|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«ShareRecommendDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|ShareRecommendDTO|
|&emsp;&emsp;account|账号|string||
|&emsp;&emsp;agentRank|代理排行版排名|integer(int32)||
|&emsp;&emsp;bonus|奖金|integer(int64)||
|&emsp;&emsp;customerId|会员ID|string||
|&emsp;&emsp;dateTime|时间|string(date-time)||
|&emsp;&emsp;id|id|integer(int64)||
|&emsp;&emsp;inviteNum|成就奖邀请人数|integer(int32)||
|&emsp;&emsp;orderNo|订单号|string||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"account": "",
			"agentRank": 0,
			"bonus": 0,
			"customerId": "",
			"dateTime": "",
			"id": 0,
			"inviteNum": 0,
			"orderNo": ""
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 分享、邀请数据统计


**接口地址**:`/activity,/activity/activity/wap/share/statistics`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>分享、邀请数据统计</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ShareStatisticsDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ShareStatisticsDTO|ShareStatisticsDTO|
|&emsp;&emsp;profitBonus|奖金统计|ProfitBonusDTO|ProfitBonusDTO|
|&emsp;&emsp;&emsp;&emsp;betBonus|今日返水奖金|integer||
|&emsp;&emsp;&emsp;&emsp;historyBetBonus|历史返水奖金|integer||
|&emsp;&emsp;&emsp;&emsp;historyInviteBonus|历史邀请奖金|integer||
|&emsp;&emsp;&emsp;&emsp;historyRegisterBonus|历史邀请注册奖金|integer||
|&emsp;&emsp;&emsp;&emsp;historyRegisterDepositBonus|历史邀请注册充值奖金|integer||
|&emsp;&emsp;&emsp;&emsp;inviteBonus|今日邀请奖金|integer||
|&emsp;&emsp;&emsp;&emsp;registerBonus|今日邀请注册奖金|integer||
|&emsp;&emsp;&emsp;&emsp;registerDepositBonus|今日邀请注册充值奖金|integer||
|&emsp;&emsp;&emsp;&emsp;totalBonus|今日总奖金|integer||
|&emsp;&emsp;&emsp;&emsp;totalHistoryBonus|历史总奖金|integer||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"profitBonus": {
			"betBonus": 0,
			"historyBetBonus": 0,
			"historyInviteBonus": 0,
			"historyRegisterBonus": 0,
			"historyRegisterDepositBonus": 0,
			"inviteBonus": 0,
			"registerBonus": 0,
			"registerDepositBonus": 0,
			"totalBonus": 0,
			"totalHistoryBonus": 0
		}
	},
	"isSuccess": true,
	"message": ""
}
```


# H5端-活动、资讯相关接口


## 获取活动、资讯信息


**接口地址**:`/activity,/activity/activity/wap/bonus/detail/{type}/{linkId}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>获取活动、资讯信息</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|linkId|linkId|path|true|integer(int64)||
|type|type|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«BonusDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||BonusDTO|BonusDTO|
|&emsp;&emsp;content|活动内容|string||
|&emsp;&emsp;linkAdr|链接地址|string||
|&emsp;&emsp;linkId|内部链接关联ID|integer(int64)||
|&emsp;&emsp;linkMethod|跳转链接方式（0：无，1：内部链接），2：外部链接|integer(int32)||
|&emsp;&emsp;linkType|活动类型；1：资讯，2：活动|integer(int32)||
|&emsp;&emsp;pic|活动图片|string||
|&emsp;&emsp;subTitle|活动副标题|string||
|&emsp;&emsp;title|活动标题|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"content": "",
		"linkAdr": "",
		"linkId": 0,
		"linkMethod": 0,
		"linkType": 0,
		"pic": "",
		"subTitle": "",
		"title": ""
	},
	"isSuccess": true,
	"message": ""
}
```


## 活动、资讯列表


**接口地址**:`/activity,/activity/activity/wap/bonus/list`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>活动、资讯列表</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«BonusDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|BonusDTO|
|&emsp;&emsp;content|活动内容|string||
|&emsp;&emsp;linkAdr|链接地址|string||
|&emsp;&emsp;linkId|内部链接关联ID|integer(int64)||
|&emsp;&emsp;linkMethod|跳转链接方式（0：无，1：内部链接），2：外部链接|integer(int32)||
|&emsp;&emsp;linkType|活动类型；1：资讯，2：活动|integer(int32)||
|&emsp;&emsp;pic|活动图片|string||
|&emsp;&emsp;subTitle|活动副标题|string||
|&emsp;&emsp;title|活动标题|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"content": "",
			"linkAdr": "",
			"linkId": 0,
			"linkMethod": 0,
			"linkType": 0,
			"pic": "",
			"subTitle": "",
			"title": ""
		}
	],
	"isSuccess": true,
	"message": ""
}
```


# H5端-老带新，代理排行版


## 老带新-代理排行版领取奖励


**接口地址**:`/activity,/activity/activity/wap/agent/rank/claim`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>老带新-代理排行版领取奖励</p>



**请求示例**:


```javascript
{
  "id": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|AgentRankBonusClaimCmd|AgentRankBonusClaimCmd|
|&emsp;&emsp;id|id||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«AgentRankBonusClaimDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||AgentRankBonusClaimDTO|AgentRankBonusClaimDTO|
|&emsp;&emsp;bonus|领取金额|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"bonus": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 老带新-当前周邀请代理排行榜


**接口地址**:`/activity,/activity/activity/wap/agent/rank/current/info`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>老带新-当前周邀请代理排行榜</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«AgentRankInfoDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||AgentRankInfoDTO|AgentRankInfoDTO|
|&emsp;&emsp;agentRankList|排行榜排名|array|AgentRankDTO|
|&emsp;&emsp;&emsp;&emsp;account|用户账号|string||
|&emsp;&emsp;&emsp;&emsp;bonus|排名金额|integer||
|&emsp;&emsp;&emsp;&emsp;rank|排名|integer||
|&emsp;&emsp;&emsp;&emsp;standardUsers|合格人数|integer||
|&emsp;&emsp;bonusSum|代理排行总奖金|integer(int64)||
|&emsp;&emsp;currentAccount|当前用户账号|string||
|&emsp;&emsp;currentRank|当前用户排名|integer(int32)||
|&emsp;&emsp;currentStandardUsers|当前用户合格人数|integer(int32)||
|&emsp;&emsp;cyclicalEndTime|周期结束时间|integer(int64)||
|&emsp;&emsp;cyclicalStartTime|周期开始时间|integer(int64)||
|&emsp;&emsp;topStandardUsers|上一名排名合格数|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"agentRankList": [
			{
				"account": "",
				"bonus": 0,
				"rank": 0,
				"standardUsers": 0
			}
		],
		"bonusSum": 0,
		"currentAccount": "",
		"currentRank": 0,
		"currentStandardUsers": 0,
		"cyclicalEndTime": 0,
		"cyclicalStartTime": 0,
		"topStandardUsers": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 老带新-当前周邀请代理排行榜top5


**接口地址**:`/activity,/activity/activity/wap/agent/rank/current/info/top5`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>老带新-当前周邀请代理排行榜top5</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«AgentRankInfoDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||AgentRankInfoDTO|AgentRankInfoDTO|
|&emsp;&emsp;agentRankList|排行榜排名|array|AgentRankDTO|
|&emsp;&emsp;&emsp;&emsp;account|用户账号|string||
|&emsp;&emsp;&emsp;&emsp;bonus|排名金额|integer||
|&emsp;&emsp;&emsp;&emsp;rank|排名|integer||
|&emsp;&emsp;&emsp;&emsp;standardUsers|合格人数|integer||
|&emsp;&emsp;bonusSum|代理排行总奖金|integer(int64)||
|&emsp;&emsp;currentAccount|当前用户账号|string||
|&emsp;&emsp;currentRank|当前用户排名|integer(int32)||
|&emsp;&emsp;currentStandardUsers|当前用户合格人数|integer(int32)||
|&emsp;&emsp;cyclicalEndTime|周期结束时间|integer(int64)||
|&emsp;&emsp;cyclicalStartTime|周期开始时间|integer(int64)||
|&emsp;&emsp;topStandardUsers|上一名排名合格数|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"agentRankList": [
			{
				"account": "",
				"bonus": 0,
				"rank": 0,
				"standardUsers": 0
			}
		],
		"bonusSum": 0,
		"currentAccount": "",
		"currentRank": 0,
		"currentStandardUsers": 0,
		"cyclicalEndTime": 0,
		"cyclicalStartTime": 0,
		"topStandardUsers": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 老带新-查找最后一个排行榜信息


**接口地址**:`/activity,/activity/activity/wap/agent/rank/last/info`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>老带新-查找最后一个排行榜信息</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«AgentLastUserInfoDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||AgentLastUserInfoDTO|AgentLastUserInfoDTO|
|&emsp;&emsp;agentRanks|代理排行榜|array|AgentRankDTO|
|&emsp;&emsp;&emsp;&emsp;account|用户账号|string||
|&emsp;&emsp;&emsp;&emsp;bonus|排名金额|integer||
|&emsp;&emsp;&emsp;&emsp;rank|排名|integer||
|&emsp;&emsp;&emsp;&emsp;standardUsers|合格人数|integer||
|&emsp;&emsp;agentSumAmount| 代理排行榜总金额|integer(int64)||
|&emsp;&emsp;cyclicalEndTime|周期结束时间|integer(int64)||
|&emsp;&emsp;cyclicalStartTime|周期开始时间|integer(int64)||
|&emsp;&emsp;status|状态 0-默认 1-结算中 2-没有数据|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"agentRanks": [
			{
				"account": "",
				"bonus": 0,
				"rank": 0,
				"standardUsers": 0
			}
		],
		"agentSumAmount": 0,
		"cyclicalEndTime": 0,
		"cyclicalStartTime": 0,
		"status": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 老带新-查找代理排行版我的奖励


**接口地址**:`/activity,/activity/activity/wap/agent/rank/myRewards`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>老带新-查找代理排行版我的奖励</p>



**请求示例**:


```javascript
{
  "current": 0,
  "size": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|param|param|body|true|PageParam|PageParam|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;size|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«RecommendAgentRankPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|RecommendAgentRankPageDTO|
|&emsp;&emsp;account|会员账号|string||
|&emsp;&emsp;agentRank|排名|integer(int32)||
|&emsp;&emsp;bonus|奖金|integer(int64)||
|&emsp;&emsp;claimTime|用户领取时间|integer(int64)||
|&emsp;&emsp;cyclicalEndTime|周期结束时间|integer(int64)||
|&emsp;&emsp;cyclicalStartTime|周期开始时间|integer(int64)||
|&emsp;&emsp;drawDate|开奖日期|integer(int64)||
|&emsp;&emsp;id|ID|integer(int64)||
|&emsp;&emsp;standardUsers|合格人数|integer(int32)||
|&emsp;&emsp;status|用户领取状态，0:未领取 1:已领取|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"account": "",
			"agentRank": 0,
			"bonus": 0,
			"claimTime": 0,
			"cyclicalEndTime": 0,
			"cyclicalStartTime": 0,
			"drawDate": 0,
			"id": 0,
			"standardUsers": 0,
			"status": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 老带新-查找代理排行版规则


**接口地址**:`/activity,/activity/activity/wap/agent/rank/rule`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>老带新-查找代理排行版规则</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ActivityAgentRankRuleConfigDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ActivityAgentRankRuleConfigDTO|ActivityAgentRankRuleConfigDTO|
|&emsp;&emsp;agentRankConfig| 代理排名配置 配置字符串数组|array|number|
|&emsp;&emsp;agentRankSwitch|充值返佣开关 1:开；2:关|integer(int32)||
|&emsp;&emsp;agentSumAmount| 代理排行榜总金额|integer(int64)||
|&emsp;&emsp;limitIpCount| 合格用户条件同ip限制数量|integer(int32)||
|&emsp;&emsp;limitIpCountSwitch|合格用户条件同ip 开关，1-开，2-关|integer(int32)||
|&emsp;&emsp;minBetTotal|最低有效投注总额|integer(int64)||
|&emsp;&emsp;minBetTotalCheck|最低有效投注总额开关,1-开,2-关|integer(int32)||
|&emsp;&emsp;minDepositTotal|最低存款总额|integer(int64)||
|&emsp;&emsp;minDepositTotalCheck|最低存款总额开关，1-开,2-关|integer(int32)||
|&emsp;&emsp;mobileValidCheck|是否验证手机号，1-开，2-关|integer(int32)||
|&emsp;&emsp;qualifiedGameTypes|合格用户游戏类型 多个都号隔开|string||
|&emsp;&emsp;qualifiedGameTypesAll|合格用户游戏类型 是否全部类型 true 是， false 不是|boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"agentRankConfig": [],
		"agentRankSwitch": 0,
		"agentSumAmount": 0,
		"limitIpCount": 0,
		"limitIpCountSwitch": 0,
		"minBetTotal": 0,
		"minBetTotalCheck": 0,
		"minDepositTotal": 0,
		"minDepositTotalCheck": 0,
		"mobileValidCheck": 0,
		"qualifiedGameTypes": "",
		"qualifiedGameTypesAll": true
	},
	"isSuccess": true,
	"message": ""
}
```


## 老带新-查找上周排行top1 信息


**接口地址**:`/activity,/activity/activity/wap/agent/rank/top1`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>老带新-查找上周排行top1 信息</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«AgentUserInfoDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||AgentUserInfoDTO|AgentUserInfoDTO|
|&emsp;&emsp;account|用户账号|string||
|&emsp;&emsp;avatar|头像|string||
|&emsp;&emsp;bonus|排名金额|integer(int64)||
|&emsp;&emsp;currentAccountBonus|当前用户是否有未领的奖金|boolean||
|&emsp;&emsp;cyclicalEndTime|周期结束时间|integer(int64)||
|&emsp;&emsp;cyclicalStartTime|周期开始时间|integer(int64)||
|&emsp;&emsp;rank|排名|integer(int32)||
|&emsp;&emsp;standardUsers|合格人数|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"account": "",
		"avatar": "",
		"bonus": 0,
		"currentAccountBonus": true,
		"cyclicalEndTime": 0,
		"cyclicalStartTime": 0,
		"rank": 0,
		"standardUsers": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# H5端-首页-活动、资讯相关接口


## H5首页banner、公告、广告


**接口地址**:`/activity,/activity/activity/wap/basic/queryInformation`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>H5首页banner、公告、广告</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«BasicHomeDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||BasicHomeDTO|BasicHomeDTO|
|&emsp;&emsp;ads|广告信息|array|AdsDTO|
|&emsp;&emsp;&emsp;&emsp;content|内容|string||
|&emsp;&emsp;&emsp;&emsp;id||integer||
|&emsp;&emsp;&emsp;&emsp;linkAdr|跳转链接地址|string||
|&emsp;&emsp;&emsp;&emsp;linkId|内部关联ID|integer||
|&emsp;&emsp;&emsp;&emsp;linkMethod|跳转链接方式（0：无，1：内部链接），2：外部链接|integer||
|&emsp;&emsp;&emsp;&emsp;linkType|跳转链接类型（1：资讯，2：活动）|integer||
|&emsp;&emsp;&emsp;&emsp;pic|图片地址|string||
|&emsp;&emsp;&emsp;&emsp;title|广告标题|string||
|&emsp;&emsp;banners|首页banner信息|array|BannersDTO|
|&emsp;&emsp;&emsp;&emsp;id||integer||
|&emsp;&emsp;&emsp;&emsp;linkAdr|链接地址(外部跳转可用)|string||
|&emsp;&emsp;&emsp;&emsp;linkId|内部链接关联ID|integer||
|&emsp;&emsp;&emsp;&emsp;linkMethod|跳转链接方式（0：无，1：内部链接），2：外部链接|integer||
|&emsp;&emsp;&emsp;&emsp;linkType|跳转链接类型（1：资讯，2：活动）|integer||
|&emsp;&emsp;&emsp;&emsp;name|banner名称|string||
|&emsp;&emsp;&emsp;&emsp;pic|图片地址|string||
|&emsp;&emsp;bulletins|公告信息|array|BulletinDTO|
|&emsp;&emsp;&emsp;&emsp;activityType|活动类型|integer||
|&emsp;&emsp;&emsp;&emsp;activityTypeName|活动类型名称|string||
|&emsp;&emsp;&emsp;&emsp;bulletinLinkColor|链接文本颜色|string||
|&emsp;&emsp;&emsp;&emsp;bulletinLinkText|链接文本|string||
|&emsp;&emsp;&emsp;&emsp;bulletinLinkUrl|公告内容链接地址，与linkAdr区别是内容中带的跳转地址|string||
|&emsp;&emsp;&emsp;&emsp;bulletinType|公告类型 1：普通文本，2：变色文本|integer||
|&emsp;&emsp;&emsp;&emsp;content|内容|string||
|&emsp;&emsp;&emsp;&emsp;createBy|创建人|string||
|&emsp;&emsp;&emsp;&emsp;createTime|创建时间|string||
|&emsp;&emsp;&emsp;&emsp;endTime|有效期-结束时间|integer||
|&emsp;&emsp;&emsp;&emsp;id||integer||
|&emsp;&emsp;&emsp;&emsp;linkAdr|链接地址|string||
|&emsp;&emsp;&emsp;&emsp;linkId||integer||
|&emsp;&emsp;&emsp;&emsp;linkMethod|跳转链接方式（0：无，1：内部链接），2：外部链接|integer||
|&emsp;&emsp;&emsp;&emsp;linkTitle|跳转链接标题|string||
|&emsp;&emsp;&emsp;&emsp;linkType|跳转链接类型（1：资讯，2：活动）|integer||
|&emsp;&emsp;&emsp;&emsp;startTime|有效期-开始时间|integer||
|&emsp;&emsp;&emsp;&emsp;status|状态（1：待生效，2：生效中，3：已过期）|integer||
|&emsp;&emsp;&emsp;&emsp;updateBy|更新人|string||
|&emsp;&emsp;&emsp;&emsp;updateTime|更新时间|string||
|&emsp;&emsp;&emsp;&emsp;visible|是否显示（1：显示，2；不显示）|integer||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"ads": [
			{
				"content": "",
				"id": 0,
				"linkAdr": "",
				"linkId": 0,
				"linkMethod": 0,
				"linkType": 0,
				"pic": "",
				"title": ""
			}
		],
		"banners": [
			{
				"id": 0,
				"linkAdr": "",
				"linkId": 0,
				"linkMethod": 0,
				"linkType": 0,
				"name": "",
				"pic": ""
			}
		],
		"bulletins": [
			{
				"activityType": 0,
				"activityTypeName": "",
				"bulletinLinkColor": "",
				"bulletinLinkText": "",
				"bulletinLinkUrl": "",
				"bulletinType": 0,
				"content": "",
				"createBy": "",
				"createTime": "",
				"endTime": 0,
				"id": 0,
				"linkAdr": "",
				"linkId": 0,
				"linkMethod": 0,
				"linkTitle": "",
				"linkType": 0,
				"startTime": 0,
				"status": 0,
				"updateBy": "",
				"updateTime": "",
				"visible": 0
			}
		]
	},
	"isSuccess": true,
	"message": ""
}
```


## H5首页特殊域名


**接口地址**:`/activity,/activity/activity/wap/basic/querySpecial`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>H5首页特殊域名</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«string»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": "",
	"isSuccess": true,
	"message": ""
}
```


# H5端-验证功能相关接口


## 领取验证手机号奖励


**接口地址**:`/activity,/activity/activity/wap/verify/phone/received`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>领取验证手机号奖励-ph/v2.2.4</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«VerifyPhoneReceiveResponseDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||VerifyPhoneReceiveResponseDTO|VerifyPhoneReceiveResponseDTO|
|&emsp;&emsp;bonus|奖励金额|integer(int64)||
|&emsp;&emsp;bonusStatus|1 领取成功  3领取被拒绝|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"bonus": 0,
		"bonusStatus": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 验证手机号奖励配置


**接口地址**:`/activity,/activity/activity/wap/verify/phone/rewardConfig`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>验证手机号奖励配置-ph/v2.2.4</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«VerifyPhoneWapConfigDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||VerifyPhoneWapConfigDTO|VerifyPhoneWapConfigDTO|
|&emsp;&emsp;bonus|奖励金额|integer(int64)||
|&emsp;&emsp;limitIpStatus|Ip限制开关 （1：开启，2：关闭）|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"bonus": 0,
		"limitIpStatus": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# VIP活动-H5接口


## 领取月奖金


**接口地址**:`/activity,/activity/activity/wap/vip/bonus/monthly/receive`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 领取周奖金


**接口地址**:`/activity,/activity/activity/wap/vip/bonus/weekly/receive`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 查询周返利信息


**接口地址**:`/activity,/activity/activity/wap/vip/cashBack/info`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«VipCashBackInfoWapDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||VipCashBackInfoWapDTO|VipCashBackInfoWapDTO|
|&emsp;&emsp;bonus|返利奖金|integer(int64)||
|&emsp;&emsp;currentTime|当前时间|integer(int64)||
|&emsp;&emsp;level|当前等级|integer(int32)||
|&emsp;&emsp;maxRate|最高返利|number||
|&emsp;&emsp;nextCalTime|下一个计算返利时间|integer(int64)||
|&emsp;&emsp;periodEndTime|周奖励结束时间|integer(int64)||
|&emsp;&emsp;periodStartTime|周奖励开始时间|integer(int64)||
|&emsp;&emsp;rate|返利的比例|number||
|&emsp;&emsp;receiveStatus|领取状态，1-可领取，2-不可领取|integer(int32)||
|&emsp;&emsp;settleEndTime|结算结束时间|integer(int64)||
|&emsp;&emsp;settleStartTime|结算开始时间|integer(int64)||
|&emsp;&emsp;switchStatus|周返利活动开关 true-开启，false-关闭|boolean||
|&emsp;&emsp;yesterdayBonus|昨日返利|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"bonus": 0,
		"currentTime": 0,
		"level": 0,
		"maxRate": 0,
		"nextCalTime": 0,
		"periodEndTime": 0,
		"periodStartTime": 0,
		"rate": 0,
		"receiveStatus": 0,
		"settleEndTime": 0,
		"settleStartTime": 0,
		"switchStatus": true,
		"yesterdayBonus": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 领取周返利奖励


**接口地址**:`/activity,/activity/activity/wap/vip/cashBack/receive`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 查询vip日工资奖励配置


**接口地址**:`/activity,/activity/activity/wap/vip/dailySalary/config`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«VipDailySalaryConfigWapDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||VipDailySalaryConfigWapDTO|VipDailySalaryConfigWapDTO|
|&emsp;&emsp;dailySalary|日工资奖励|array|VipDailySalaryLevelRewardDTO|
|&emsp;&emsp;&emsp;&emsp;dailySalaryReward|奖励|array|VipDailySalaryRewardDTO|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;bounds|奖励|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;cumulativeAmount|累计金额|integer||
|&emsp;&emsp;&emsp;&emsp;level|等级|integer||
|&emsp;&emsp;switchConfig|日工资开关|VipDailySalarySwitchConfigDTO|VipDailySalarySwitchConfigDTO|
|&emsp;&emsp;&emsp;&emsp;gameTypes|打码范围,例如[SLOT,LIVE],为空表示全部|array|string|
|&emsp;&emsp;&emsp;&emsp;id||integer||
|&emsp;&emsp;&emsp;&emsp;multiple|稽核倍数|number||
|&emsp;&emsp;&emsp;&emsp;switchStatus|开关状态: 1-开,2-关|integer||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"dailySalary": [
			{
				"dailySalaryReward": [
					{
						"bounds": 0,
						"cumulativeAmount": 0
					}
				],
				"level": 0
			}
		],
		"switchConfig": {
			"gameTypes": [],
			"id": 0,
			"multiple": 1.5,
			"switchStatus": 1
		}
	},
	"isSuccess": true,
	"message": ""
}
```


## 领取vip日工资


**接口地址**:`/activity,/activity/activity/wap/vip/dailySalary/receive/{id}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id|id|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 查询等级奖金列表


**接口地址**:`/activity,/activity/activity/wap/vip/level/bonusList`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«VipLevelBonusWapDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|VipLevelBonusWapDTO|
|&emsp;&emsp;bonus|等级奖金|integer(int64)||
|&emsp;&emsp;createTime|领取时间|integer(int64)||
|&emsp;&emsp;level|VIP等级|integer(int32)||
|&emsp;&emsp;receiveStatus|领取状态 1-待领取，2-已领取,3-未达标|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"bonus": 0,
			"createTime": 0,
			"level": 0,
			"receiveStatus": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 领取等级奖励


**接口地址**:`/activity,/activity/activity/wap/vip/level/receive`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "level": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|LevelReceiveCmd|LevelReceiveCmd|
|&emsp;&emsp;level|等级||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 查询vip日工资奖励


**接口地址**:`/activity,/activity/activity/wap/vip/query/dailySalary`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«VipDailySalaryInfoWapDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||VipDailySalaryInfoWapDTO|VipDailySalaryInfoWapDTO|
|&emsp;&emsp;estimatedSalary|预计工资|integer(int64)||
|&emsp;&emsp;id|领取Id|integer(int64)||
|&emsp;&emsp;openStatus|领取状态  1开启，2关闭|integer(int32)||
|&emsp;&emsp;receiveStatus|领取状态  1可以领取 其它不可领取|integer(int32)||
|&emsp;&emsp;salary|昨日工资|integer(int64)||
|&emsp;&emsp;totalValidBets|今日有效押注|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"estimatedSalary": 0,
		"id": 0,
		"openStatus": 0,
		"receiveStatus": 0,
		"salary": 0,
		"totalValidBets": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 获取VIP奖金配置


**接口地址**:`/activity,/activity/activity/wap/vip/queryBonusConfig`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«VipBonusConfigWapDTO»»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|VipBonusConfigWapDTO|
|&emsp;&emsp;birthdayBonus|生日奖金|integer(int64)||
|&emsp;&emsp;cashBackRatio|周返利|number||
|&emsp;&emsp;dailySalary|日工资奖励|array|VipDailySalaryRewardDTO|
|&emsp;&emsp;&emsp;&emsp;bounds|奖励|integer||
|&emsp;&emsp;&emsp;&emsp;cumulativeAmount|累计金额|integer||
|&emsp;&emsp;level|等级|integer(int32)||
|&emsp;&emsp;levelBonus|等级奖金|integer(int64)||
|&emsp;&emsp;monthBonus|月奖金|integer(int64)||
|&emsp;&emsp;weekBonus|周奖金|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"birthdayBonus": 0,
			"cashBackRatio": 0,
			"dailySalary": [
				{
					"bounds": 0,
					"cumulativeAmount": 0
				}
			],
			"level": 0,
			"levelBonus": 0,
			"monthBonus": 0,
			"weekBonus": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 查询月工资信息


**接口地址**:`/activity,/activity/activity/wap/vip/queryMonthlySalaryInfo`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«VipBonusInfoWapDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||VipBonusInfoWapDTO|VipBonusInfoWapDTO|
|&emsp;&emsp;currentTime|当前时间|integer(int64)||
|&emsp;&emsp;endTime|结束时间|integer(int64)||
|&emsp;&emsp;level|等级|integer(int32)||
|&emsp;&emsp;receiveDay|领取日期|string||
|&emsp;&emsp;receiveStatus|领取状态，1-可领取，2-不可领取|integer(int32)||
|&emsp;&emsp;receiveTime|领取时间 22:00|string||
|&emsp;&emsp;salary|工资|integer(int64)||
|&emsp;&emsp;startTime|开始时间|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"currentTime": 0,
		"endTime": 0,
		"level": 0,
		"receiveDay": "",
		"receiveStatus": 0,
		"receiveTime": "",
		"salary": 0,
		"startTime": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 获取VIP开关配置


**接口地址**:`/activity,/activity/activity/wap/vip/queryVipConfig`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«VipConfigWapDTO»»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|VipConfigWapDTO|
|&emsp;&emsp;switchStatus|开关状态 1-开，2-关|integer(int32)||
|&emsp;&emsp;type|1-等级奖金，2-周奖金，3-月奖金，4-生日奖金|integer(int32)||
|&emsp;&emsp;typeDesc|类型说明|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"switchStatus": 0,
			"type": 0,
			"typeDesc": ""
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 查询周工资信息


**接口地址**:`/activity,/activity/activity/wap/vip/queryWeeklySalaryInfo`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«VipBonusInfoWapDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||VipBonusInfoWapDTO|VipBonusInfoWapDTO|
|&emsp;&emsp;currentTime|当前时间|integer(int64)||
|&emsp;&emsp;endTime|结束时间|integer(int64)||
|&emsp;&emsp;level|等级|integer(int32)||
|&emsp;&emsp;receiveDay|领取日期|string||
|&emsp;&emsp;receiveStatus|领取状态，1-可领取，2-不可领取|integer(int32)||
|&emsp;&emsp;receiveTime|领取时间 22:00|string||
|&emsp;&emsp;salary|工资|integer(int64)||
|&emsp;&emsp;startTime|开始时间|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"currentTime": 0,
		"endTime": 0,
		"level": 0,
		"receiveDay": "",
		"receiveStatus": 0,
		"receiveTime": "",
		"salary": 0,
		"startTime": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 领取奖励消息提示


**接口地址**:`/activity,/activity/activity/wap/vip/receive/tips`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«MessageTipsDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||MessageTipsDTO|MessageTipsDTO|
|&emsp;&emsp;depositCount|优惠存入活动奖励数量|integer(int32)||
|&emsp;&emsp;receiveCount|领取数据 ， 0-没有，大于0表示有待领取奖励|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"depositCount": 0,
		"receiveCount": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# VIP活动配置


## 编辑VIP活动配置


**接口地址**:`/activity,/activity/activity/vip/config/edit`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>编辑VIP活动配置</p>



**请求示例**:


```javascript
{
  "birthdayConfig": {
    "id": 0,
    "switchStatus": 1
  },
  "bonusConfigList": [
    {
      "birthdayBonus": 0,
      "cashBackRatio": 0,
      "dailySalary": [
        {
          "bounds": 0,
          "cumulativeAmount": 0
        }
      ],
      "level": 0,
      "levelBonus": 0,
      "monthBonus": 0,
      "weekBonus": 0
    }
  ],
  "cashBackConfig": {
    "id": 0,
    "levels": "1,2,3",
    "maxLimit": 0,
    "multiple": 1.5,
    "receiveDayEnd": 5,
    "receiveDayStart": 1,
    "receiveTimeEnd": "22:00",
    "receiveTimeStart": "22:00",
    "stopTime": 0,
    "switchStatus": 1
  },
  "dailySalaryConfig": {
    "gameTypes": [],
    "id": 0,
    "multiple": 1.5,
    "switchStatus": 1
  },
  "levelConfig": {
    "id": 0,
    "multiple": 1.1,
    "switchStatus": 1
  },
  "monthConfig": {
    "autoSend": 1,
    "id": 0,
    "levels": "1,2,3",
    "multiple": 1.5,
    "receiveDay": 20,
    "receiveTime": "22:00",
    "switchStatus": 1
  },
  "weekConfig": {
    "autoSend": 1,
    "id": 0,
    "levels": 99,
    "multiple": 1.5,
    "receiveDay": 5,
    "receiveTime": "22:00",
    "switchStatus": 1
  }
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|VipConfigEditCmd|VipConfigEditCmd|
|&emsp;&emsp;birthdayConfig|生日奖励开关配置||false|BirthdaySwitchConfigDTO|BirthdaySwitchConfigDTO|
|&emsp;&emsp;&emsp;&emsp;id|||false|integer||
|&emsp;&emsp;&emsp;&emsp;switchStatus|开关状态: 1-开,2-关||false|integer||
|&emsp;&emsp;bonusConfigList|等级奖励数据||false|array|LevelBonusConfigDTO|
|&emsp;&emsp;&emsp;&emsp;birthdayBonus|生日奖励||false|integer||
|&emsp;&emsp;&emsp;&emsp;cashBackRatio|返现比例||false|number||
|&emsp;&emsp;&emsp;&emsp;dailySalary|日工资奖励||false|array|VipDailySalaryRewardDTO|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;bounds|奖励||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;cumulativeAmount|累计金额||false|integer||
|&emsp;&emsp;&emsp;&emsp;level|VIP等级||false|integer||
|&emsp;&emsp;&emsp;&emsp;levelBonus|等级奖励||false|integer||
|&emsp;&emsp;&emsp;&emsp;monthBonus|月奖励||false|integer||
|&emsp;&emsp;&emsp;&emsp;weekBonus|周奖励||false|integer||
|&emsp;&emsp;cashBackConfig|周返利开关配置||false|CashBackSwitchConfigDTO|CashBackSwitchConfigDTO|
|&emsp;&emsp;&emsp;&emsp;id|||false|integer||
|&emsp;&emsp;&emsp;&emsp;levels|开放的等级集合,例如[1,2,3],99表示全部||false|string||
|&emsp;&emsp;&emsp;&emsp;maxLimit|返利最高限制||false|integer||
|&emsp;&emsp;&emsp;&emsp;multiple|稽核倍数||false|number||
|&emsp;&emsp;&emsp;&emsp;receiveDayEnd|领取日期-结束 如：5 表示每周5||false|string||
|&emsp;&emsp;&emsp;&emsp;receiveDayStart|领取日期-开始 如：5 表示每周5||false|string||
|&emsp;&emsp;&emsp;&emsp;receiveTimeEnd|领取时间-结束，例如22:00||false|string||
|&emsp;&emsp;&emsp;&emsp;receiveTimeStart|领取时间-开始，例如22:00||false|string||
|&emsp;&emsp;&emsp;&emsp;stopTime|||false|integer||
|&emsp;&emsp;&emsp;&emsp;switchStatus|开关状态: 1-开,2-关||false|integer||
|&emsp;&emsp;dailySalaryConfig|日工资开关配置||false|VipDailySalarySwitchConfigDTO|VipDailySalarySwitchConfigDTO|
|&emsp;&emsp;&emsp;&emsp;gameTypes|打码范围,例如[SLOT,LIVE],为空表示全部||false|array|string|
|&emsp;&emsp;&emsp;&emsp;id|||false|integer||
|&emsp;&emsp;&emsp;&emsp;multiple|稽核倍数||false|number||
|&emsp;&emsp;&emsp;&emsp;switchStatus|开关状态: 1-开,2-关||false|integer||
|&emsp;&emsp;levelConfig|等级奖励开关配置||false|LevelSwitchConfigDTO|LevelSwitchConfigDTO|
|&emsp;&emsp;&emsp;&emsp;id|||false|integer||
|&emsp;&emsp;&emsp;&emsp;multiple|稽核倍数||false|number||
|&emsp;&emsp;&emsp;&emsp;switchStatus|开关状态: 1-开,2-关||false|integer||
|&emsp;&emsp;monthConfig|月奖励开关配置||false|MonthSwitchConfigDTO|MonthSwitchConfigDTO|
|&emsp;&emsp;&emsp;&emsp;autoSend|自动派奖 1 - 是 , 2-否||false|integer||
|&emsp;&emsp;&emsp;&emsp;id|||false|integer||
|&emsp;&emsp;&emsp;&emsp;levels|开放的等级集合,例如[1,2,3],99表示全部||false|string||
|&emsp;&emsp;&emsp;&emsp;multiple|稽核倍数||false|number||
|&emsp;&emsp;&emsp;&emsp;receiveDay|领取日期 如：20 表示每月20日||false|string||
|&emsp;&emsp;&emsp;&emsp;receiveTime|领取时间，例如22:00||false|string||
|&emsp;&emsp;&emsp;&emsp;switchStatus|开关状态: 1-开,2-关||false|integer||
|&emsp;&emsp;weekConfig|周奖励开关配置||false|WeekSwitchConfigDTO|WeekSwitchConfigDTO|
|&emsp;&emsp;&emsp;&emsp;autoSend|自动派奖 1 - 是 , 2-否||false|integer||
|&emsp;&emsp;&emsp;&emsp;id|||false|integer||
|&emsp;&emsp;&emsp;&emsp;levels|开放的等级集合,例如[1,2,3],99表示全部||false|string||
|&emsp;&emsp;&emsp;&emsp;multiple|稽核倍数||false|number||
|&emsp;&emsp;&emsp;&emsp;receiveDay|领取日期 如：5 表示每周5||false|string||
|&emsp;&emsp;&emsp;&emsp;receiveTime|领取时间，例如22:00||false|string||
|&emsp;&emsp;&emsp;&emsp;switchStatus|开关状态: 1-开,2-关||false|integer||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 查询VIP活动配置


**接口地址**:`/activity,/activity/activity/vip/config/info`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询VIP活动配置</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«VipConfigDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||VipConfigDTO|VipConfigDTO|
|&emsp;&emsp;birthdayConfig|生日奖励开关配置|BirthdaySwitchConfigDTO|BirthdaySwitchConfigDTO|
|&emsp;&emsp;&emsp;&emsp;id||integer||
|&emsp;&emsp;&emsp;&emsp;switchStatus|开关状态: 1-开,2-关|integer||
|&emsp;&emsp;bonusConfigList|等级奖励数据|array|LevelBonusConfigDTO|
|&emsp;&emsp;&emsp;&emsp;birthdayBonus|生日奖励|integer||
|&emsp;&emsp;&emsp;&emsp;cashBackRatio|返现比例|number||
|&emsp;&emsp;&emsp;&emsp;dailySalary|日工资奖励|array|VipDailySalaryRewardDTO|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;bounds|奖励|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;cumulativeAmount|累计金额|integer||
|&emsp;&emsp;&emsp;&emsp;level|VIP等级|integer||
|&emsp;&emsp;&emsp;&emsp;levelBonus|等级奖励|integer||
|&emsp;&emsp;&emsp;&emsp;monthBonus|月奖励|integer||
|&emsp;&emsp;&emsp;&emsp;weekBonus|周奖励|integer||
|&emsp;&emsp;cashBackConfig|周返利开关配置|CashBackSwitchConfigDTO|CashBackSwitchConfigDTO|
|&emsp;&emsp;&emsp;&emsp;id||integer||
|&emsp;&emsp;&emsp;&emsp;levels|开放的等级集合,例如[1,2,3],99表示全部|string||
|&emsp;&emsp;&emsp;&emsp;maxLimit|返利最高限制|integer||
|&emsp;&emsp;&emsp;&emsp;multiple|稽核倍数|number||
|&emsp;&emsp;&emsp;&emsp;receiveDayEnd|领取日期-结束 如：5 表示每周5|string||
|&emsp;&emsp;&emsp;&emsp;receiveDayStart|领取日期-开始 如：5 表示每周5|string||
|&emsp;&emsp;&emsp;&emsp;receiveTimeEnd|领取时间-结束，例如22:00|string||
|&emsp;&emsp;&emsp;&emsp;receiveTimeStart|领取时间-开始，例如22:00|string||
|&emsp;&emsp;&emsp;&emsp;stopTime||integer||
|&emsp;&emsp;&emsp;&emsp;switchStatus|开关状态: 1-开,2-关|integer||
|&emsp;&emsp;dailySalaryConfig|日工资开关|VipDailySalarySwitchConfigDTO|VipDailySalarySwitchConfigDTO|
|&emsp;&emsp;&emsp;&emsp;gameTypes|打码范围,例如[SLOT,LIVE],为空表示全部|array|string|
|&emsp;&emsp;&emsp;&emsp;id||integer||
|&emsp;&emsp;&emsp;&emsp;multiple|稽核倍数|number||
|&emsp;&emsp;&emsp;&emsp;switchStatus|开关状态: 1-开,2-关|integer||
|&emsp;&emsp;levelConfig|等级奖励开关配置|LevelSwitchConfigDTO|LevelSwitchConfigDTO|
|&emsp;&emsp;&emsp;&emsp;id||integer||
|&emsp;&emsp;&emsp;&emsp;multiple|稽核倍数|number||
|&emsp;&emsp;&emsp;&emsp;switchStatus|开关状态: 1-开,2-关|integer||
|&emsp;&emsp;monthConfig|月奖励开关配置|MonthSwitchConfigDTO|MonthSwitchConfigDTO|
|&emsp;&emsp;&emsp;&emsp;autoSend|自动派奖 1 - 是 , 2-否|integer||
|&emsp;&emsp;&emsp;&emsp;id||integer||
|&emsp;&emsp;&emsp;&emsp;levels|开放的等级集合,例如[1,2,3],99表示全部|string||
|&emsp;&emsp;&emsp;&emsp;multiple|稽核倍数|number||
|&emsp;&emsp;&emsp;&emsp;receiveDay|领取日期 如：20 表示每月20日|string||
|&emsp;&emsp;&emsp;&emsp;receiveTime|领取时间，例如22:00|string||
|&emsp;&emsp;&emsp;&emsp;switchStatus|开关状态: 1-开,2-关|integer||
|&emsp;&emsp;updateByStr|最后更新操作人|string||
|&emsp;&emsp;updateTime|最后更新操作时间|integer(int64)||
|&emsp;&emsp;weekConfig|周奖励开关配置|WeekSwitchConfigDTO|WeekSwitchConfigDTO|
|&emsp;&emsp;&emsp;&emsp;autoSend|自动派奖 1 - 是 , 2-否|integer||
|&emsp;&emsp;&emsp;&emsp;id||integer||
|&emsp;&emsp;&emsp;&emsp;levels|开放的等级集合,例如[1,2,3],99表示全部|string||
|&emsp;&emsp;&emsp;&emsp;multiple|稽核倍数|number||
|&emsp;&emsp;&emsp;&emsp;receiveDay|领取日期 如：5 表示每周5|string||
|&emsp;&emsp;&emsp;&emsp;receiveTime|领取时间，例如22:00|string||
|&emsp;&emsp;&emsp;&emsp;switchStatus|开关状态: 1-开,2-关|integer||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"birthdayConfig": {
			"id": 0,
			"switchStatus": 1
		},
		"bonusConfigList": [
			{
				"birthdayBonus": 0,
				"cashBackRatio": 0,
				"dailySalary": [
					{
						"bounds": 0,
						"cumulativeAmount": 0
					}
				],
				"level": 0,
				"levelBonus": 0,
				"monthBonus": 0,
				"weekBonus": 0
			}
		],
		"cashBackConfig": {
			"id": 0,
			"levels": "1,2,3",
			"maxLimit": 0,
			"multiple": 1.5,
			"receiveDayEnd": 5,
			"receiveDayStart": 1,
			"receiveTimeEnd": "22:00",
			"receiveTimeStart": "22:00",
			"stopTime": 0,
			"switchStatus": 1
		},
		"dailySalaryConfig": {
			"gameTypes": [],
			"id": 0,
			"multiple": 1.5,
			"switchStatus": 1
		},
		"levelConfig": {
			"id": 0,
			"multiple": 1.1,
			"switchStatus": 1
		},
		"monthConfig": {
			"autoSend": 1,
			"id": 0,
			"levels": "1,2,3",
			"multiple": 1.5,
			"receiveDay": 20,
			"receiveTime": "22:00",
			"switchStatus": 1
		},
		"updateByStr": "",
		"updateTime": 0,
		"weekConfig": {
			"autoSend": 1,
			"id": 0,
			"levels": 99,
			"multiple": 1.5,
			"receiveDay": 5,
			"receiveTime": "22:00",
			"switchStatus": 1
		}
	},
	"isSuccess": true,
	"message": ""
}
```


## 查询日奖金分页


**接口地址**:`/activity,/activity/activity/vip/dailyBonus/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询日奖金分页</p>



**请求示例**:


```javascript
{
  "account": "",
  "current": 0,
  "currentLevel": 0,
  "dateType": 0,
  "endTime": "",
  "sendBonusStatus": 0,
  "size": 0,
  "startTime": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|DailyBonusPageQuery|DailyBonusPageQuery|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;currentLevel|会员等级||false|integer(int32)||
|&emsp;&emsp;dateType|1-投注时间，2-领取时间||false|integer(int32)||
|&emsp;&emsp;endTime|申领时间-结束||false|string(date-time)||
|&emsp;&emsp;sendBonusStatus|发放状态 1-待发放,2-发放完成,3-拒绝,4-发放中||false|integer(int32)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|申领时间-开始||false|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«DailyBonusDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|DailyBonusDTO|
|&emsp;&emsp;account|会员账号|string||
|&emsp;&emsp;betAmount|投注金额|integer(int64)||
|&emsp;&emsp;betDate|投注时间|integer(int64)||
|&emsp;&emsp;bonus|派发金额|integer(int64)||
|&emsp;&emsp;currentLevel|会员当前等级|integer(int32)||
|&emsp;&emsp;sendBonusStatus|发放状态: 1-待发放 2-发放完成|integer(int32)||
|&emsp;&emsp;sendBonusTime|发放时间|integer(int64)||
|&emsp;&emsp;sendBonusType|发放类型 1-人工,2-自动|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"account": "",
			"betAmount": 0,
			"betDate": 0,
			"bonus": 0,
			"currentLevel": 0,
			"sendBonusStatus": 0,
			"sendBonusTime": 0,
			"sendBonusType": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 查询日奖金统计


**接口地址**:`/activity,/activity/activity/vip/dailyBonus/sum`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询日奖金统计</p>



**请求示例**:


```javascript
{
  "account": "",
  "current": 0,
  "currentLevel": 0,
  "dateType": 0,
  "endTime": "",
  "sendBonusStatus": 0,
  "size": 0,
  "startTime": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|DailyBonusPageQuery|DailyBonusPageQuery|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;currentLevel|会员等级||false|integer(int32)||
|&emsp;&emsp;dateType|1-投注时间，2-领取时间||false|integer(int32)||
|&emsp;&emsp;endTime|申领时间-结束||false|string(date-time)||
|&emsp;&emsp;sendBonusStatus|发放状态 1-待发放,2-发放完成,3-拒绝,4-发放中||false|integer(int32)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|申领时间-开始||false|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«DailyBonusSumDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||DailyBonusSumDTO|DailyBonusSumDTO|
|&emsp;&emsp;receiveBonus|领取奖金|integer(int64)||
|&emsp;&emsp;receiveNum|领取人数|integer(int32)||
|&emsp;&emsp;sendBonus|派发总额|integer(int64)||
|&emsp;&emsp;sendNum|派发人数|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"receiveBonus": 0,
		"receiveNum": 0,
		"sendBonus": 0,
		"sendNum": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## VIP奖励派发审核


**接口地址**:`/activity,/activity/activity/vip/paid/bonus`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>VIP奖励派发审核</p>



**请求示例**:


```javascript
{
  "ids": [],
  "operateType": 0,
  "remark": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|PaidBonusCmd|PaidBonusCmd|
|&emsp;&emsp;ids|批量发放的ID集合||false|array|integer|
|&emsp;&emsp;operateType|操作（1：派发，2：拒绝）||false|integer(int32)||
|&emsp;&emsp;remark|审核备注||false|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 查询派奖审核记录（分页）


**接口地址**:`/activity,/activity/activity/vip/paid/bonus/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询派奖审核记录（分页）</p>



**请求示例**:


```javascript
{
  "account": "",
  "bonusEnd": 0,
  "bonusLevel": 0,
  "bonusStart": 0,
  "current": 0,
  "endTime": "",
  "operator": "",
  "sendStatus": [],
  "size": 0,
  "startTime": "",
  "type": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|PaidBonusPageQuery|PaidBonusPageQuery|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;bonusEnd|金额范围-结束||false|integer(int64)||
|&emsp;&emsp;bonusLevel|VIP等级||false|integer(int32)||
|&emsp;&emsp;bonusStart|金额范围-开始||false|integer(int64)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|申领时间-结束||false|string||
|&emsp;&emsp;operator|操作人||false|string||
|&emsp;&emsp;sendStatus|发放状态（1-待发放, 2-发放完成）||false|array|integer|
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|申领时间-开始||false|string||
|&emsp;&emsp;type|奖励类型: 2-周奖金，3-月奖金||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«PaidBonusPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|PaidBonusPageDTO|
|&emsp;&emsp;account|会员账号|string||
|&emsp;&emsp;bonus|奖金|integer(int64)||
|&emsp;&emsp;bonusLevel|VIP等级|integer(int32)||
|&emsp;&emsp;bonusLevelDesc||string||
|&emsp;&emsp;createTime|申领时间|integer(int64)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;operator|操作人|string||
|&emsp;&emsp;remark|备注|string||
|&emsp;&emsp;sendBonusStatus|2-发放完成, 3-拒绝|integer(int32)||
|&emsp;&emsp;sendBonusStatusDesc||string||
|&emsp;&emsp;sendBonusTime|操作时间|integer(int64)||
|&emsp;&emsp;sendBonusType|发放类型 1-人工,2-自动|integer(int32)||
|&emsp;&emsp;sendBonusTypeDesc||string||
|&emsp;&emsp;type|奖励类型: 2-周奖金，3-月奖金|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"account": "",
			"bonus": 0,
			"bonusLevel": 0,
			"bonusLevelDesc": "",
			"createTime": 0,
			"id": 0,
			"operator": "",
			"remark": "",
			"sendBonusStatus": 0,
			"sendBonusStatusDesc": "",
			"sendBonusTime": 0,
			"sendBonusType": 0,
			"sendBonusTypeDesc": "",
			"type": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 查询派奖审核记录（分页）


**接口地址**:`/activity,/activity/activity/vip/paid/bonus/pageExport`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询派奖审核记录（分页）</p>



**请求示例**:


```javascript
{
  "account": "",
  "bonusEnd": 0,
  "bonusLevel": 0,
  "bonusStart": 0,
  "current": 0,
  "endTime": "",
  "operator": "",
  "sendStatus": [],
  "size": 0,
  "startTime": "",
  "type": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|PaidBonusPageQuery|PaidBonusPageQuery|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;bonusEnd|金额范围-结束||false|integer(int64)||
|&emsp;&emsp;bonusLevel|VIP等级||false|integer(int32)||
|&emsp;&emsp;bonusStart|金额范围-开始||false|integer(int64)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|申领时间-结束||false|string||
|&emsp;&emsp;operator|操作人||false|string||
|&emsp;&emsp;sendStatus|发放状态（1-待发放, 2-发放完成）||false|array|integer|
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|申领时间-开始||false|string||
|&emsp;&emsp;type|奖励类型: 2-周奖金，3-月奖金||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«PaidBonusPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|PaidBonusPageDTO|
|&emsp;&emsp;account|会员账号|string||
|&emsp;&emsp;bonus|奖金|integer(int64)||
|&emsp;&emsp;bonusLevel|VIP等级|integer(int32)||
|&emsp;&emsp;bonusLevelDesc||string||
|&emsp;&emsp;createTime|申领时间|integer(int64)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;operator|操作人|string||
|&emsp;&emsp;remark|备注|string||
|&emsp;&emsp;sendBonusStatus|2-发放完成, 3-拒绝|integer(int32)||
|&emsp;&emsp;sendBonusStatusDesc||string||
|&emsp;&emsp;sendBonusTime|操作时间|integer(int64)||
|&emsp;&emsp;sendBonusType|发放类型 1-人工,2-自动|integer(int32)||
|&emsp;&emsp;sendBonusTypeDesc||string||
|&emsp;&emsp;type|奖励类型: 2-周奖金，3-月奖金|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"account": "",
			"bonus": 0,
			"bonusLevel": 0,
			"bonusLevelDesc": "",
			"createTime": 0,
			"id": 0,
			"operator": "",
			"remark": "",
			"sendBonusStatus": 0,
			"sendBonusStatusDesc": "",
			"sendBonusTime": 0,
			"sendBonusType": 0,
			"sendBonusTypeDesc": "",
			"type": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 查询派奖合计


**接口地址**:`/activity,/activity/activity/vip/paid/bonus/sum`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询派奖合计</p>



**请求示例**:


```javascript
{
  "account": "",
  "bonusEnd": 0,
  "bonusLevel": 0,
  "bonusStart": 0,
  "current": 0,
  "endTime": "",
  "operator": "",
  "sendStatus": [],
  "size": 0,
  "startTime": "",
  "type": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|PaidBonusPageQuery|PaidBonusPageQuery|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;bonusEnd|金额范围-结束||false|integer(int64)||
|&emsp;&emsp;bonusLevel|VIP等级||false|integer(int32)||
|&emsp;&emsp;bonusStart|金额范围-开始||false|integer(int64)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|申领时间-结束||false|string||
|&emsp;&emsp;operator|操作人||false|string||
|&emsp;&emsp;sendStatus|发放状态（1-待发放, 2-发放完成）||false|array|integer|
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|申领时间-开始||false|string||
|&emsp;&emsp;type|奖励类型: 2-周奖金，3-月奖金||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«string»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": "",
	"isSuccess": true,
	"message": ""
}
```


## 查询奖励记录（分页）


**接口地址**:`/activity,/activity/activity/vip/reward/bonus/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询奖励记录（分页）</p>



**请求示例**:


```javascript
{
  "account": "",
  "bonusLevel": 0,
  "current": 0,
  "currentLevel": 0,
  "dateType": 0,
  "endTime": "",
  "sendBonusStatus": 0,
  "sendBonusType": 0,
  "size": 0,
  "startTime": "",
  "type": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RewardBonusPageQuery|RewardBonusPageQuery|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;bonusLevel|VIP等级||false|integer(int32)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;currentLevel|当前VIP等级||false|integer(int32)||
|&emsp;&emsp;dateType|1-结算时间，2-领取时间||false|integer(int32)||
|&emsp;&emsp;endTime|申领时间-结束||false|string(date-time)||
|&emsp;&emsp;sendBonusStatus|2-发放完成, 3-拒绝||false|integer(int32)||
|&emsp;&emsp;sendBonusType|发放类型 1-人工,2-自动||false|integer(int32)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|申领时间-开始||false|string(date-time)||
|&emsp;&emsp;type|奖金类型（1-等级奖金，2-周奖金，3-月奖金，5-周返利）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«RewardBonusPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|RewardBonusPageDTO|
|&emsp;&emsp;account|会员账号|string||
|&emsp;&emsp;bonus|派发金额|integer(int64)||
|&emsp;&emsp;bonusLevel|VIP等级|integer(int32)||
|&emsp;&emsp;calAmt|周返利计算金额|integer(int64)||
|&emsp;&emsp;cashBackRatio|返现比例|number||
|&emsp;&emsp;createTime|创建时间|integer(int64)||
|&emsp;&emsp;currentLevel|当前VIP等级|integer(int32)||
|&emsp;&emsp;periodStartTime|结算时间|integer(int64)||
|&emsp;&emsp;receiveStartTime|申领时间|integer(int64)||
|&emsp;&emsp;sendBonusStatus|发放结果|integer(int32)||
|&emsp;&emsp;sendBonusTime|发放时间|integer(int64)||
|&emsp;&emsp;sendBonusType|发放类型|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"account": "",
			"bonus": 0,
			"bonusLevel": 0,
			"calAmt": 0,
			"cashBackRatio": 0,
			"createTime": 0,
			"currentLevel": 0,
			"periodStartTime": 0,
			"receiveStartTime": 0,
			"sendBonusStatus": 0,
			"sendBonusTime": 0,
			"sendBonusType": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 查询奖励合计


**接口地址**:`/activity,/activity/activity/vip/reward/bonus/sum`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询奖励合计</p>



**请求示例**:


```javascript
{
  "account": "",
  "bonusLevel": 0,
  "current": 0,
  "currentLevel": 0,
  "dateType": 0,
  "endTime": "",
  "sendBonusStatus": 0,
  "sendBonusType": 0,
  "size": 0,
  "startTime": "",
  "type": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RewardBonusPageQuery|RewardBonusPageQuery|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;bonusLevel|VIP等级||false|integer(int32)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;currentLevel|当前VIP等级||false|integer(int32)||
|&emsp;&emsp;dateType|1-结算时间，2-领取时间||false|integer(int32)||
|&emsp;&emsp;endTime|申领时间-结束||false|string(date-time)||
|&emsp;&emsp;sendBonusStatus|2-发放完成, 3-拒绝||false|integer(int32)||
|&emsp;&emsp;sendBonusType|发放类型 1-人工,2-自动||false|integer(int32)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|申领时间-开始||false|string(date-time)||
|&emsp;&emsp;type|奖金类型（1-等级奖金，2-周奖金，3-月奖金，5-周返利）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«RewardBonusSumDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||RewardBonusSumDTO|RewardBonusSumDTO|
|&emsp;&emsp;bonusSum|待返利总额|integer(int64)||
|&emsp;&emsp;endOfWeek|本周结束时间|integer(int64)||
|&emsp;&emsp;rewardBonusNums|派发奖励人数总和|integer(int32)||
|&emsp;&emsp;rewardBonusSum|派发奖励总额|integer(int64)||
|&emsp;&emsp;startOfWeek|本周开始时间|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"bonusSum": 0,
		"endOfWeek": 0,
		"rewardBonusNums": 0,
		"rewardBonusSum": 0,
		"startOfWeek": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# Wap-App版本相关


## 获取App下载链接


**接口地址**:`/activity,/activity/activity/app/download`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>获取App下载链接</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«AppVersionWapDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||AppVersionWapDTO|AppVersionWapDTO|
|&emsp;&emsp;downloadLink|普通下载链接|string||
|&emsp;&emsp;downloadLink1|转盘下载链接|string||
|&emsp;&emsp;downloadLink2|老带新下载链接|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"downloadLink": "",
		"downloadLink1": "",
		"downloadLink2": ""
	},
	"isSuccess": true,
	"message": ""
}
```


## 上传更新App下载链接


**接口地址**:`/activity,/activity/activity/app/rpc/upload`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>上传更新App下载链接</p>



**请求示例**:


```javascript
{
  "downloadLink": "",
  "operatorId": 0,
  "remark": "",
  "versionName": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|UploadAppCmd|UploadAppCmd|
|&emsp;&emsp;downloadLink|App文件链接||false|string||
|&emsp;&emsp;operatorId|操作人||false|integer(int64)||
|&emsp;&emsp;remark|备注||false|string||
|&emsp;&emsp;versionName|包版本名称||false|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 获取App版本信息


**接口地址**:`/activity,/activity/activity/app/rpc/version`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>获取App版本信息</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«AppVersionDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||AppVersionDTO|AppVersionDTO|
|&emsp;&emsp;downloadLink|下载链接|string||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;remark|备注|string||
|&emsp;&emsp;updateTime|更新时间|integer(int64)||
|&emsp;&emsp;versionName|版本名称|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"downloadLink": "",
		"id": 0,
		"remark": "",
		"updateTime": 0,
		"versionName": ""
	},
	"isSuccess": true,
	"message": ""
}
```


# Wap-会员意见箱


## 一键删除所有消息


**接口地址**:`/activity,/activity/activity/wap/feedback/all/delete`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>一键删除所有消息</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 一键已读所有消息


**接口地址**:`/activity,/activity/activity/wap/feedback/all/read`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>一键已读所有消息</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 批量删除消息


**接口地址**:`/activity,/activity/activity/wap/feedback/batch/delete`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>批量删除消息</p>



**请求示例**:


```javascript
{
  "msgId": []
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|BatchUpdateMsgCmd|BatchUpdateMsgCmd|
|&emsp;&emsp;msgId|消息ID集合(hash)||false|array|string|


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 批量已读消息


**接口地址**:`/activity,/activity/activity/wap/feedback/batch/read`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>批量已读消息</p>



**请求示例**:


```javascript
{
  "msgId": []
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|BatchUpdateMsgCmd|BatchUpdateMsgCmd|
|&emsp;&emsp;msgId|消息ID集合(hash)||false|array|string|


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 提交反馈


**接口地址**:`/activity,/activity/activity/wap/feedback/commit`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>提交反馈</p>



**请求示例**:


```javascript
{
  "account": "",
  "feedbackContent": "",
  "feedbackType": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|FeedbackWapAddCmd|FeedbackWapAddCmd|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;feedbackContent|反馈内容||true|string||
|&emsp;&emsp;feedbackType|类型（1：存款问题，2：提款问题、3游戏问题、4：客服问、5：申请代理、6：其他问题）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 查询反馈信息


**接口地址**:`/activity,/activity/activity/wap/feedback/info/{fMsgId}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询反馈信息</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|fMsgId|fMsgId|path|true|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«FeedbackWapDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||FeedbackWapDTO|FeedbackWapDTO|
|&emsp;&emsp;createTime|创建时间|integer(int64)||
|&emsp;&emsp;feedbackContent|反馈内容|string||
|&emsp;&emsp;feedbackStatus|状态（1：未回复、2：已关闭、3：已回复）|integer(int32)||
|&emsp;&emsp;feedbackType|类型（1：存款问题，2：提款问题、3游戏问题、4：客服问、5：申请代理、6：其他问题）|integer(int32)||
|&emsp;&emsp;msgId||string||
|&emsp;&emsp;readStatus|是否已读（true：已读，false：未读）|boolean||
|&emsp;&emsp;replyContent|回复内容|string||
|&emsp;&emsp;replyTime|回复时间|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"createTime": 0,
		"feedbackContent": "",
		"feedbackStatus": 0,
		"feedbackType": 0,
		"msgId": "",
		"readStatus": true,
		"replyContent": "",
		"replyTime": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 查询反馈信息列表


**接口地址**:`/activity,/activity/activity/wap/feedback/list`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询反馈信息列表</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«FeedbackWapDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|FeedbackWapDTO|
|&emsp;&emsp;createTime|创建时间|integer(int64)||
|&emsp;&emsp;feedbackContent|反馈内容|string||
|&emsp;&emsp;feedbackStatus|状态（1：未回复、2：已关闭、3：已回复）|integer(int32)||
|&emsp;&emsp;feedbackType|类型（1：存款问题，2：提款问题、3游戏问题、4：客服问、5：申请代理、6：其他问题）|integer(int32)||
|&emsp;&emsp;msgId||string||
|&emsp;&emsp;readStatus|是否已读（true：已读，false：未读）|boolean||
|&emsp;&emsp;replyContent|回复内容|string||
|&emsp;&emsp;replyTime|回复时间|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"createTime": 0,
			"feedbackContent": "",
			"feedbackStatus": 0,
			"feedbackType": 0,
			"msgId": "",
			"readStatus": true,
			"replyContent": "",
			"replyTime": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 当日已提交次数


**接口地址**:`/activity,/activity/activity/wap/feedback/nums`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>当日已提交次数</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«FeedbackNumsWapDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||FeedbackNumsWapDTO|FeedbackNumsWapDTO|
|&emsp;&emsp;commitFlag|是否可提交|boolean||
|&emsp;&emsp;feedbackNums|已提交反馈次数|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"commitFlag": true,
		"feedbackNums": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# Wap-消息


## 批量删除消息


**接口地址**:`/activity,/activity/activity/wap/msg/batch/delete`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>批量删除消息</p>



**请求示例**:


```javascript
{
  "msgId": []
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|BatchUpdateMsgCmd|BatchUpdateMsgCmd|
|&emsp;&emsp;msgId|消息ID集合(hash)||false|array|string|


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 批量已读消息


**接口地址**:`/activity,/activity/activity/wap/msg/batch/read`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>批量已读消息</p>



**请求示例**:


```javascript
{
  "msgId": []
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|BatchUpdateMsgCmd|BatchUpdateMsgCmd|
|&emsp;&emsp;msgId|消息ID集合(hash)||false|array|string|


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 最新未读消息聚合


**接口地址**:`/activity,/activity/activity/wap/msg/box/last`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>最新未读消息聚合</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«MsgBoxWapDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||MsgBoxWapDTO|MsgBoxWapDTO|
|&emsp;&emsp;fbMsgBody|反馈信息内容|MsgBoxFeedBackWapDTO|MsgBoxFeedBackWapDTO|
|&emsp;&emsp;&emsp;&emsp;createTime|创建时间|integer||
|&emsp;&emsp;&emsp;&emsp;feedbackContent|反馈内容|string||
|&emsp;&emsp;&emsp;&emsp;feedbackStatus|状态（1：未回复、2：已关闭、3：已回复）|integer||
|&emsp;&emsp;&emsp;&emsp;feedbackType|类型（1：存款问题，2：提款问题、3游戏问题、4：客服问、5：申请代理、6：其他问题）|integer||
|&emsp;&emsp;&emsp;&emsp;msgId||string||
|&emsp;&emsp;&emsp;&emsp;readStatus|是否已读（true：已读，false：未读）|boolean||
|&emsp;&emsp;&emsp;&emsp;replyContent|回复内容|string||
|&emsp;&emsp;&emsp;&emsp;replyTime|回复时间|integer||
|&emsp;&emsp;fbMsgStatus|反馈信息阅读状态（0：无信息，1：有未读信息，2：无未读信息）|integer(int32)||
|&emsp;&emsp;msgId|最新未读站内信ID|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"fbMsgBody": {
			"createTime": 0,
			"feedbackContent": "",
			"feedbackStatus": 0,
			"feedbackType": 0,
			"msgId": "",
			"readStatus": true,
			"replyContent": "",
			"replyTime": 0
		},
		"fbMsgStatus": 0,
		"msgId": ""
	},
	"isSuccess": true,
	"message": ""
}
```


## 删除消息


**接口地址**:`/activity,/activity/activity/wap/msg/delete/{msgId}`


**请求方式**:`DELETE`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>删除消息</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|msgId|msgId|path|true|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|204|No Content||
|401|Unauthorized||
|403|Forbidden||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 最新未读消息


**接口地址**:`/activity,/activity/activity/wap/msg/last`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>最新未读消息</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«string»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": "",
	"isSuccess": true,
	"message": ""
}
```


## 预览最新未读消息


**接口地址**:`/activity,/activity/activity/wap/msg/last/msg/preview`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>预览最新未读消息</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«MessageWapDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||MessageWapDTO|MessageWapDTO|
|&emsp;&emsp;content|内容|string||
|&emsp;&emsp;msgId||string||
|&emsp;&emsp;previewContent|预览内容|string||
|&emsp;&emsp;sendTime|发送时间|string(date-time)||
|&emsp;&emsp;senderName|发件人|string||
|&emsp;&emsp;status|状态（1：未读，2：已读）|integer(int32)||
|&emsp;&emsp;title|标题|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"content": "",
		"msgId": "",
		"previewContent": "",
		"sendTime": "",
		"senderName": "",
		"status": 0,
		"title": ""
	},
	"isSuccess": true,
	"message": ""
}
```


## 查询收件信息列表


**接口地址**:`/activity,/activity/activity/wap/msg/list`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询收件信息列表</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«MessageWapDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|MessageWapDTO|
|&emsp;&emsp;content|内容|string||
|&emsp;&emsp;msgId||string||
|&emsp;&emsp;previewContent|预览内容|string||
|&emsp;&emsp;sendTime|发送时间|string(date-time)||
|&emsp;&emsp;senderName|发件人|string||
|&emsp;&emsp;status|状态（1：未读，2：已读）|integer(int32)||
|&emsp;&emsp;title|标题|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"content": "",
			"msgId": "",
			"previewContent": "",
			"sendTime": "",
			"senderName": "",
			"status": 0,
			"title": ""
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 已读消息


**接口地址**:`/activity,/activity/activity/wap/msg/read/{msgId}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>已读消息</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|msgId|msgId|path|true|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 未读消息条数


**接口地址**:`/activity,/activity/activity/wap/msg/unread`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>未读消息条数</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«int»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": 0,
	"isSuccess": true,
	"message": ""
}
```


## 未读消息列表（最多99条）


**接口地址**:`/activity,/activity/activity/wap/msg/unread/list`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>未读消息列表（最多99条）</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«UnReadMessageWapDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||UnReadMessageWapDTO|UnReadMessageWapDTO|
|&emsp;&emsp;lastMsgId|最新未读消息ID|string||
|&emsp;&emsp;unReadNums|未读数量|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"lastMsgId": "",
		"unReadNums": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 查询消息内容


**接口地址**:`/activity,/activity/activity/wap/msg/{msgId}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询消息内容</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|msgId|msgId|path|true|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«MessageWapDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||MessageWapDTO|MessageWapDTO|
|&emsp;&emsp;content|内容|string||
|&emsp;&emsp;msgId||string||
|&emsp;&emsp;previewContent|预览内容|string||
|&emsp;&emsp;sendTime|发送时间|string(date-time)||
|&emsp;&emsp;senderName|发件人|string||
|&emsp;&emsp;status|状态（1：未读，2：已读）|integer(int32)||
|&emsp;&emsp;title|标题|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"content": "",
		"msgId": "",
		"previewContent": "",
		"sendTime": "",
		"senderName": "",
		"status": 0,
		"title": ""
	},
	"isSuccess": true,
	"message": ""
}
```


# activity-controller


## 根据类型查询活动页面配置列表


**接口地址**:`/activity,/activity/activity/getActivityPageList`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>根据类型查询活动页面配置列表</p>



**请求示例**:


```javascript
{
  "activityType": 0,
  "current": 0,
  "size": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|ActivityPageQuery|ActivityPageQuery|
|&emsp;&emsp;activityType|活动类型||false|integer(int32)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;size|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«ActivityPageDTO»»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|ActivityPageDTO|
|&emsp;&emsp;activityType|活动类型|integer(int32)||
|&emsp;&emsp;activityTypeName|活动类型名称|string||
|&emsp;&emsp;activityUrl|活动页面路由路径|string||
|&emsp;&emsp;createTime|创建时间|integer(int64)||
|&emsp;&emsp;id||integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"activityType": 0,
			"activityTypeName": "",
			"activityUrl": "",
			"createTime": 0,
			"id": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## getInfo


**接口地址**:`/activity,/activity/activity/getInfo`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id|id|query|false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ActivityInfoDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ActivityInfoDTO|ActivityInfoDTO|
|&emsp;&emsp;activityDesc|活动说明|LangItem|LangItem|
|&emsp;&emsp;&emsp;&emsp;en||string||
|&emsp;&emsp;&emsp;&emsp;zh||string||
|&emsp;&emsp;activityName|活动名称|string||
|&emsp;&emsp;activityType|活动类型|integer(int32)||
|&emsp;&emsp;betRebateDesc|投注返佣说明|LangItem|LangItem|
|&emsp;&emsp;&emsp;&emsp;en||string||
|&emsp;&emsp;&emsp;&emsp;zh||string||
|&emsp;&emsp;expiredTime|过期时间|string(date-time)||
|&emsp;&emsp;id|活动ID|integer(int64)||
|&emsp;&emsp;invitationBonusDesc|邀请奖金说明|LangItem|LangItem|
|&emsp;&emsp;&emsp;&emsp;en||string||
|&emsp;&emsp;&emsp;&emsp;zh||string||
|&emsp;&emsp;logo|活动图标|string||
|&emsp;&emsp;startTime|开始时间|string(date-time)||
|&emsp;&emsp;status|活动状态： 1-开启，2-关闭|integer(int32)||
|&emsp;&emsp;subTitle|活动副标题|LangItem|LangItem|
|&emsp;&emsp;&emsp;&emsp;en||string||
|&emsp;&emsp;&emsp;&emsp;zh||string||
|&emsp;&emsp;title|活动标题|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"activityDesc": {
			"en": "",
			"zh": ""
		},
		"activityName": "",
		"activityType": 0,
		"betRebateDesc": {
			"en": "",
			"zh": ""
		},
		"expiredTime": "",
		"id": 0,
		"invitationBonusDesc": {
			"en": "",
			"zh": ""
		},
		"logo": "",
		"startTime": "",
		"status": 0,
		"subTitle": {
			"en": "",
			"zh": ""
		},
		"title": ""
	},
	"isSuccess": true,
	"message": ""
}
```


## 活动信息列表（分页）


**接口地址**:`/activity,/activity/activity/getPageList`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>活动信息列表（分页）</p>



**请求示例**:


```javascript
{
  "activityName": "",
  "activityTypeId": 0,
  "current": 0,
  "size": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|ActivityInfoPageQuery|ActivityInfoPageQuery|
|&emsp;&emsp;activityName|活动名称标题||false|string||
|&emsp;&emsp;activityTypeId|活动类型ID||false|integer(int32)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;size|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«ActivityInfoDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|ActivityInfoDTO|
|&emsp;&emsp;activityDesc|活动说明|LangItem|LangItem|
|&emsp;&emsp;&emsp;&emsp;en||string||
|&emsp;&emsp;&emsp;&emsp;zh||string||
|&emsp;&emsp;activityName|活动名称|string||
|&emsp;&emsp;activityType|活动类型|integer(int32)||
|&emsp;&emsp;betRebateDesc|投注返佣说明|LangItem|LangItem|
|&emsp;&emsp;&emsp;&emsp;en||string||
|&emsp;&emsp;&emsp;&emsp;zh||string||
|&emsp;&emsp;expiredTime|过期时间|string(date-time)||
|&emsp;&emsp;id|活动ID|integer(int64)||
|&emsp;&emsp;invitationBonusDesc|邀请奖金说明|LangItem|LangItem|
|&emsp;&emsp;&emsp;&emsp;en||string||
|&emsp;&emsp;&emsp;&emsp;zh||string||
|&emsp;&emsp;logo|活动图标|string||
|&emsp;&emsp;startTime|开始时间|string(date-time)||
|&emsp;&emsp;status|活动状态： 1-开启，2-关闭|integer(int32)||
|&emsp;&emsp;subTitle|活动副标题|LangItem|LangItem|
|&emsp;&emsp;&emsp;&emsp;en||string||
|&emsp;&emsp;&emsp;&emsp;zh||string||
|&emsp;&emsp;title|活动标题|string||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"activityDesc": {
				"en": "",
				"zh": ""
			},
			"activityName": "",
			"activityType": 0,
			"betRebateDesc": {
				"en": "",
				"zh": ""
			},
			"expiredTime": "",
			"id": 0,
			"invitationBonusDesc": {
				"en": "",
				"zh": ""
			},
			"logo": "",
			"startTime": "",
			"status": 0,
			"subTitle": {
				"en": "",
				"zh": ""
			},
			"title": ""
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 根据类型查询活动信息列表


**接口地址**:`/activity,/activity/activity/getTypeAllList`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>根据类型查询活动信息列表</p>



**请求示例**:


```javascript
{
  "activityType": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|ActivityInfoTypeQuery|ActivityInfoTypeQuery|
|&emsp;&emsp;activityType|活动类型：1：推荐活动；2：充值活动||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«ActivityInfoADTO»»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|ActivityInfoADTO|
|&emsp;&emsp;activityDesc|活动说明|string||
|&emsp;&emsp;activityName|活动名称|string||
|&emsp;&emsp;activityType|活动类型|integer(int32)||
|&emsp;&emsp;betRebateDesc|投注返佣说明|string||
|&emsp;&emsp;expiredTime|过期时间|string(date-time)||
|&emsp;&emsp;id|活动ID|integer(int64)||
|&emsp;&emsp;invitationBonusDesc|邀请奖金说明|string||
|&emsp;&emsp;logo|活动图标|string||
|&emsp;&emsp;startTime|开始时间|string(date-time)||
|&emsp;&emsp;status|活动状态： 1-开启，2-关闭|integer(int32)||
|&emsp;&emsp;subTitle|活动副标题|string||
|&emsp;&emsp;title|活动标题|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"activityDesc": "",
			"activityName": "",
			"activityType": 0,
			"betRebateDesc": "",
			"expiredTime": "",
			"id": 0,
			"invitationBonusDesc": "",
			"logo": "",
			"startTime": "",
			"status": 0,
			"subTitle": "",
			"title": ""
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 查询所有活动类型


**接口地址**:`/activity,/activity/activity/getTypeList`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询所有活动类型</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«ActivityTypeDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|ActivityTypeDTO|
|&emsp;&emsp;activityName|活动名称|string||
|&emsp;&emsp;activityType|活动类型|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"activityName": "",
			"activityType": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 查询开启的活动


**接口地址**:`/activity,/activity/activity/queryActivityEnableList/{type}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询开启的活动(活动类型（1：老带新活动，2：充值活动）)</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|type|type|path|true|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«ActivityDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|ActivityDTO|
|&emsp;&emsp;activityConfigId|活动配置ID|integer(int64)||
|&emsp;&emsp;activityName|活动名称|string||
|&emsp;&emsp;activityType|活动类型|integer(int32)||
|&emsp;&emsp;expiredTime|过期时间|string(date-time)||
|&emsp;&emsp;id|活动ID|integer(int64)||
|&emsp;&emsp;specified|指定金额赠送配置|string||
|&emsp;&emsp;startTime|开始时间|string(date-time)||
|&emsp;&emsp;status|活动状态： 1-开启，2-关闭|integer(int32)||
|&emsp;&emsp;title|活动标题|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"activityConfigId": 0,
			"activityName": "",
			"activityType": 0,
			"expiredTime": "",
			"id": 0,
			"specified": "",
			"startTime": "",
			"status": 0,
			"title": ""
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## update


**接口地址**:`/activity,/activity/activity/update`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "activityDesc": "",
  "betRebateDesc": "",
  "id": 0,
  "invitationBonusDesc": "",
  "subTitle": "",
  "title": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|ActivityInfoUpdateCmd|ActivityInfoUpdateCmd|
|&emsp;&emsp;activityDesc|||false|string||
|&emsp;&emsp;betRebateDesc|||false|string||
|&emsp;&emsp;id|||true|integer(int64)||
|&emsp;&emsp;invitationBonusDesc|||false|string||
|&emsp;&emsp;subTitle|||false|string||
|&emsp;&emsp;title|||false|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


# activity-game-bet-controller


## handleMessage


**接口地址**:`/activity,/activity/gameBet/handleMessage`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "items": [
    {
      "agentId": 0,
      "aggreId": 0,
      "aggreName": "",
      "aggreNo": "",
      "betAmount": 0,
      "betTime": "",
      "betType": "",
      "betUpdateTime": "",
      "createBy": 0,
      "createTime": "",
      "currency": "",
      "customerId": 0,
      "deleted": 0,
      "gameId": 0,
      "gameName": "",
      "gameNo": "",
      "id": 0,
      "ident": 0,
      "platformId": 0,
      "platformName": "",
      "platformNo": "",
      "platformTxId": "",
      "profitAmount": 0,
      "realBetAmount": 0,
      "realWinAmount": 0,
      "settleStatus": 0,
      "systemOrderNo": "",
      "txStatus": 0,
      "txTime": "",
      "typeId": 0,
      "typeName": "",
      "typeNo": "",
      "updateBy": 0,
      "updateTime": "",
      "winAmount": 0,
      "winStatus": true
    }
  ]
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|req|req|body|true|ActivityGameBetHandleReq|ActivityGameBetHandleReq|
|&emsp;&emsp;items|||false|array|GameBetDTO|
|&emsp;&emsp;&emsp;&emsp;agentId|||false|integer||
|&emsp;&emsp;&emsp;&emsp;aggreId|||false|integer||
|&emsp;&emsp;&emsp;&emsp;aggreName|||false|string||
|&emsp;&emsp;&emsp;&emsp;aggreNo|||false|string||
|&emsp;&emsp;&emsp;&emsp;betAmount|||false|integer||
|&emsp;&emsp;&emsp;&emsp;betTime|||false|string||
|&emsp;&emsp;&emsp;&emsp;betType|||false|string||
|&emsp;&emsp;&emsp;&emsp;betUpdateTime|||false|string||
|&emsp;&emsp;&emsp;&emsp;createBy|||false|integer||
|&emsp;&emsp;&emsp;&emsp;createTime|||false|string||
|&emsp;&emsp;&emsp;&emsp;currency|||false|string||
|&emsp;&emsp;&emsp;&emsp;customerId|||false|integer||
|&emsp;&emsp;&emsp;&emsp;deleted|||false|integer||
|&emsp;&emsp;&emsp;&emsp;gameId|||false|integer||
|&emsp;&emsp;&emsp;&emsp;gameName|||false|string||
|&emsp;&emsp;&emsp;&emsp;gameNo|||false|string||
|&emsp;&emsp;&emsp;&emsp;id|||false|integer||
|&emsp;&emsp;&emsp;&emsp;ident|||false|integer||
|&emsp;&emsp;&emsp;&emsp;platformId|||false|integer||
|&emsp;&emsp;&emsp;&emsp;platformName|||false|string||
|&emsp;&emsp;&emsp;&emsp;platformNo|||false|string||
|&emsp;&emsp;&emsp;&emsp;platformTxId|||false|string||
|&emsp;&emsp;&emsp;&emsp;profitAmount|||false|integer||
|&emsp;&emsp;&emsp;&emsp;realBetAmount|||false|integer||
|&emsp;&emsp;&emsp;&emsp;realWinAmount|||false|integer||
|&emsp;&emsp;&emsp;&emsp;settleStatus|||false|integer||
|&emsp;&emsp;&emsp;&emsp;systemOrderNo|||false|string||
|&emsp;&emsp;&emsp;&emsp;txStatus|||false|integer||
|&emsp;&emsp;&emsp;&emsp;txTime|||false|string||
|&emsp;&emsp;&emsp;&emsp;typeId|||false|integer||
|&emsp;&emsp;&emsp;&emsp;typeName|||false|string||
|&emsp;&emsp;&emsp;&emsp;typeNo|||false|string||
|&emsp;&emsp;&emsp;&emsp;updateBy|||false|integer||
|&emsp;&emsp;&emsp;&emsp;updateTime|||false|string||
|&emsp;&emsp;&emsp;&emsp;winAmount|||false|integer||
|&emsp;&emsp;&emsp;&emsp;winStatus|||false|boolean||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


# deposit-discount-job-handler


## depositDiscountSendJob


**接口地址**:`/activity,/activity/activity/job/depositDiscountSendJob/{dataId}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|dataId|dataId|path|true|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


# feign：返水活动


## 保存返水


**接口地址**:`/activity,/activity/activity/remote/rebate/saveRebate`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "betDate": 0,
  "saveKey": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|SaveRebateCmd|SaveRebateCmd|
|&emsp;&emsp;betDate|||false|integer(int64)||
|&emsp;&emsp;saveKey|||false|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


# h5-体验金


## 体验金配置


**接口地址**:`/activity,/activity/activity/wap/experienceBonus/config`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>体验金配置</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ExperienceBonusConfigWapDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ExperienceBonusConfigWapDTO|ExperienceBonusConfigWapDTO|
|&emsp;&emsp;experienceBonusConfigs|体验金配置列表|array|ExperienceBonusConfig|
|&emsp;&emsp;&emsp;&emsp;bonus|奖金金额|integer||
|&emsp;&emsp;&emsp;&emsp;bonusCode|奖金编码|integer||
|&emsp;&emsp;rule|活动规则|string||
|&emsp;&emsp;status|领取状态 0 不可领取 1 待领取, 2 已领取|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"experienceBonusConfigs": [
			{
				"bonus": 0,
				"bonusCode": 0
			}
		],
		"rule": "",
		"status": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 获取用户体验金展示配置


**接口地址**:`/activity,/activity/activity/wap/experienceBonus/getClimExperience`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>获取用户体验金展示配置-ph/v2.2.6</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ExperienceBonusWapDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ExperienceBonusWapDTO|ExperienceBonusWapDTO|
|&emsp;&emsp;bonus|领取金额|integer(int64)||
|&emsp;&emsp;status|领取状态 0 不可领取 1 待领取, 2 已领取|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"bonus": 0,
		"status": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 体验金抽奖


**接口地址**:`/activity,/activity/activity/wap/experienceBonus/raffle`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>体验金抽奖</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«int»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": 0,
	"isSuccess": true,
	"message": ""
}
```


## 体验金获取校验配置


**接口地址**:`/activity,/activity/activity/wap/experienceBonus/verifyConfig`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>体验金获取校验配置-v3.8.5</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ExperienceBonusVerifyConfigWapDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ExperienceBonusVerifyConfigWapDTO|ExperienceBonusVerifyConfigWapDTO|
|&emsp;&emsp;verifyPhoneStatus|校验手机号配置 1开启 2关闭|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"verifyPhoneStatus": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# job-handler


## activityRecommendBonusDateJob


**接口地址**:`/activity,/activity/activity/job/activityRecommendBonusDateJob`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "jobParam": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|jobParamQuery|jobParamQuery|body|true|JobParamQuery|JobParamQuery|
|&emsp;&emsp;jobParam|||false|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## activityRecommendBonusInviteJob


**接口地址**:`/activity,/activity/activity/job/activityRecommendBonusInviteJob`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## activityRecommendBonusManualCheck


**接口地址**:`/activity,/activity/activity/job/activityRecommendBonusManualCheck`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "jobParam": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|jobParamQuery|jobParamQuery|body|true|JobParamQuery|JobParamQuery|
|&emsp;&emsp;jobParam|||false|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


# lock-demo-controller


## testLock


**接口地址**:`/activity,/activity/test-lock`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|userId|userId|query|false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


暂无


**响应示例**:
```javascript

```


## testLock


**接口地址**:`/activity,/activity/test-lock`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|userId|userId|query|false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK||
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


暂无


**响应示例**:
```javascript

```


## testLock


**接口地址**:`/activity,/activity/test-lock`


**请求方式**:`PUT`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|userId|userId|query|false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK||
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


暂无


**响应示例**:
```javascript

```


## testLock


**接口地址**:`/activity,/activity/test-lock`


**请求方式**:`DELETE`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|userId|userId|query|false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK||
|204|No Content||
|401|Unauthorized||
|403|Forbidden||


**响应参数**:


暂无


**响应示例**:
```javascript

```


## testLock


**接口地址**:`/activity,/activity/test-lock`


**请求方式**:`PATCH`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|userId|userId|query|false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK||
|204|No Content||
|401|Unauthorized||
|403|Forbidden||


**响应参数**:


暂无


**响应示例**:
```javascript

```


## testLock


**接口地址**:`/activity,/activity/test-lock`


**请求方式**:`OPTIONS`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|userId|userId|query|false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK||
|204|No Content||
|401|Unauthorized||
|403|Forbidden||


**响应参数**:


暂无


**响应示例**:
```javascript

```


## testLock


**接口地址**:`/activity,/activity/test-lock`


**请求方式**:`HEAD`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|userId|userId|query|false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK||
|204|No Content||
|401|Unauthorized||
|403|Forbidden||


**响应参数**:


暂无


**响应示例**:
```javascript

```


# message-job-handler


## messageSendJob


**接口地址**:`/activity,/activity/activity/job/messageSendJob`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


# rebate-job-handler


## rebateSendJob


**接口地址**:`/activity,/activity/activity/job/rebateJob`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "jobParam": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|jobParam|jobParam|body|true|JobParamQuery|JobParamQuery|
|&emsp;&emsp;jobParam|||false|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


# recommend-bonus-job-handler


## activityAgentRankJob


**接口地址**:`/activity,/activity/activity/job/activityAgentRankJob`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## activityRecommendBonusBetJob


**接口地址**:`/activity,/activity/activity/job/activityRecommendBonusBetJob`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "endTime": 0,
  "startTime": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|ActivityRecommendBonusBetJobQuery|ActivityRecommendBonusBetJobQuery|
|&emsp;&emsp;endTime|||true|integer(int64)||
|&emsp;&emsp;startTime|||true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## recalculateActivityBonusBetJob


**接口地址**:`/activity,/activity/activity/job/recalculateActivityBonusBetJob`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "jobParam": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|jobParamQuery|jobParamQuery|body|true|JobParamQuery|JobParamQuery|
|&emsp;&emsp;jobParam|||false|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## recommendBonusExpiredCheckJob


**接口地址**:`/activity,/activity/activity/job/recommendBonusExpiredCheckJob`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## sendBetBonusJob


**接口地址**:`/activity,/activity/activity/job/sendBetBonusJob`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## sendInviteBonusJob


**接口地址**:`/activity,/activity/activity/job/sendInviteBonusJob`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


# recommend-init-job-handler


## calAgentLevel


**接口地址**:`/activity,/activity/activity/job/recommend/calAgentLevel`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## initStatisticsJob


**接口地址**:`/activity,/activity/activity/job/recommend/init-statistics-job`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


# 优惠存入活动


## 取消


**接口地址**:`/activity,/activity/activity/deposit/discount/cancel/{id}`


**请求方式**:`DELETE`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>取消</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id|id|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|204|No Content||
|401|Unauthorized||
|403|Forbidden||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 存入


**接口地址**:`/activity,/activity/activity/deposit/discount/import`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>存入</p>



**请求示例**:


```javascript
{
  "dataList": [
    {
      "account": 9024012000,
      "customerId": 1109200546093600,
      "depositAmtOrigin": 210.88,
      "multipleNumOrigin": 1.1
    }
  ],
  "fileName": "",
  "password": "",
  "timeType": 1,
  "timing": "2024-01-20 20:00:00"
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|ImportDepositCmd|ImportDepositCmd|
|&emsp;&emsp;dataList|数据||false|array|ImportDepositSubCmd|
|&emsp;&emsp;&emsp;&emsp;account|账号||true|string||
|&emsp;&emsp;&emsp;&emsp;customerId|会员编号||true|string||
|&emsp;&emsp;&emsp;&emsp;depositAmtOrigin|存入金额||true|string||
|&emsp;&emsp;&emsp;&emsp;multipleNumOrigin|稽核倍数||true|string||
|&emsp;&emsp;fileName|文件名||true|string||
|&emsp;&emsp;password|操作人密码||true|string||
|&emsp;&emsp;timeType|执行时间类型（1：立即、2：定时）||false|integer(int32)||
|&emsp;&emsp;timing|定时发放执行时间||false|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 查询批量存入记录（分页）


**接口地址**:`/activity,/activity/activity/deposit/discount/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询批量存入记录（分页）</p>



**请求示例**:


```javascript
{
  "current": 0,
  "endTime": "",
  "operator": "",
  "size": 0,
  "startTime": "",
  "status": 0,
  "timeType": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|DepositDiscountPageQuery|DepositDiscountPageQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|时间-结束||false|string(date-time)||
|&emsp;&emsp;operator|操作人||false|string||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|时间-开始||false|string(date-time)||
|&emsp;&emsp;status|状态（1：执行中，2：定时，3：完成）||false|integer(int32)||
|&emsp;&emsp;timeType|时间类型（1：存入操作时间，2：发放执行时间）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«DepositDiscountPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|DepositDiscountPageDTO|
|&emsp;&emsp;createTime|录入时间|integer(int64)||
|&emsp;&emsp;failedNums|失败条数|integer(int32)||
|&emsp;&emsp;fileName|文件名称|string||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;operationStartTime|派奖时间|integer(int64)||
|&emsp;&emsp;operatorName|操作人|string||
|&emsp;&emsp;receiveAmt|领取金额合计|integer(int64)||
|&emsp;&emsp;receiveNums|领取人数合计|integer(int32)||
|&emsp;&emsp;status|状态（1：发放中、2：预约、3：完成）|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"createTime": 0,
			"failedNums": 0,
			"fileName": "",
			"id": 0,
			"operationStartTime": 0,
			"operatorName": "",
			"receiveAmt": 0,
			"receiveNums": 0,
			"status": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 查询待领取奖励


**接口地址**:`/activity,/activity/activity/wap/deposit/award/list`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询待领取奖励</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«DepositDiscountWapDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|DepositDiscountWapDTO|
|&emsp;&emsp;awardId|奖励数据ID（Hash）|string||
|&emsp;&emsp;depositAmt|奖励金额|integer(int64)||
|&emsp;&emsp;depositTime|发放时间|integer(int64)||
|&emsp;&emsp;expireTime|过期时间|integer(int64)||
|&emsp;&emsp;serverTime|服务器时间|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"awardId": "",
			"depositAmt": 0,
			"depositTime": 0,
			"expireTime": 0,
			"serverTime": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 领取奖励


**接口地址**:`/activity,/activity/activity/wap/deposit/receive/{id}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>领取奖励</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id|id|path|true|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


# 兑换码-H5接口


## 兑换


**接口地址**:`/activity,/activity/activity/wap/redemption/exchange`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "cdKey": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|ExchangeCmd|ExchangeCmd|
|&emsp;&emsp;cdKey|兑换码||false|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ExchangeDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ExchangeDTO|ExchangeDTO|
|&emsp;&emsp;amount|兑换金额|integer(int64)||
|&emsp;&emsp;content|兑换内容文本|string||
|&emsp;&emsp;exchangeState|状态： 1：手机号码未验证，2：兑换码已使用或无效, 3:OK, 4: 已达到兑换上限|integer(int32)||
|&emsp;&emsp;exchangeStateDesc|状态描述|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"amount": 0,
		"content": "",
		"exchangeState": 0,
		"exchangeStateDesc": ""
	},
	"isSuccess": true,
	"message": ""
}
```


## 查询-兑换码开关配置


**接口地址**:`/activity,/activity/activity/wap/redemption/querySwitchInfo`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«SwitchInfoWapDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||SwitchInfoWapDTO|SwitchInfoWapDTO|
|&emsp;&emsp;switchStatus|开关状态|boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"switchStatus": true
	},
	"isSuccess": true,
	"message": ""
}
```


# 兑换码活动配置


## 新增兑换码设置


**接口地址**:`/activity,/activity/activity/redemption/code/config/add`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>新增兑换码设置</p>



**请求示例**:


```javascript
{
  "amountEnd": 0,
  "amountStart": 0,
  "auditValue": 0,
  "availableCount": 0,
  "configName": "",
  "configType": 0,
  "content": "",
  "customerUseLimit": 0,
  "endTime": "",
  "levels": "",
  "startTime": "",
  "totalCount": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|RedemptionCodeAddCmd|RedemptionCodeAddCmd|
|&emsp;&emsp;amountEnd|随机金额-结束||true|integer(int64)||
|&emsp;&emsp;amountStart|随机金额-开始||true|integer(int64)||
|&emsp;&emsp;auditValue|稽核倍数||true|number||
|&emsp;&emsp;availableCount|可用数量||false|integer(int32)||
|&emsp;&emsp;configName|配置名称||true|string||
|&emsp;&emsp;configType|配置类型||true|integer(int32)||
|&emsp;&emsp;content|兑换内容文本||true|string||
|&emsp;&emsp;customerUseLimit|个人兑换上限||true|integer(int32)||
|&emsp;&emsp;endTime|使用时效-结束||true|string(date-time)||
|&emsp;&emsp;levels|VIP||true|string||
|&emsp;&emsp;startTime|使用时效-开始||true|string(date-time)||
|&emsp;&emsp;totalCount|生成数量||true|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 查询兑换码名称


**接口地址**:`/activity,/activity/activity/redemption/code/config/name`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询兑换码名称</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«RedemptionCodeNameDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|RedemptionCodeNameDTO|
|&emsp;&emsp;configName||string||
|&emsp;&emsp;id||integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"configName": "",
			"id": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 查询兑换码配置列表（分页）


**接口地址**:`/activity,/activity/activity/redemption/code/config/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询兑换码配置列表（分页）</p>



**请求示例**:


```javascript
{
  "configName": "",
  "current": 0,
  "endTime": "",
  "operatorName": "",
  "size": 0,
  "startTime": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RedemptionCodePageQuery|RedemptionCodePageQuery|
|&emsp;&emsp;configName|兑换码名称||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|创建时间-结束||true|string(date-time)||
|&emsp;&emsp;operatorName|操作人||false|string||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|创建时间-开始||true|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«RedemptionCodePageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|RedemptionCodePageDTO|
|&emsp;&emsp;amountEnd|随机金额-结束|integer(int64)||
|&emsp;&emsp;amountStart|随机金额-开始|integer(int64)||
|&emsp;&emsp;availableCount|可用数量|integer(int32)||
|&emsp;&emsp;cdKey|cdkey|string||
|&emsp;&emsp;configName|名称|string||
|&emsp;&emsp;configStatus|配置启用状态： 1-启用，2-关闭|integer(int32)||
|&emsp;&emsp;configType|配置类型 1:单码单销，2:一码多销|integer(int32)||
|&emsp;&emsp;createTime|创建时间|integer(int64)||
|&emsp;&emsp;customerUseLimit|个人限次|integer(int32)||
|&emsp;&emsp;endTime|使用时效-结束|integer(int64)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;operatorName|操作人|string||
|&emsp;&emsp;residueCount|未使用剩余|integer(int32)||
|&emsp;&emsp;startTime|使用时效-开始|integer(int64)||
|&emsp;&emsp;totalCount|生成数量|integer(int32)||
|&emsp;&emsp;usedAmount|已领取金额|integer(int64)||
|&emsp;&emsp;usedCustomerCount|已兑换人数|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"amountEnd": 0,
			"amountStart": 0,
			"availableCount": 0,
			"cdKey": "",
			"configName": "",
			"configStatus": 0,
			"configType": 0,
			"createTime": 0,
			"customerUseLimit": 0,
			"endTime": 0,
			"id": 0,
			"operatorName": "",
			"residueCount": 0,
			"startTime": 0,
			"totalCount": 0,
			"usedAmount": 0,
			"usedCustomerCount": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 查询兑换码合计


**接口地址**:`/activity,/activity/activity/redemption/code/config/statistics`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询兑换码合计</p>



**请求示例**:


```javascript
{
  "configName": "",
  "current": 0,
  "endTime": "",
  "operatorName": "",
  "size": 0,
  "startTime": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RedemptionCodePageQuery|RedemptionCodePageQuery|
|&emsp;&emsp;configName|兑换码名称||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|创建时间-结束||true|string(date-time)||
|&emsp;&emsp;operatorName|操作人||false|string||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|创建时间-开始||true|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«RedemptionCodeStatisticsDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||RedemptionCodeStatisticsDTO|RedemptionCodeStatisticsDTO|
|&emsp;&emsp;usedAmountSum|已兑换金额总和|integer(int64)||
|&emsp;&emsp;usedCountSum|已兑换次数总和|integer(int32)||
|&emsp;&emsp;usedCustomerCountSum|已兑换人数总和|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"usedAmountSum": 0,
		"usedCountSum": 0,
		"usedCustomerCountSum": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 更新兑换码设置


**接口地址**:`/activity,/activity/activity/redemption/code/config/update`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>更新兑换码设置</p>



**请求示例**:


```javascript
{
  "configStatus": 0,
  "id": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|RedemptionCodeUpdateCmd|RedemptionCodeUpdateCmd|
|&emsp;&emsp;configStatus|配置启用状态： 1-启用，2-关闭||false|integer(int32)||
|&emsp;&emsp;id|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 查询兑换记录列表（分页）


**接口地址**:`/activity,/activity/activity/redemption/code/details/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询兑换记录列表（分页）</p>



**请求示例**:


```javascript
{
  "account": "",
  "cdKey": "",
  "configId": 0,
  "current": 0,
  "endTime": "",
  "size": 0,
  "startTime": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RedemptionDetailsPageQuery|RedemptionDetailsPageQuery|
|&emsp;&emsp;account|会员名称||false|string||
|&emsp;&emsp;cdKey|cdKey||false|string||
|&emsp;&emsp;configId|兑换码配置ID||false|integer(int64)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|兑换时间-结束||false|string(date-time)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|兑换时间-开始||false|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«RedemptionDetailsPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|RedemptionDetailsPageDTO|
|&emsp;&emsp;account|会员名称|string||
|&emsp;&emsp;bonus|奖金|integer(int64)||
|&emsp;&emsp;cdKey|cdKey|string||
|&emsp;&emsp;configName|配置名称|string||
|&emsp;&emsp;receiveTime|领取时间|integer(int64)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"account": "",
			"bonus": 0,
			"cdKey": "",
			"configName": "",
			"receiveTime": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 编辑-兑换码开关配置


**接口地址**:`/activity,/activity/activity/redemption/code/editSwitchInfo`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "endTime": "",
  "startTime": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|EditSwitchInfoCmd|EditSwitchInfoCmd|
|&emsp;&emsp;endTime|结束时间||false|string(date-time)||
|&emsp;&emsp;startTime|开始时间||false|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 查询-兑换码开关配置


**接口地址**:`/activity,/activity/activity/redemption/code/querySwitchInfo`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«SwitchInfoDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||SwitchInfoDTO|SwitchInfoDTO|
|&emsp;&emsp;endTime|结束时间|integer(int64)||
|&emsp;&emsp;startTime|开始时间|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"endTime": 0,
		"startTime": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 查询兑换记录列表（分页）新接口


**接口地址**:`/activity,/activity/activity/redemption/code/record/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询兑换记录列表（分页）</p>



**请求示例**:


```javascript
{
  "account": "",
  "cdKey": "",
  "configId": 0,
  "current": 0,
  "customerLevel": 0,
  "endTime": "",
  "size": 0,
  "startTime": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RedemptionRecordPageQuery|RedemptionRecordPageQuery|
|&emsp;&emsp;account|会员名称||false|string||
|&emsp;&emsp;cdKey|cdKey||false|string||
|&emsp;&emsp;configId|兑换码配置ID||false|integer(int64)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;customerLevel|会员等级||false|integer(int32)||
|&emsp;&emsp;endTime|兑换时间-结束||false|string(date-time)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|兑换时间-开始||false|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«RedemptionRecordPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|RedemptionRecordPageDTO|
|&emsp;&emsp;account|会员名称|string||
|&emsp;&emsp;bonus|奖金|integer(int64)||
|&emsp;&emsp;cdKey|cdKey|string||
|&emsp;&emsp;configName|配置名称|string||
|&emsp;&emsp;customerLevel|会员等级|integer(int32)||
|&emsp;&emsp;receiveTime|领取时间|integer(int64)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"account": "",
			"bonus": 0,
			"cdKey": "",
			"configName": "",
			"customerLevel": 0,
			"receiveTime": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 查询兑换统计


**接口地址**:`/activity,/activity/activity/redemption/code/record/statistics`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询兑换记录列表（分页）</p>



**请求示例**:


```javascript
{
  "account": "",
  "cdKey": "",
  "configId": 0,
  "current": 0,
  "customerLevel": 0,
  "endTime": "",
  "size": 0,
  "startTime": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RedemptionRecordPageQuery|RedemptionRecordPageQuery|
|&emsp;&emsp;account|会员名称||false|string||
|&emsp;&emsp;cdKey|cdKey||false|string||
|&emsp;&emsp;configId|兑换码配置ID||false|integer(int64)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;customerLevel|会员等级||false|integer(int32)||
|&emsp;&emsp;endTime|兑换时间-结束||false|string(date-time)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|兑换时间-开始||false|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«RecordStatisticsDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||RecordStatisticsDTO|RecordStatisticsDTO|
|&emsp;&emsp;usedAmountSum|已兑换金额总和|integer(int64)||
|&emsp;&emsp;usedCountSum|已兑换次数总和|integer(int32)||
|&emsp;&emsp;usedCustomerCountSum|已兑换人数总和|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"usedAmountSum": 0,
		"usedCountSum": 0,
		"usedCustomerCountSum": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# 后台-邀请人记录表（新版）


## 冻结邀请人


**接口地址**:`/activity,/activity/activity/recommend/bonus/date/freeze`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "customerId": 0,
  "id": 0,
  "operatorId": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|InviterFreezeCmd|InviterFreezeCmd|
|&emsp;&emsp;customerId|被冻结邀请人ID||false|integer(int64)||
|&emsp;&emsp;id|ID||false|integer(int64)||
|&emsp;&emsp;operatorId|操作人ID||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 查询邀请奖励合计


**接口地址**:`/activity,/activity/activity/recommend/bonus/date/query/sum`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "agentTitle": "",
  "current": 0,
  "customerAccount": "",
  "customerId": 0,
  "endTime": "",
  "size": 0,
  "startTime": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RecommendBonusDateQuery|RecommendBonusDateQuery|
|&emsp;&emsp;agentTitle|代理等级名称||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;customerAccount|邀请人账号||false|string||
|&emsp;&emsp;customerId|用户编码||false|integer(int64)||
|&emsp;&emsp;endTime|结束日期||false|string(date)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始日期||false|string(date)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«RecommendBonusDateSumDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||RecommendBonusDateSumDTO|RecommendBonusDateSumDTO|
|&emsp;&emsp;achieveBonusAmount|成就奖|integer(int64)||
|&emsp;&emsp;agentRankBonusAmount|代理排行奖金|integer(int64)||
|&emsp;&emsp;inviteBonusAmount|合格奖金|integer(int64)||
|&emsp;&emsp;inviteBonusSum|累计邀请奖金|integer(int64)||
|&emsp;&emsp;inviteDepositBonusSum|存款奖金|integer(int64)||
|&emsp;&emsp;inviteRebateSum|返水奖金|integer(int64)||
|&emsp;&emsp;inviteRegisterBonusSum|注册奖金|integer(int64)||
|&emsp;&emsp;rebateBonusAmount|充值返佣|integer(int64)||
|&emsp;&emsp;recommendNums|推荐总人数|integer(int32)||
|&emsp;&emsp;validRecommendNums|有效人数|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"achieveBonusAmount": 0,
		"agentRankBonusAmount": 0,
		"inviteBonusAmount": 0,
		"inviteBonusSum": 0,
		"inviteDepositBonusSum": 0,
		"inviteRebateSum": 0,
		"inviteRegisterBonusSum": 0,
		"rebateBonusAmount": 0,
		"recommendNums": 0,
		"validRecommendNums": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 查询分页


**接口地址**:`/activity,/activity/activity/recommend/bonus/date/queryPage`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "agentTitle": "",
  "current": 0,
  "customerAccount": "",
  "customerId": 0,
  "endTime": "",
  "size": 0,
  "startTime": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RecommendBonusDateQuery|RecommendBonusDateQuery|
|&emsp;&emsp;agentTitle|代理等级名称||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;customerAccount|邀请人账号||false|string||
|&emsp;&emsp;customerId|用户编码||false|integer(int64)||
|&emsp;&emsp;endTime|结束日期||false|string(date)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始日期||false|string(date)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«RecommendBonusDateDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|RecommendBonusDateDTO|
|&emsp;&emsp;achieveBonusAmount|成就奖|integer(int64)||
|&emsp;&emsp;agentRankBonusAmount|代理排行奖金|integer(int64)||
|&emsp;&emsp;agentTitle|代理等级标题|string||
|&emsp;&emsp;betBonusAmount|总投注返水奖金|integer(int64)||
|&emsp;&emsp;customerAccount|邀请人账号|string||
|&emsp;&emsp;customerId|用户编码|integer(int64)||
|&emsp;&emsp;inviteBonusAmount|合格奖金|integer(int64)||
|&emsp;&emsp;inviteDepositBonusSum|存款奖金|integer(int64)||
|&emsp;&emsp;inviteRebateBonusAmount|直接推荐累计返水|integer(int64)||
|&emsp;&emsp;inviteRegisterBonusSum|注册奖金|integer(int64)||
|&emsp;&emsp;inviteUsers|直接推荐人数|integer(int32)||
|&emsp;&emsp;inviterStatus|邀请状态： 1-正常，2-冻结|integer(int32)||
|&emsp;&emsp;l2Count|L2人数|integer(int32)||
|&emsp;&emsp;l3Count|L3人数|integer(int32)||
|&emsp;&emsp;l4Count|L4人数|integer(int32)||
|&emsp;&emsp;rebateBonusAmount|充值返佣|integer(int64)||
|&emsp;&emsp;reportDate|日期|string(date-time)||
|&emsp;&emsp;standardUsers|有效推荐人数|integer(int32)||
|&emsp;&emsp;totalBonus|累计邀请奖金|integer(int64)||
|&emsp;&emsp;totalMembers|团队人数|integer(int64)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"achieveBonusAmount": 0,
			"agentRankBonusAmount": 0,
			"agentTitle": "",
			"betBonusAmount": 0,
			"customerAccount": "",
			"customerId": 0,
			"inviteBonusAmount": 0,
			"inviteDepositBonusSum": 0,
			"inviteRebateBonusAmount": 0,
			"inviteRegisterBonusSum": 0,
			"inviteUsers": 0,
			"inviterStatus": 0,
			"l2Count": 0,
			"l3Count": 0,
			"l4Count": 0,
			"rebateBonusAmount": 0,
			"reportDate": "",
			"standardUsers": 0,
			"totalBonus": 0,
			"totalMembers": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 解冻邀请人


**接口地址**:`/activity,/activity/activity/recommend/bonus/date/unfreeze`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "customerId": 0,
  "id": 0,
  "operatorId": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|InviterFreezeCmd|InviterFreezeCmd|
|&emsp;&emsp;customerId|被冻结邀请人ID||false|integer(int64)||
|&emsp;&emsp;id|ID||false|integer(int64)||
|&emsp;&emsp;operatorId|操作人ID||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


# 奖金明细相关接口


## detail


**接口地址**:`/activity,/activity/activity/wap/stat/detail`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "statCode": []
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|activityStatDetailQuery|activityStatDetailQuery|body|false|ActivityStatDetailQuery|ActivityStatDetailQuery|
|&emsp;&emsp;statCode|统计编码||false|array|string|


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Map«string,ActivityStatBoundsDTO»»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ActivityStatBoundsDTO|ActivityStatBoundsDTO|
|&emsp;&emsp;bounds|总奖金|integer(int64)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;statCode|统计类型|string||
|&emsp;&emsp;statDetail||object||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"additionalProperties1": {
			"bounds": 0,
			"id": 0,
			"statCode": "",
			"statDetail": {}
		}
	},
	"isSuccess": true,
	"message": ""
}
```


## sum


**接口地址**:`/activity,/activity/activity/wap/stat/sum`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ActivityStatSumDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ActivityStatSumDTO|ActivityStatSumDTO|
|&emsp;&emsp;totalBounds|总金额|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"totalBounds": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# 定时任务{VIP活动}


## 周返利计算


**接口地址**:`/activity,/activity/activity/job/calVipCashBack`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "endTime": 0,
  "startTime": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|CalVipCashBackQuery|CalVipCashBackQuery|
|&emsp;&emsp;endTime|结束时间||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


# 定时任务{修邀请人数据}


## fixInviteJob


**接口地址**:`/activity,/activity/activity/job/fixInviteJob`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


# 定时任务{兑换码}


## 迁移数据


**接口地址**:`/activity,/activity/activity/job/migrate`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


# 校验活动


## 编辑验证手机号配置


**接口地址**:`/activity,/activity/activity/verify/phone/config/edit`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>编辑验证手机号配置-ph/v2.2.4</p>



**请求示例**:


```javascript
{
  "bonus": 0,
  "limitIpReceiveTimes": 0,
  "limitIpStatus": 0,
  "multiply": 0,
  "status": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|VerifyPhoneConfigEditCmd|VerifyPhoneConfigEditCmd|
|&emsp;&emsp;bonus|奖励金额||false|integer(int64)||
|&emsp;&emsp;limitIpReceiveTimes|Ip限制领取数量||false|integer(int32)||
|&emsp;&emsp;limitIpStatus|Ip限制开关 （1：开启，2：关闭）||false|integer(int32)||
|&emsp;&emsp;multiply|稽核倍数||false|integer(int32)||
|&emsp;&emsp;status|活动状态（1：开启，2：关闭）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 查询验证手机号活动


**接口地址**:`/activity,/activity/activity/verify/phone/config/info`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询验证手机号活动配置-ph/v2.2.4</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«VerifyPhoneConfigDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||VerifyPhoneConfigDTO|VerifyPhoneConfigDTO|
|&emsp;&emsp;bonus|奖励金额|integer(int64)||
|&emsp;&emsp;limitIpReceiveTimes|Ip限制领取数量|integer(int32)||
|&emsp;&emsp;limitIpStatus|Ip限制开关 （1：开启，2：关闭）|integer(int32)||
|&emsp;&emsp;multiply|稽核倍数|integer(int32)||
|&emsp;&emsp;operator|操作人|string||
|&emsp;&emsp;status|活动状态（1：开启，2：关闭）|integer(int32)||
|&emsp;&emsp;updateTime|更新时间|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"bonus": 0,
		"limitIpReceiveTimes": 0,
		"limitIpStatus": 0,
		"multiply": 0,
		"operator": "",
		"status": 0,
		"updateTime": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 验证手机号奖励记录


**接口地址**:`/activity,/activity/activity/verify/phone/record/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>验证手机号奖励记录-ph/v2.2.4</p>



**请求示例**:


```javascript
{
  "account": "",
  "bonusStatus": 0,
  "current": 0,
  "endDate": "",
  "ip": "",
  "size": 0,
  "startDate": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|VerifyPhoneBonusRecordQuery|VerifyPhoneBonusRecordQuery|
|&emsp;&emsp;account|账号||false|string||
|&emsp;&emsp;bonusStatus|状态 1已发放 2已领取 3已拒绝||false|integer(int32)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endDate|结束时间||false|string(date)||
|&emsp;&emsp;ip|ip地址||false|string||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startDate|开始时间||false|string(date)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«ActivityVerifyPhoneBonusRecordDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|ActivityVerifyPhoneBonusRecordDTO|
|&emsp;&emsp;bonus|奖励金额|integer(int64)||
|&emsp;&emsp;bonusStatus|奖励发放状态 1发放中 2已发放 3已拒绝|integer(int32)||
|&emsp;&emsp;customerAccount|用户账号|string||
|&emsp;&emsp;customerId|用户Id|integer(int64)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;receiveIp|ip地址|string||
|&emsp;&emsp;receiveTime|奖励发放时间|integer(int64)||
|&emsp;&emsp;updateTime|更新时间|integer(int64)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"bonus": 0,
			"bonusStatus": 0,
			"customerAccount": "",
			"customerId": 0,
			"id": 0,
			"receiveIp": "",
			"receiveTime": 0,
			"updateTime": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 验证手机号奖励统计


**接口地址**:`/activity,/activity/activity/verify/phone/record/sum`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>验证手机号奖励统计-ph/v2.2.4</p>



**请求示例**:


```javascript
{
  "account": "",
  "bonusStatus": 0,
  "current": 0,
  "endDate": "",
  "ip": "",
  "size": 0,
  "startDate": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|VerifyPhoneBonusRecordQuery|VerifyPhoneBonusRecordQuery|
|&emsp;&emsp;account|账号||false|string||
|&emsp;&emsp;bonusStatus|状态 1已发放 2已领取 3已拒绝||false|integer(int32)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endDate|结束时间||false|string(date)||
|&emsp;&emsp;ip|ip地址||false|string||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startDate|开始时间||false|string(date)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ActivityVerifyPhoneBonusSumDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ActivityVerifyPhoneBonusSumDTO|ActivityVerifyPhoneBonusSumDTO|
|&emsp;&emsp;bonus|奖励金额|integer(int64)||
|&emsp;&emsp;receiveBonus|已领取奖励|integer(int64)||
|&emsp;&emsp;receiveNum|已领取人数|integer(int32)||
|&emsp;&emsp;total|总数|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"bonus": 0,
		"receiveBonus": 0,
		"receiveNum": 0,
		"total": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# 每日累计存款活动配置


## 获取每日累计存款活动配置信息


**接口地址**:`/activity,/activity/activity/dailyCumulativeDeposit/config/getDailyCumulativeDepositConfig`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>获取每日累计存款活动配置信息</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«DailyCumulativeDepositConfig-每日存款累计活动配置»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||DailyCumulativeDepositConfig-每日存款累计活动配置|DailyCumulativeDepositConfig-每日存款累计活动配置|
|&emsp;&emsp;levelConfigList|等级配置|array|DailyCumulativeDepositConfig-等级配置|
|&emsp;&emsp;&emsp;&emsp;customerLevel|用户VIP等级|integer||
|&emsp;&emsp;&emsp;&emsp;rewardConfigList|等级奖励配置|array|DailyCumulativeDepositConfig-等级奖励配置|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;cumulativeDeposit|累计金额|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardAmount|奖励金额|integer||
|&emsp;&emsp;multipleNum|稽核倍数|integer(int32)||
|&emsp;&emsp;operator|操作用户|string||
|&emsp;&emsp;receiveMethod|领取方式 1：自动领取  2：手动领取|integer(int32)||
|&emsp;&emsp;rule|规则描述|string||
|&emsp;&emsp;status|活动状态 1开启 2关闭|integer(int32)||
|&emsp;&emsp;updateTime|最后更新时间|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"levelConfigList": [
			{
				"customerLevel": 0,
				"rewardConfigList": [
					{
						"cumulativeDeposit": 0,
						"rewardAmount": 0
					}
				]
			}
		],
		"multipleNum": 0,
		"operator": "",
		"receiveMethod": 0,
		"rule": "",
		"status": 0,
		"updateTime": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 领取记录分页


**接口地址**:`/activity,/activity/activity/dailyCumulativeDeposit/config/pageChargeCumulativeRecord`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>领取记录分页</p>



**请求示例**:


```javascript
{
  "account": "",
  "chargeEndTime": "",
  "chargeStartTime": "",
  "current": 0,
  "level": [],
  "obtainingStatus": 0,
  "receiveEndTime": "",
  "receiveStartTime": "",
  "size": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|qry|qry|body|true|ChargeCumulativeRecordPageQuery-领取记录分页|ChargeCumulativeRecordPageQuery-领取记录分页|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;chargeEndTime|充值结束时间||false|string(date-time)||
|&emsp;&emsp;chargeStartTime|充值开始时间||false|string(date-time)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;level|会员等级||false|array|integer|
|&emsp;&emsp;obtainingStatus|领取状态 1待领取 2已领取 3结算中||false|integer(int32)||
|&emsp;&emsp;receiveEndTime|领取结束时间||false|string(date-time)||
|&emsp;&emsp;receiveStartTime|领取开始时间||false|string(date-time)||
|&emsp;&emsp;size|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«ChargeCumulativeRecordDTO-领取记录»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|ChargeCumulativeRecordDTO-领取记录|
|&emsp;&emsp;account|会员账号|string||
|&emsp;&emsp;chargeAmount|充值金额|integer(int64)||
|&emsp;&emsp;chargeDate|充值日期|integer(int64)||
|&emsp;&emsp;confirmTime|奖励确认已发放回调时间|integer(int64)||
|&emsp;&emsp;customerId|会员Id|string||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;level|会员等级|integer(int32)||
|&emsp;&emsp;obtainingStatus|领取状态 1待领取 2已领取 3结算中|integer(int32)||
|&emsp;&emsp;obtainingTime|奖励获取时间|integer(int64)||
|&emsp;&emsp;receiveMethod|奖励领取方式|integer(int32)||
|&emsp;&emsp;rewardAmount|奖励金额|integer(int64)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"account": "",
			"chargeAmount": 0,
			"chargeDate": 0,
			"confirmTime": 0,
			"customerId": "",
			"id": 0,
			"level": 0,
			"obtainingStatus": 0,
			"obtainingTime": 0,
			"receiveMethod": 0,
			"rewardAmount": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 领取记录统计


**接口地址**:`/activity,/activity/activity/dailyCumulativeDeposit/config/totalChargeCumulativeRecord`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>领取记录统计</p>



**请求示例**:


```javascript
{
  "account": "",
  "chargeEndTime": "",
  "chargeStartTime": "",
  "current": 0,
  "level": [],
  "obtainingStatus": 0,
  "receiveEndTime": "",
  "receiveStartTime": "",
  "size": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|qry|qry|body|true|ChargeCumulativeRecordPageQuery-领取记录分页|ChargeCumulativeRecordPageQuery-领取记录分页|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;chargeEndTime|充值结束时间||false|string(date-time)||
|&emsp;&emsp;chargeStartTime|充值开始时间||false|string(date-time)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;level|会员等级||false|array|integer|
|&emsp;&emsp;obtainingStatus|领取状态 1待领取 2已领取 3结算中||false|integer(int32)||
|&emsp;&emsp;receiveEndTime|领取结束时间||false|string(date-time)||
|&emsp;&emsp;receiveStartTime|领取开始时间||false|string(date-time)||
|&emsp;&emsp;size|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ChargeCumulativeTotalDTO-领取记录统计»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ChargeCumulativeTotalDTO-领取记录统计|ChargeCumulativeTotalDTO-领取记录统计|
|&emsp;&emsp;receiveAmountTotal|已领取总金额|integer(int64)||
|&emsp;&emsp;receiveTotal|已领取人数|integer(int64)||
|&emsp;&emsp;rewardAmountTotal|派发总金额|integer(int64)||
|&emsp;&emsp;rewardTotal|派发人数|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"receiveAmountTotal": 0,
		"receiveTotal": 0,
		"rewardAmountTotal": 0,
		"rewardTotal": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 修改每日累计存款活动配置信息


**接口地址**:`/activity,/activity/activity/dailyCumulativeDeposit/config/updateDailyCumulativeDepositConfig`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>修改每日累计存款活动配置信息</p>



**请求示例**:


```javascript
{
  "levelConfigList": [
    {
      "customerLevel": 0,
      "rewardConfigList": [
        {
          "cumulativeDeposit": 0,
          "rewardAmount": 0
        }
      ]
    }
  ],
  "multipleNum": 0,
  "receiveMethod": 0,
  "rule": "",
  "status": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|DailyCumulativeDepositConfigUpdateCmd-每日存款累计活动配置|DailyCumulativeDepositConfigUpdateCmd-每日存款累计活动配置|
|&emsp;&emsp;levelConfigList|等级配置||false|array|DailyCumulativeDepositConfigUpdateCmd-等级配置|
|&emsp;&emsp;&emsp;&emsp;customerLevel|用户VIP等级||false|integer||
|&emsp;&emsp;&emsp;&emsp;rewardConfigList|等级奖励配置||false|array|DailyCumulativeDepositConfigUpdateCmd-等级奖励配置|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;cumulativeDeposit|累计金额||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardAmount|奖励金额||false|integer||
|&emsp;&emsp;multipleNum|稽核倍数||false|integer(int32)||
|&emsp;&emsp;receiveMethod|领取方式 1：自动领取  2：手动领取||false|integer(int32)||
|&emsp;&emsp;rule|规则描述||false|string||
|&emsp;&emsp;status|活动状态 1开启 2关闭||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


# 注册活动后台配置


## 查询所有活动配置


**接口地址**:`/activity,/activity/activity/register/config/allSimpleSetting`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«SimpleRegisterConfigDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|SimpleRegisterConfigDTO|
|&emsp;&emsp;activityName|活动名称|string||
|&emsp;&emsp;activityRemark|活动备注|string||
|&emsp;&emsp;activityStatus|配置状态 1启用  2停用|integer(int32)||
|&emsp;&emsp;id|主键|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"activityName": "",
			"activityRemark": "",
			"activityStatus": 0,
			"id": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 新增配置


**接口地址**:`/activity,/activity/activity/register/config/create`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "activityEndTime": "",
  "activityName": "",
  "activityRemark": "",
  "activitySettings": {
    "conditions": {
      "conditionName": "",
      "conditionType": 0,
      "conditionValue": {},
      "ipAddressLimitTimes": 0,
      "ipAddressUniqueDays": 0,
      "ipAddressUniqueStatus": true,
      "obtainingName": "",
      "obtainingType": 0
    },
    "gainSettings": [
      {
        "multipleNum": 0,
        "rewardAmount": 0,
        "rewardDay": 0,
        "rewardId": 0,
        "rewardName": "",
        "rewardType": 0,
        "rewardTypeName": "",
        "ticket": {
          "ticketId": 0,
          "ticketName": "",
          "ticketNum": 0,
          "ticketType": 0
        }
      }
    ]
  },
  "activityStartTime": "",
  "activityTimeType": 0,
  "id": 0,
  "stationMessage": true
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|RegisterMemberCreateCmd|RegisterMemberCreateCmd|
|&emsp;&emsp;activityEndTime|活动结束时间||false|string(date-time)||
|&emsp;&emsp;activityName|活动名称||false|string||
|&emsp;&emsp;activityRemark|活动备注||false|string||
|&emsp;&emsp;activitySettings|活动设置||false|RegisterSettings|RegisterSettings|
|&emsp;&emsp;&emsp;&emsp;conditions|领取条件||false|RegisterObtainingConditions|RegisterObtainingConditions|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;conditionName|参与类型名称||false|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;conditionType|参与会员类型 1全体新注册会员  2指定代理  3指定注册网址 4指定手机号||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;conditionValue|参与值||false|object||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ipAddressLimitTimes|ip地址限制领取次数||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ipAddressUniqueDays|Ip地址唯一时间,不限制不用传||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ipAddressUniqueStatus|ip地址校验开关||false|boolean||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;obtainingName|领取名称||false|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;obtainingType|1直接到账||false|integer||
|&emsp;&emsp;&emsp;&emsp;gainSettings|领取设置||false|array|RegisterGainSetting|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;multipleNum|倍率||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardAmount|奖励数量||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardDay|奖励天数||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardId|奖励Id||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardName|奖励名称||false|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardType|奖励类型||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardTypeName|奖励类型名称||false|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ticket|票券奖励||false|ActivityTicketDataDTO|ActivityTicketDataDTO|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ticketId|票券Id||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ticketName|票券名称||false|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ticketNum|票券||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ticketType|票券类型||false|integer||
|&emsp;&emsp;activityStartTime|活动开始时间||false|string(date-time)||
|&emsp;&emsp;activityTimeType|活动时间类型 0长期 1自定义||false|integer(int32)||
|&emsp;&emsp;id|活动Id||false|integer(int64)||
|&emsp;&emsp;stationMessage|站内信||false|boolean||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«long»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||integer(int64)|integer(int64)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": 0,
	"isSuccess": true,
	"message": ""
}
```


## 活动配置详情


**接口地址**:`/activity,/activity/activity/register/config/detail/{id}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id|id|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«RegisterConfigDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||RegisterConfigDTO|RegisterConfigDTO|
|&emsp;&emsp;activityEndTime|活动结束时间|integer(int64)||
|&emsp;&emsp;activityName|活动名称|string||
|&emsp;&emsp;activityRemark|活动备注|string||
|&emsp;&emsp;activitySettings|领取设置|RegisterSettings|RegisterSettings|
|&emsp;&emsp;&emsp;&emsp;conditions|领取条件|RegisterObtainingConditions|RegisterObtainingConditions|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;conditionName|参与类型名称|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;conditionType|参与会员类型 1全体新注册会员  2指定代理  3指定注册网址 4指定手机号|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;conditionValue|参与值|object||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ipAddressLimitTimes|ip地址限制领取次数|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ipAddressUniqueDays|Ip地址唯一时间,不限制不用传|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ipAddressUniqueStatus|ip地址校验开关|boolean||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;obtainingName|领取名称|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;obtainingType|1直接到账|integer||
|&emsp;&emsp;&emsp;&emsp;gainSettings|领取设置|array|RegisterGainSetting|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;multipleNum|倍率|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardAmount|奖励数量|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardDay|奖励天数|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardId|奖励Id|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardName|奖励名称|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardType|奖励类型|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardTypeName|奖励类型名称|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ticket|票券奖励|ActivityTicketDataDTO|ActivityTicketDataDTO|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ticketId|票券Id|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ticketName|票券名称|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ticketNum|票券|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ticketType|票券类型|integer||
|&emsp;&emsp;activityStartTime|活动开始时间|integer(int64)||
|&emsp;&emsp;activityStatus|配置状态 1启用  2停用|integer(int32)||
|&emsp;&emsp;activityTimeType|活动时间类型 0长期 1自定义|integer(int32)||
|&emsp;&emsp;createTime|create_time|integer(int64)||
|&emsp;&emsp;id|主键|integer(int64)||
|&emsp;&emsp;operator|operator|string||
|&emsp;&emsp;stationMessage|站内信|boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"activityEndTime": 0,
		"activityName": "",
		"activityRemark": "",
		"activitySettings": {
			"conditions": {
				"conditionName": "",
				"conditionType": 0,
				"conditionValue": {},
				"ipAddressLimitTimes": 0,
				"ipAddressUniqueDays": 0,
				"ipAddressUniqueStatus": true,
				"obtainingName": "",
				"obtainingType": 0
			},
			"gainSettings": [
				{
					"multipleNum": 0,
					"rewardAmount": 0,
					"rewardDay": 0,
					"rewardId": 0,
					"rewardName": "",
					"rewardType": 0,
					"rewardTypeName": "",
					"ticket": {
						"ticketId": 0,
						"ticketName": "",
						"ticketNum": 0,
						"ticketType": 0
					}
				}
			]
		},
		"activityStartTime": 0,
		"activityStatus": 0,
		"activityTimeType": 0,
		"createTime": 0,
		"id": 0,
		"operator": "",
		"stationMessage": true
	},
	"isSuccess": true,
	"message": ""
}
```


## 修改配置


**接口地址**:`/activity,/activity/activity/register/config/edit`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "activityEndTime": "",
  "activityName": "",
  "activityRemark": "",
  "activitySettings": {
    "conditions": {
      "conditionName": "",
      "conditionType": 0,
      "conditionValue": {},
      "ipAddressLimitTimes": 0,
      "ipAddressUniqueDays": 0,
      "ipAddressUniqueStatus": true,
      "obtainingName": "",
      "obtainingType": 0
    },
    "gainSettings": [
      {
        "multipleNum": 0,
        "rewardAmount": 0,
        "rewardDay": 0,
        "rewardId": 0,
        "rewardName": "",
        "rewardType": 0,
        "rewardTypeName": "",
        "ticket": {
          "ticketId": 0,
          "ticketName": "",
          "ticketNum": 0,
          "ticketType": 0
        }
      }
    ]
  },
  "activityStartTime": "",
  "activityTimeType": 0,
  "id": 0,
  "stationMessage": true
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|RegisterMemberCreateCmd|RegisterMemberCreateCmd|
|&emsp;&emsp;activityEndTime|活动结束时间||false|string(date-time)||
|&emsp;&emsp;activityName|活动名称||false|string||
|&emsp;&emsp;activityRemark|活动备注||false|string||
|&emsp;&emsp;activitySettings|活动设置||false|RegisterSettings|RegisterSettings|
|&emsp;&emsp;&emsp;&emsp;conditions|领取条件||false|RegisterObtainingConditions|RegisterObtainingConditions|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;conditionName|参与类型名称||false|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;conditionType|参与会员类型 1全体新注册会员  2指定代理  3指定注册网址 4指定手机号||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;conditionValue|参与值||false|object||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ipAddressLimitTimes|ip地址限制领取次数||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ipAddressUniqueDays|Ip地址唯一时间,不限制不用传||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ipAddressUniqueStatus|ip地址校验开关||false|boolean||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;obtainingName|领取名称||false|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;obtainingType|1直接到账||false|integer||
|&emsp;&emsp;&emsp;&emsp;gainSettings|领取设置||false|array|RegisterGainSetting|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;multipleNum|倍率||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardAmount|奖励数量||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardDay|奖励天数||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardId|奖励Id||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardName|奖励名称||false|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardType|奖励类型||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardTypeName|奖励类型名称||false|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ticket|票券奖励||false|ActivityTicketDataDTO|ActivityTicketDataDTO|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ticketId|票券Id||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ticketName|票券名称||false|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ticketNum|票券||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ticketType|票券类型||false|integer||
|&emsp;&emsp;activityStartTime|活动开始时间||false|string(date-time)||
|&emsp;&emsp;activityTimeType|活动时间类型 0长期 1自定义||false|integer(int32)||
|&emsp;&emsp;id|活动Id||false|integer(int64)||
|&emsp;&emsp;stationMessage|站内信||false|boolean||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 编辑-活动开关配置


**接口地址**:`/activity,/activity/activity/register/config/editStatus/{id}/{status}`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id|id|path|true|integer(int64)||
|status|status|path|true|boolean||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 分页查询注册活动配置


**接口地址**:`/activity,/activity/activity/register/config/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "activityName": "",
  "activityStatus": 0,
  "conditionType": 0,
  "current": 0,
  "endTime": "",
  "size": 0,
  "startTime": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RegisterConfigPageQuery|RegisterConfigPageQuery|
|&emsp;&emsp;activityName|活动名称||false|string||
|&emsp;&emsp;activityStatus|活动状态||false|integer(int32)||
|&emsp;&emsp;conditionType|参与会员类型 1全体新注册会员  2指定代理  3指定注册网址 4指定手机号||false|integer(int32)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||false|string(date-time)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||false|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«RegisterConfigPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|RegisterConfigPageDTO|
|&emsp;&emsp;activityEndTime|活动结束时间|integer(int64)||
|&emsp;&emsp;activityName|活动名称|string||
|&emsp;&emsp;activityRemark|活动备注|string||
|&emsp;&emsp;activityStartTime|活动开始时间|integer(int64)||
|&emsp;&emsp;activityStatus|配置状态 1-启用，2停用|integer(int32)||
|&emsp;&emsp;activityTimeType|活动时间类型 0长期 1自定义|integer(int32)||
|&emsp;&emsp;conditionType|参与会员类型 1全体新注册会员  2指定代理  3指定注册网址 4指定手机号|integer(int32)||
|&emsp;&emsp;createTime|createTime|integer(int64)||
|&emsp;&emsp;id|主键|integer(int64)||
|&emsp;&emsp;operator|operator|string||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"activityEndTime": 0,
			"activityName": "",
			"activityRemark": "",
			"activityStartTime": 0,
			"activityStatus": 0,
			"activityTimeType": 0,
			"conditionType": 0,
			"createTime": 0,
			"id": 0,
			"operator": ""
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 配置设定


**接口地址**:`/activity,/activity/activity/register/config/setting`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«RegisterSettingDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||RegisterSettingDTO|RegisterSettingDTO|
|&emsp;&emsp;conditionTypes|参与类型|array|ConditionTypeDTO|
|&emsp;&emsp;&emsp;&emsp;name|名称|string||
|&emsp;&emsp;&emsp;&emsp;type|参与类型|integer||
|&emsp;&emsp;ipDaysSetting|Ip地址限定|array|integer|
|&emsp;&emsp;obtainingTypes|领取方式|array|ObtainingTypeDTO|
|&emsp;&emsp;&emsp;&emsp;name|名称|string||
|&emsp;&emsp;&emsp;&emsp;type|领取类型|integer||
|&emsp;&emsp;rewardsSetting|奖励设置|array|RewardKindDTO|
|&emsp;&emsp;&emsp;&emsp;allRewards|所有奖励|array|RewardDTO|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardId|奖励Id|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardName|奖励名称|string||
|&emsp;&emsp;&emsp;&emsp;rewardDay|奖励天数|integer||
|&emsp;&emsp;&emsp;&emsp;rewardType|奖励类型|integer||
|&emsp;&emsp;&emsp;&emsp;rewardTypeName|奖励类型名称|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"conditionTypes": [
			{
				"name": "",
				"type": 0
			}
		],
		"ipDaysSetting": [],
		"obtainingTypes": [
			{
				"name": "",
				"type": 0
			}
		],
		"rewardsSetting": [
			{
				"allRewards": [
					{
						"rewardId": 0,
						"rewardName": ""
					}
				],
				"rewardDay": 0,
				"rewardType": 0,
				"rewardTypeName": ""
			}
		]
	},
	"isSuccess": true,
	"message": ""
}
```


# 注册活动相关接口


## 检查是否可以领取奖励


**接口地址**:`/activity,/activity/activity/wap/register/checkDayReward`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«UserCheckRegisterRewardWapDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||UserCheckRegisterRewardWapDTO|UserCheckRegisterRewardWapDTO|
|&emsp;&emsp;checkStatus|领取状态 -1不可领取  0 未领取  1已领取 2已确认 5当次不可领取|integer(int32)||
|&emsp;&emsp;rewardAmount|领取金额|integer(int64)||
|&emsp;&emsp;rewardDay|领取日期|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"checkStatus": 0,
		"rewardAmount": 0,
		"rewardDay": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 用户领取奖励


**接口地址**:`/activity,/activity/activity/wap/register/gainDayAward`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«int»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": 0,
	"isSuccess": true,
	"message": ""
}
```


# 注册活动记录查询


## 分页查询


**接口地址**:`/activity,/activity/activity/register/record/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "account": "",
  "activityId": 0,
  "agentNo": "",
  "current": 0,
  "endTime": "",
  "size": 0,
  "startTime": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RegisterObtainingRecordPageQuery|RegisterObtainingRecordPageQuery|
|&emsp;&emsp;account|账号||false|string||
|&emsp;&emsp;activityId|活动Id||false|integer(int64)||
|&emsp;&emsp;agentNo|上级代理||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||false|string(date-time)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||false|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«RegisterObtainingRecordPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|RegisterObtainingRecordPageDTO|
|&emsp;&emsp;account|会员账号|string||
|&emsp;&emsp;activityId|活动Id|integer(int64)||
|&emsp;&emsp;activityName|活动名称|string||
|&emsp;&emsp;activityRemark|活动备注|string||
|&emsp;&emsp;agentNo|上级代理编号|string||
|&emsp;&emsp;createTime|创建时间|integer(int64)||
|&emsp;&emsp;id|Id|integer(int64)||
|&emsp;&emsp;ipAddress|ip地址|string||
|&emsp;&emsp;multipleNum|倍率|integer(int32)||
|&emsp;&emsp;obtainingTime|领取时间|integer(int64)||
|&emsp;&emsp;rewardAmount|奖励数值|integer(int64)||
|&emsp;&emsp;rewardId|奖励Id|integer(int32)||
|&emsp;&emsp;rewardName|奖励名称|string||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"account": "",
			"activityId": 0,
			"activityName": "",
			"activityRemark": "",
			"agentNo": "",
			"createTime": 0,
			"id": 0,
			"ipAddress": "",
			"multipleNum": 0,
			"obtainingTime": 0,
			"rewardAmount": 0,
			"rewardId": 0,
			"rewardName": ""
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 查询筛选的信息


**接口地址**:`/activity,/activity/activity/register/record/statistics`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "account": "",
  "activityId": 0,
  "agentNo": "",
  "current": 0,
  "endTime": "",
  "size": 0,
  "startTime": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RegisterObtainingRecordPageQuery|RegisterObtainingRecordPageQuery|
|&emsp;&emsp;account|账号||false|string||
|&emsp;&emsp;activityId|活动Id||false|integer(int64)||
|&emsp;&emsp;agentNo|上级代理||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||false|string(date-time)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||false|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«RegisterObtainingRecordStatisticsDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||RegisterObtainingRecordStatisticsDTO|RegisterObtainingRecordStatisticsDTO|
|&emsp;&emsp;totalAmount|派发总额|integer(int64)||
|&emsp;&emsp;totalCustomer|派发人数|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"totalAmount": 0,
		"totalCustomer": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# 活动-全民代理-充值返佣


## 查询老带新充值返佣统计信息


**接口地址**:`/activity,/activity/activity/recommend/rebate/getRebateSum`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询老带新充值返佣统计信息</p>



**请求示例**:


```javascript
{
  "account": "",
  "current": 0,
  "endTime": "",
  "inviteAccount": "",
  "orderNo": "",
  "size": 0,
  "startTime": "",
  "status": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|ActivityRecommendRebateQuery|ActivityRecommendRebateQuery|
|&emsp;&emsp;account|下线玩家||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||true|string||
|&emsp;&emsp;inviteAccount|邀请人账号||false|string||
|&emsp;&emsp;orderNo|订单号||false|string||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||true|string||
|&emsp;&emsp;status|领取状态 0:未结算；1:已结算||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ActivityRecommendRebateSumDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ActivityRecommendRebateSumDTO|ActivityRecommendRebateSumDTO|
|&emsp;&emsp;totalBonus|已发放金额|integer(int64)||
|&emsp;&emsp;totalInviteNum|已发放人数|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"totalBonus": 0,
		"totalInviteNum": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 老带新充值返佣(分页)


**接口地址**:`/activity,/activity/activity/recommend/rebate/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>老带新充值返佣(分页)</p>



**请求示例**:


```javascript
{
  "account": "",
  "current": 0,
  "endTime": "",
  "inviteAccount": "",
  "orderNo": "",
  "size": 0,
  "startTime": "",
  "status": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|ActivityRecommendRebateQuery|ActivityRecommendRebateQuery|
|&emsp;&emsp;account|下线玩家||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||true|string||
|&emsp;&emsp;inviteAccount|邀请人账号||false|string||
|&emsp;&emsp;orderNo|订单号||false|string||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||true|string||
|&emsp;&emsp;status|领取状态 0:未结算；1:已结算||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«ActivityRecommendRebateDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|ActivityRecommendRebateDTO|
|&emsp;&emsp;account|被邀请人账号|string||
|&emsp;&emsp;amount|订单金额|integer(int64)||
|&emsp;&emsp;inviteAccount|邀请人账号|string||
|&emsp;&emsp;orderNo|订单号|string||
|&emsp;&emsp;rebateAmount|返佣金额|integer(int64)||
|&emsp;&emsp;rebateRate|返佣比例|number||
|&emsp;&emsp;rechargeTime|充值时间|string||
|&emsp;&emsp;settleTime|奖结算时间|string||
|&emsp;&emsp;status|状态 0:未结算；1:已结算|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"account": "",
			"amount": 0,
			"inviteAccount": "",
			"orderNo": "",
			"rebateAmount": 0,
			"rebateRate": 0,
			"rechargeTime": "",
			"settleTime": "",
			"status": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


# 活动-全民代理-奖金模块


## 代理人排行榜奖金记录


**接口地址**:`/activity,/activity/activity/recommend/bonus/pageAgentRankRecord`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "account": "",
  "current": 0,
  "cyclicalEndTime": "",
  "cyclicalStartTime": "",
  "size": 0,
  "status": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RecommendAgentRankPageQuery|RecommendAgentRankPageQuery|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;cyclicalEndTime|周期结束时间||false|string(date-time)||
|&emsp;&emsp;cyclicalStartTime|周期开始时间||false|string(date-time)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;status|用户领取状态，0:未领取 1:已领取||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«RecommendAgentRankPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|RecommendAgentRankPageDTO|
|&emsp;&emsp;account|会员账号|string||
|&emsp;&emsp;agentRank|排名|integer(int32)||
|&emsp;&emsp;bonus|奖金|integer(int64)||
|&emsp;&emsp;claimTime|用户领取时间|integer(int64)||
|&emsp;&emsp;cyclicalEndTime|周期结束时间|integer(int64)||
|&emsp;&emsp;cyclicalStartTime|周期开始时间|integer(int64)||
|&emsp;&emsp;drawDate|开奖日期|integer(int64)||
|&emsp;&emsp;id|ID|integer(int64)||
|&emsp;&emsp;standardUsers|合格人数|integer(int32)||
|&emsp;&emsp;status|用户领取状态，0:未领取 1:已领取|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"account": "",
			"agentRank": 0,
			"bonus": 0,
			"claimTime": 0,
			"cyclicalEndTime": 0,
			"cyclicalStartTime": 0,
			"drawDate": 0,
			"id": 0,
			"standardUsers": 0,
			"status": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 奖励记录-投注奖励记录查询（分页）


**接口地址**:`/activity,/activity/activity/recommend/bonus/queryBetPage`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "current": 0,
  "customerAccount": 0,
  "endDate": "",
  "inviterAccount": 0,
  "orderNo": "",
  "rebateReleaseType": 0,
  "sendBonusStatus": 0,
  "size": 0,
  "startDate": "",
  "timeType": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RecommendBonusBetQuery|RecommendBonusBetQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;customerAccount|下线玩家||false|integer(int64)||
|&emsp;&emsp;endDate|结束时间||false|string(date-time)||
|&emsp;&emsp;inviterAccount|邀请人||false|integer(int64)||
|&emsp;&emsp;orderNo|流水编号||false|string||
|&emsp;&emsp;rebateReleaseType|返水时间类型，0-当日 , 1-次日，2-隔日||false|integer(int32)||
|&emsp;&emsp;sendBonusStatus|领取状态 1-待领取，2-已领取||false|integer(int32)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startDate|开始时间||false|string(date-time)||
|&emsp;&emsp;timeType|查询时间类型 1-投注返水日期 (默认),  2-发放日期 ||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«RecommendBonusBetDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|RecommendBonusBetDTO|
|&emsp;&emsp;betAmount|投注金额|integer(int64)||
|&emsp;&emsp;betDate||string(date)||
|&emsp;&emsp;bonusSendTime|派发时间|string(date-time)||
|&emsp;&emsp;bonusType|奖金类型(3:邀请注册奖励,4:邀请充值奖金,1:邀请合格奖金)|integer(int32)||
|&emsp;&emsp;createTime|创建时间|integer(int64)||
|&emsp;&emsp;customerAccount|玩家账号|string||
|&emsp;&emsp;id|ID|integer(int64)||
|&emsp;&emsp;inviterAccount|邀请人|string||
|&emsp;&emsp;orderNo|订单流水号|string||
|&emsp;&emsp;rebateAmount|返水金额|integer(int64)||
|&emsp;&emsp;rebateRate|返水比例|number||
|&emsp;&emsp;rebateReleaseType|返水时间类型，0-当日 , 1-次日，2-隔日|integer(int32)||
|&emsp;&emsp;sendBonusStatus|领取状态 1-待发放，2-已发放|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"betAmount": 0,
			"betDate": "",
			"bonusSendTime": "",
			"bonusType": 0,
			"createTime": 0,
			"customerAccount": "",
			"id": 0,
			"inviterAccount": "",
			"orderNo": "",
			"rebateAmount": 0,
			"rebateRate": 0,
			"rebateReleaseType": 0,
			"sendBonusStatus": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 奖励记录-投注奖励记录查询（合计）


**接口地址**:`/activity,/activity/activity/recommend/bonus/queryBetSum`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "current": 0,
  "customerAccount": 0,
  "endDate": "",
  "inviterAccount": 0,
  "orderNo": "",
  "rebateReleaseType": 0,
  "sendBonusStatus": 0,
  "size": 0,
  "startDate": "",
  "timeType": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RecommendBonusBetQuery|RecommendBonusBetQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;customerAccount|下线玩家||false|integer(int64)||
|&emsp;&emsp;endDate|结束时间||false|string(date-time)||
|&emsp;&emsp;inviterAccount|邀请人||false|integer(int64)||
|&emsp;&emsp;orderNo|流水编号||false|string||
|&emsp;&emsp;rebateReleaseType|返水时间类型，0-当日 , 1-次日，2-隔日||false|integer(int32)||
|&emsp;&emsp;sendBonusStatus|领取状态 1-待领取，2-已领取||false|integer(int32)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startDate|开始时间||false|string(date-time)||
|&emsp;&emsp;timeType|查询时间类型 1-投注返水日期 (默认),  2-发放日期 ||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«RecommendBonusBetSumDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||RecommendBonusBetSumDTO|RecommendBonusBetSumDTO|
|&emsp;&emsp;betAmount|投注金额|integer(int64)||
|&emsp;&emsp;receivedAmount|已领取金额|integer(int64)||
|&emsp;&emsp;receivedCount|已领取人数|integer(int32)||
|&emsp;&emsp;unclaimedAmount|未领取金额|integer(int64)||
|&emsp;&emsp;unclaimedCount|未领取人数|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"betAmount": 0,
		"receivedAmount": 0,
		"receivedCount": 0,
		"unclaimedAmount": 0,
		"unclaimedCount": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 奖励记录-受邀人奖金查询（分页）


**接口地址**:`/activity,/activity/activity/recommend/bonus/queryInviteePage`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "current": 0,
  "endDate": "2023-05-20",
  "inviteeAccount": "",
  "inviterAccount": "",
  "orderNo": "",
  "size": 0,
  "startDate": "2023-05-16"
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RecommendBonusInviteeQuery|RecommendBonusInviteeQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endDate|结束日期||false|string(date-time)||
|&emsp;&emsp;inviteeAccount|受邀人账号||false|string||
|&emsp;&emsp;inviterAccount|邀请人账号||false|string||
|&emsp;&emsp;orderNo|流水编号||false|string||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startDate|开始日期||false|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«RecommendBonusInviteeDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|RecommendBonusInviteeDTO|
|&emsp;&emsp;bonus|奖金|integer(int64)||
|&emsp;&emsp;id|ID|integer(int64)||
|&emsp;&emsp;inviteeAccount|受邀人账号|string||
|&emsp;&emsp;inviteeId|受邀人ID|integer(int64)||
|&emsp;&emsp;inviterAccount|邀请人账号|string||
|&emsp;&emsp;inviterId|邀请人ID|integer(int64)||
|&emsp;&emsp;orderNo|订单流水号|string||
|&emsp;&emsp;sendBonusTime|奖金方法时间|string(date-time)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"bonus": 0,
			"id": 0,
			"inviteeAccount": "",
			"inviteeId": 0,
			"inviterAccount": "",
			"inviterId": 0,
			"orderNo": "",
			"sendBonusTime": ""
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 奖励记录-受邀人奖金查询（合计）


**接口地址**:`/activity,/activity/activity/recommend/bonus/queryInviteeSum`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "current": 0,
  "endDate": "2023-05-20",
  "inviteeAccount": "",
  "inviterAccount": "",
  "orderNo": "",
  "size": 0,
  "startDate": "2023-05-16"
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RecommendBonusInviteeQuery|RecommendBonusInviteeQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endDate|结束日期||false|string(date-time)||
|&emsp;&emsp;inviteeAccount|受邀人账号||false|string||
|&emsp;&emsp;inviterAccount|邀请人账号||false|string||
|&emsp;&emsp;orderNo|流水编号||false|string||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startDate|开始日期||false|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«RecommendBonusInviteeSumDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||RecommendBonusInviteeSumDTO|RecommendBonusInviteeSumDTO|
|&emsp;&emsp;bonus|邀请奖金|integer(int64)||
|&emsp;&emsp;inviteeNums|受邀人数量|integer(int32)||
|&emsp;&emsp;inviterNums|邀请人数量|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"bonus": 0,
		"inviteeNums": 0,
		"inviterNums": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 奖励记录-邀请人奖金查询（分页）


**接口地址**:`/activity,/activity/activity/recommend/bonus/queryInviterPage`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "bonusType": 0,
  "current": 0,
  "endDate": "2023-05-20",
  "inviterAccount": "",
  "orderNo": "",
  "size": 0,
  "startDate": "2023-05-16"
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RecommendBonusInviterQuery|RecommendBonusInviterQuery|
|&emsp;&emsp;bonusType|奖金类型(3:邀请注册奖励,4:邀请充值奖金,1:邀请合格奖金)||false|integer(int32)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endDate|结束日期||false|string(date-time)||
|&emsp;&emsp;inviterAccount|邀请人账号||false|string||
|&emsp;&emsp;orderNo|流水编号||false|string||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startDate|开始日期||false|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«RecommendBonusInviterDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|RecommendBonusInviterDTO|
|&emsp;&emsp;bonus|奖金|integer(int64)||
|&emsp;&emsp;bonusType|奖金类型(3:邀请注册奖励,4:邀请充值奖金,1:邀请合格奖金)|integer(int32)||
|&emsp;&emsp;id|ID|integer(int64)||
|&emsp;&emsp;inviteeAccount|受邀人账号|string||
|&emsp;&emsp;inviteeId|受邀人ID|integer(int64)||
|&emsp;&emsp;inviterAccount|邀请人账号|string||
|&emsp;&emsp;inviterId|邀请人ID|integer(int64)||
|&emsp;&emsp;orderNo|订单流水号|string||
|&emsp;&emsp;sendBonusTime|派发时间|string(date-time)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"bonus": 0,
			"bonusType": 0,
			"id": 0,
			"inviteeAccount": "",
			"inviteeId": 0,
			"inviterAccount": "",
			"inviterId": 0,
			"orderNo": "",
			"sendBonusTime": ""
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 奖励记录-邀请人奖金查询（合计）


**接口地址**:`/activity,/activity/activity/recommend/bonus/queryInviterSum`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "bonusType": 0,
  "current": 0,
  "endDate": "2023-05-20",
  "inviterAccount": "",
  "orderNo": "",
  "size": 0,
  "startDate": "2023-05-16"
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RecommendBonusInviterQuery|RecommendBonusInviterQuery|
|&emsp;&emsp;bonusType|奖金类型(3:邀请注册奖励,4:邀请充值奖金,1:邀请合格奖金)||false|integer(int32)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endDate|结束日期||false|string(date-time)||
|&emsp;&emsp;inviterAccount|邀请人账号||false|string||
|&emsp;&emsp;orderNo|流水编号||false|string||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startDate|开始日期||false|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«RecommendBonusInviterSumDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||RecommendBonusInviterSumDTO|RecommendBonusInviterSumDTO|
|&emsp;&emsp;achieveBonus|成就奖金|integer(int64)||
|&emsp;&emsp;depositBonus|存款奖金|integer(int64)||
|&emsp;&emsp;depositNums|完成存款人数|integer(int32)||
|&emsp;&emsp;qualifiedBonus|合格奖金|integer(int64)||
|&emsp;&emsp;qualifiedNums|合格人数|integer(int32)||
|&emsp;&emsp;rebateBonus|充值返佣奖金|integer(int64)||
|&emsp;&emsp;registerBonus|注册奖金|integer(int64)||
|&emsp;&emsp;registerBonusNums|获取注册奖金人数|integer(int32)||
|&emsp;&emsp;registerNums|完成注册人数|integer(int32)||
|&emsp;&emsp;totalBonus|奖金合计|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"achieveBonus": 0,
		"depositBonus": 0,
		"depositNums": 0,
		"qualifiedBonus": 0,
		"qualifiedNums": 0,
		"rebateBonus": 0,
		"registerBonus": 0,
		"registerBonusNums": 0,
		"registerNums": 0,
		"totalBonus": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 全民代理奖金发放-未发放列表查询


**接口地址**:`/activity,/activity/activity/recommend/bonus/queryNotSentPage`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "current": 0,
  "inviterAccount": "",
  "registerIp": "",
  "size": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RecommendBonusNotSentQuery|RecommendBonusNotSentQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;inviterAccount|邀请人账号||false|string||
|&emsp;&emsp;registerIp|注册IP||false|string||
|&emsp;&emsp;size|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«RecommendBonusNotSentDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|RecommendBonusNotSentDTO|
|&emsp;&emsp;bonus||integer(int64)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;inviteBonus||integer(int64)||
|&emsp;&emsp;inviteeCustomerAccount||string||
|&emsp;&emsp;inviteeCustomerId||integer(int64)||
|&emsp;&emsp;inviterCustomerAccount||string||
|&emsp;&emsp;inviterCustomerId||integer(int64)||
|&emsp;&emsp;recommendCount||integer(int32)||
|&emsp;&emsp;registerIp||string||
|&emsp;&emsp;registerTime||string(date-time)||
|&emsp;&emsp;sameIp||boolean||
|&emsp;&emsp;sameIpRegCount||integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"bonus": 0,
			"id": 0,
			"inviteBonus": 0,
			"inviteeCustomerAccount": "",
			"inviteeCustomerId": 0,
			"inviterCustomerAccount": "",
			"inviterCustomerId": 0,
			"recommendCount": 0,
			"registerIp": "",
			"registerTime": "",
			"sameIp": true,
			"sameIpRegCount": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## querySentPage


**接口地址**:`/activity,/activity/activity/recommend/bonus/querySentPage`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "current": 0,
  "inviteeAccount": "",
  "inviterAccount": "",
  "operatorAccount": "",
  "sendBonusStatus": 0,
  "sendBonusType": 0,
  "size": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RecommendBonusSentQuery|RecommendBonusSentQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;inviteeAccount|受邀人账号||false|string||
|&emsp;&emsp;inviterAccount|邀请人账号||false|string||
|&emsp;&emsp;operatorAccount|操作人||false|string||
|&emsp;&emsp;sendBonusStatus|派发状态： 1-待发放，2-已发放，3-已拒绝,全部=传null即可||false|integer(int32)||
|&emsp;&emsp;sendBonusType|派发方式 1-手动,2-自动||false|integer(int32)||
|&emsp;&emsp;size|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«RecommendBonusSentDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|RecommendBonusSentDTO|
|&emsp;&emsp;bonus|邀请奖金|integer(int64)||
|&emsp;&emsp;createTime|创建时间，达标时间|string(date-time)||
|&emsp;&emsp;id|ID|integer(int64)||
|&emsp;&emsp;inviteeAccount|受邀人账号|string||
|&emsp;&emsp;inviteeId|受邀人ID|integer(int64)||
|&emsp;&emsp;inviterAccount|邀请人账号|string||
|&emsp;&emsp;inviterId|邀请人ID|integer(int64)||
|&emsp;&emsp;operatorAccount|操作人账号|string||
|&emsp;&emsp;operatorId|操作人ID|integer(int64)||
|&emsp;&emsp;orderNo|订单流水号|string||
|&emsp;&emsp;sendBonusStatus|派发状态： 1-待发放，2-已发放，3-已拒绝|integer(int32)||
|&emsp;&emsp;sendBonusTime|派发时间|string(date-time)||
|&emsp;&emsp;sendBonusType|发放方式 1-人工，2-自动|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"bonus": 0,
			"createTime": "",
			"id": 0,
			"inviteeAccount": "",
			"inviteeId": 0,
			"inviterAccount": "",
			"inviterId": 0,
			"operatorAccount": "",
			"operatorId": 0,
			"orderNo": "",
			"sendBonusStatus": 0,
			"sendBonusTime": "",
			"sendBonusType": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## querySentSum


**接口地址**:`/activity,/activity/activity/recommend/bonus/querySentSum`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "current": 0,
  "inviteeAccount": "",
  "inviterAccount": "",
  "operatorAccount": "",
  "sendBonusStatus": 0,
  "sendBonusType": 0,
  "size": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RecommendBonusSentQuery|RecommendBonusSentQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;inviteeAccount|受邀人账号||false|string||
|&emsp;&emsp;inviterAccount|邀请人账号||false|string||
|&emsp;&emsp;operatorAccount|操作人||false|string||
|&emsp;&emsp;sendBonusStatus|派发状态： 1-待发放，2-已发放，3-已拒绝,全部=传null即可||false|integer(int32)||
|&emsp;&emsp;sendBonusType|派发方式 1-手动,2-自动||false|integer(int32)||
|&emsp;&emsp;size|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«RecommendBonusSentSumDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||RecommendBonusSentSumDTO|RecommendBonusSentSumDTO|
|&emsp;&emsp;bonus||integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"bonus": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 全民代理奖金发放 - 拒绝发放


**接口地址**:`/activity,/activity/activity/recommend/bonus/refuse`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "items": [
    {
      "content": "",
      "subTitle": "",
      "title": ""
    }
  ]
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|RefuseCmd|RefuseCmd|
|&emsp;&emsp;items|||false|array|Item|
|&emsp;&emsp;&emsp;&emsp;content|内容||false|string||
|&emsp;&emsp;&emsp;&emsp;subTitle|副标题||false|string||
|&emsp;&emsp;&emsp;&emsp;title|标题||false|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 全民代理奖金发放 - 执行发放


**接口地址**:`/activity,/activity/activity/recommend/bonus/sendBonus`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "items": [
    {
      "content": "",
      "subTitle": "",
      "title": ""
    }
  ]
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|SendBonusCmd|SendBonusCmd|
|&emsp;&emsp;items|||false|array|Item|
|&emsp;&emsp;&emsp;&emsp;content|内容||false|string||
|&emsp;&emsp;&emsp;&emsp;subTitle|副标题||false|string||
|&emsp;&emsp;&emsp;&emsp;title|标题||false|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 代理人排行榜奖金记录统计


**接口地址**:`/activity,/activity/activity/recommend/bonus/sumAgentRankRecord`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "account": "",
  "current": 0,
  "cyclicalEndTime": "",
  "cyclicalStartTime": "",
  "size": 0,
  "status": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RecommendAgentRankPageQuery|RecommendAgentRankPageQuery|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;cyclicalEndTime|周期结束时间||false|string(date-time)||
|&emsp;&emsp;cyclicalStartTime|周期开始时间||false|string(date-time)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;status|用户领取状态，0:未领取 1:已领取||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«RecommendAgentRankSumDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||RecommendAgentRankSumDTO|RecommendAgentRankSumDTO|
|&emsp;&emsp;bonusSum|派发总额总额|integer(int64)||
|&emsp;&emsp;claimBonusSum|领取总额|integer(int64)||
|&emsp;&emsp;claimCount|领取人数|integer(int32)||
|&emsp;&emsp;count|派发人数|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"bonusSum": 0,
		"claimBonusSum": 0,
		"claimCount": 0,
		"count": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# 活动-全民代理-成就奖


## 查询成就奖统计信息


**接口地址**:`/activity,/activity/activity/recommend/achieve/getAchieveSum`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询成就奖统计信息</p>



**请求示例**:


```javascript
{
  "current": 0,
  "endTime": "",
  "inviteAccount": "",
  "size": 0,
  "startTime": "",
  "status": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|ActivityRecommendAchieveQuery|ActivityRecommendAchieveQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||true|string||
|&emsp;&emsp;inviteAccount|邀请账号||false|string||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||true|string||
|&emsp;&emsp;status|奖励状态0待领取 1已领取 2已发放||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ActivityRecommendAchieveSumDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ActivityRecommendAchieveSumDTO|ActivityRecommendAchieveSumDTO|
|&emsp;&emsp;totalBonus|成就奖总奖金|integer(int64)||
|&emsp;&emsp;totalInviteNum|总邀请人数|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"totalBonus": 0,
		"totalInviteNum": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 查询成就奖(分页)


**接口地址**:`/activity,/activity/activity/recommend/achieve/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询成就奖(分页)</p>



**请求示例**:


```javascript
{
  "current": 0,
  "endTime": "",
  "inviteAccount": "",
  "size": 0,
  "startTime": "",
  "status": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|ActivityRecommendAchieveQuery|ActivityRecommendAchieveQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||true|string||
|&emsp;&emsp;inviteAccount|邀请账号||false|string||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||true|string||
|&emsp;&emsp;status|奖励状态0待领取 1已领取 2已发放||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«ActivityRecommendAchieveDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|ActivityRecommendAchieveDTO|
|&emsp;&emsp;bonus|邀请奖金|integer(int64)||
|&emsp;&emsp;bonusTime|到账时间|string||
|&emsp;&emsp;id|id|integer(int64)||
|&emsp;&emsp;inviteAccount|邀请人账号|string||
|&emsp;&emsp;inviteNum|邀请人数|integer(int32)||
|&emsp;&emsp;receiveTime|领取时间|string||
|&emsp;&emsp;rewardTime|奖励时间|string||
|&emsp;&emsp;status|奖励状态0未领取 1已领取 2已发放|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"bonus": 0,
			"bonusTime": "",
			"id": 0,
			"inviteAccount": "",
			"inviteNum": 0,
			"receiveTime": "",
			"rewardTime": "",
			"status": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


# 活动-全民代理-文案管理


## getInfo


**接口地址**:`/activity,/activity/activity/recommend/copywriting/getInfo`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ActivityRecommendCopywritingDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ActivityRecommendCopywritingDTO|ActivityRecommendCopywritingDTO|
|&emsp;&emsp;achieve||Item0|Item0|
|&emsp;&emsp;&emsp;&emsp;content||string||
|&emsp;&emsp;&emsp;&emsp;subTitle||string||
|&emsp;&emsp;&emsp;&emsp;title||string||
|&emsp;&emsp;&emsp;&emsp;updateBy||integer||
|&emsp;&emsp;&emsp;&emsp;updateTime||integer||
|&emsp;&emsp;bet||Item0|Item0|
|&emsp;&emsp;&emsp;&emsp;content||string||
|&emsp;&emsp;&emsp;&emsp;subTitle||string||
|&emsp;&emsp;&emsp;&emsp;title||string||
|&emsp;&emsp;&emsp;&emsp;updateBy||integer||
|&emsp;&emsp;&emsp;&emsp;updateTime||integer||
|&emsp;&emsp;invite||Item0|Item0|
|&emsp;&emsp;&emsp;&emsp;content||string||
|&emsp;&emsp;&emsp;&emsp;subTitle||string||
|&emsp;&emsp;&emsp;&emsp;title||string||
|&emsp;&emsp;&emsp;&emsp;updateBy||integer||
|&emsp;&emsp;&emsp;&emsp;updateTime||integer||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"achieve": {
			"content": "",
			"subTitle": "",
			"title": "",
			"updateBy": 0,
			"updateTime": 0
		},
		"bet": {
			"content": "",
			"subTitle": "",
			"title": "",
			"updateBy": 0,
			"updateTime": 0
		},
		"invite": {
			"content": "",
			"subTitle": "",
			"title": "",
			"updateBy": 0,
			"updateTime": 0
		}
	},
	"isSuccess": true,
	"message": ""
}
```


## updateInfo


**接口地址**:`/activity,/activity/activity/recommend/copywriting/updateInfo`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "achieve": {
    "content": "",
    "subTitle": "",
    "title": ""
  },
  "bet": {
    "content": "",
    "subTitle": "",
    "title": ""
  },
  "invite": {
    "content": "",
    "subTitle": "",
    "title": ""
  },
  "updateBy": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|ActivityRecommendCopywritingCmd|ActivityRecommendCopywritingCmd|
|&emsp;&emsp;achieve|||false|Item|Item|
|&emsp;&emsp;&emsp;&emsp;content|内容||false|string||
|&emsp;&emsp;&emsp;&emsp;subTitle|副标题||false|string||
|&emsp;&emsp;&emsp;&emsp;title|标题||false|string||
|&emsp;&emsp;bet|||false|Item|Item|
|&emsp;&emsp;&emsp;&emsp;content|内容||false|string||
|&emsp;&emsp;&emsp;&emsp;subTitle|副标题||false|string||
|&emsp;&emsp;&emsp;&emsp;title|标题||false|string||
|&emsp;&emsp;invite|||false|Item|Item|
|&emsp;&emsp;&emsp;&emsp;content|内容||false|string||
|&emsp;&emsp;&emsp;&emsp;subTitle|副标题||false|string||
|&emsp;&emsp;&emsp;&emsp;title|标题||false|string||
|&emsp;&emsp;updateBy|修改人ID||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


# 活动-全民代理-邀请人


## 冻结邀请人


**接口地址**:`/activity,/activity/activity/recommend/inviter/freeze`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "customerId": 0,
  "id": 0,
  "operatorId": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|InviterFreezeCmd|InviterFreezeCmd|
|&emsp;&emsp;customerId|被冻结邀请人ID||false|integer(int64)||
|&emsp;&emsp;id|ID||false|integer(int64)||
|&emsp;&emsp;operatorId|操作人ID||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 查询邀请奖励合计


**接口地址**:`/activity,/activity/activity/recommend/inviter/query/sum`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "current": 0,
  "customerAccount": "",
  "customerId": 0,
  "size": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RecommendInviterQuery|RecommendInviterQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;customerAccount|邀请人账号||false|string||
|&emsp;&emsp;customerId|用户编码||false|integer(int64)||
|&emsp;&emsp;size|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«RecommendInviterSumDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||RecommendInviterSumDTO|RecommendInviterSumDTO|
|&emsp;&emsp;inviteBonusSum|累计邀请奖金|integer(int64)||
|&emsp;&emsp;inviteRebateSum|返水奖金|integer(int64)||
|&emsp;&emsp;recommendNums|推荐总人数|integer(int32)||
|&emsp;&emsp;validRecommendNums|有效人数|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"inviteBonusSum": 0,
		"inviteRebateSum": 0,
		"recommendNums": 0,
		"validRecommendNums": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 查询分页


**接口地址**:`/activity,/activity/activity/recommend/inviter/queryPage`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "current": 0,
  "customerAccount": "",
  "customerId": 0,
  "size": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RecommendInviterQuery|RecommendInviterQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;customerAccount|邀请人账号||false|string||
|&emsp;&emsp;customerId|用户编码||false|integer(int64)||
|&emsp;&emsp;size|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«RecommendInviterDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|RecommendInviterDTO|
|&emsp;&emsp;customerAccount|邀请人账号|string||
|&emsp;&emsp;customerId|用户编码|integer(int64)||
|&emsp;&emsp;id|id|integer(int64)||
|&emsp;&emsp;inviteBonus|邀请奖励|integer(int64)||
|&emsp;&emsp;inviteDepositBonusSum||integer(int64)||
|&emsp;&emsp;inviteRebate|邀请返水|integer(int64)||
|&emsp;&emsp;inviteRegisterBonusSum||integer(int64)||
|&emsp;&emsp;inviterStatus|邀请状态： 1-正常，2-冻结|integer(int32)||
|&emsp;&emsp;l2Count|L2人数|integer(int32)||
|&emsp;&emsp;l3Count|L3人数|integer(int32)||
|&emsp;&emsp;l4Count|L4人数|integer(int32)||
|&emsp;&emsp;recommendCount|推荐人数|integer(int32)||
|&emsp;&emsp;totalBonus|累计邀请奖金|integer(int64)||
|&emsp;&emsp;totalRebateAmount|总累计返水金额|integer(int64)||
|&emsp;&emsp;validRecommendCount|有效推荐人数|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"customerAccount": "",
			"customerId": 0,
			"id": 0,
			"inviteBonus": 0,
			"inviteDepositBonusSum": 0,
			"inviteRebate": 0,
			"inviteRegisterBonusSum": 0,
			"inviterStatus": 0,
			"l2Count": 0,
			"l3Count": 0,
			"l4Count": 0,
			"recommendCount": 0,
			"totalBonus": 0,
			"totalRebateAmount": 0,
			"validRecommendCount": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 解冻邀请人


**接口地址**:`/activity,/activity/activity/recommend/inviter/unfreeze`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "customerId": 0,
  "id": 0,
  "operatorId": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|InviterFreezeCmd|InviterFreezeCmd|
|&emsp;&emsp;customerId|被冻结邀请人ID||false|integer(int64)||
|&emsp;&emsp;id|ID||false|integer(int64)||
|&emsp;&emsp;operatorId|操作人ID||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


# 活动-全民代理-配置设置


## 查询配置信息


**接口地址**:`/activity,/activity/activity/recommend/config/queryConfig`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ActivityRecommendConfigDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ActivityRecommendConfigDTO|ActivityRecommendConfigDTO|
|&emsp;&emsp;achievementConfigs|成就奖金配置|array|ActivityRecommendAchieveConfigDTO|
|&emsp;&emsp;&emsp;&emsp;bonus|奖金|integer||
|&emsp;&emsp;&emsp;&emsp;id|id|integer||
|&emsp;&emsp;&emsp;&emsp;inviteNum|邀请人数|integer||
|&emsp;&emsp;&emsp;&emsp;multiple|奖金稽核倍数|integer||
|&emsp;&emsp;achievementCycle|成就奖金周期 1:长期；2:月；3:周；4:天|integer(int32)||
|&emsp;&emsp;achievementSwitch|成就奖金开关 1:开；2:关|integer(int32)||
|&emsp;&emsp;agentDepositConfigs|代理邀请充值返佣配置|array|AgentDepositConfigDTO|
|&emsp;&emsp;&emsp;&emsp;agentLevel|代理等级|integer||
|&emsp;&emsp;&emsp;&emsp;agentTitle|代理等级名称|string||
|&emsp;&emsp;&emsp;&emsp;level1DepositRate|一级充值返佣返水比例|number||
|&emsp;&emsp;&emsp;&emsp;level2DepositRate|二级充值返佣返水比例|number||
|&emsp;&emsp;&emsp;&emsp;level3DepositRate|三级充值返佣返水比例|number||
|&emsp;&emsp;&emsp;&emsp;level4DepositRate|四级充值返佣返水比例|number||
|&emsp;&emsp;agentInviterConfigs|代理邀请合格奖金配置|array|AgentInviterConfigDTO|
|&emsp;&emsp;&emsp;&emsp;agentLevel|代理等级|integer||
|&emsp;&emsp;&emsp;&emsp;agentTitle|代理等级名称|string||
|&emsp;&emsp;&emsp;&emsp;inviteeBonus|受邀人奖金|integer||
|&emsp;&emsp;&emsp;&emsp;inviterBonus|邀请人奖金|integer||
|&emsp;&emsp;agentRankConfig| 代理排名配置配置 字符串数组|array|number|
|&emsp;&emsp;agentRankSwitch|代理邀请排行榜返佣开关 1:开；2:关|integer(int32)||
|&emsp;&emsp;agentRebateConfigs|代理邀请投注返佣配置|array|AgentRebateConfigDTO|
|&emsp;&emsp;&emsp;&emsp;agentLevel|代理等级|integer||
|&emsp;&emsp;&emsp;&emsp;agentTitle|代理等级名称|string||
|&emsp;&emsp;&emsp;&emsp;level1RebateRate|一级返水比例|number||
|&emsp;&emsp;&emsp;&emsp;level2RebateRate|二级返水比例|number||
|&emsp;&emsp;&emsp;&emsp;level3RebateRate|三级返水比例|number||
|&emsp;&emsp;&emsp;&emsp;level4RebateRate|四级返水比例|number||
|&emsp;&emsp;&emsp;&emsp;typeId|游戏类型ID|integer||
|&emsp;&emsp;&emsp;&emsp;typeName|游戏类别名称|string||
|&emsp;&emsp;&emsp;&emsp;typeNo|游戏类型编码|string||
|&emsp;&emsp;agentSumAmount| 代理排行榜总金额|integer(int64)||
|&emsp;&emsp;auditSwitch|启动稽核开关|integer(int32)||
|&emsp;&emsp;auditValue|稽核值|number||
|&emsp;&emsp;bonusReleaseType|奖金发放时间类型，1-达标后发放，2-达标后次日，-达标后隔日|integer(int32)||
|&emsp;&emsp;depositRebateRate|充值返佣比例 旧的字段（已废弃)|number||
|&emsp;&emsp;depositSwitch|充值返佣开关 1:开；2:关 |integer(int32)||
|&emsp;&emsp;entranceSwitch|活动入口开关，1-开，2-关|integer(int32)||
|&emsp;&emsp;finishTaskDays|完成任务时间限期（天）|integer(int32)||
|&emsp;&emsp;inviteDepositBonus|邀请注册充值奖金|integer(int64)||
|&emsp;&emsp;inviteDepositBonusSwitch|邀请注册充值奖金开关 1开 2关,默认关闭|integer(int32)||
|&emsp;&emsp;inviteRegisterBonus|邀请注册奖金|integer(int64)||
|&emsp;&emsp;inviteRegisterBonusBool|邀请注册累计最大奖金池|integer(int64)||
|&emsp;&emsp;inviteRegisterBonusIpLimit|邀请注册奖金,同IP限制数，默认1个，0：不限制|integer(int32)||
|&emsp;&emsp;inviteRegisterBonusSwitch|邀请注册奖金开关 1开 2关,默认关闭|integer(int32)||
|&emsp;&emsp;invitedAmount|累计邀请金额|integer(int64)||
|&emsp;&emsp;invitedAmountCheck|检查邀请金额，1-检查，-不检查|integer(int32)||
|&emsp;&emsp;invitedCount|累计邀请人数|integer(int32)||
|&emsp;&emsp;invitedCountCheck|检查邀请次数，1-检查，2-不检查|integer(int32)||
|&emsp;&emsp;inviteeBonus|受邀人奖金旧的字段（已废弃)|integer(int64)||
|&emsp;&emsp;inviteeBonusCheck|受邀人奖金,1-开,2-关 旧的字段（已废弃)|integer(int32)||
|&emsp;&emsp;inviterBonus|邀请人奖金 旧的字段（已废弃)|integer(int64)||
|&emsp;&emsp;inviterBonusCheck|邀请人奖金开关,1-开,2-关 旧的字段（已废弃)|integer(int32)||
|&emsp;&emsp;level1RebateRate|一级返水比例 旧的字段（已废弃)|number||
|&emsp;&emsp;level2RebateRate|二级返水比例 旧的字段（已废弃)|number||
|&emsp;&emsp;level3RebateRate|三级返水比例 旧的字段（已废弃)|number||
|&emsp;&emsp;level4RebateRate|四级返水比例 旧的字段（已废弃)|number||
|&emsp;&emsp;limitIpCount| 合格用户条件同ip限制数量|integer(int32)||
|&emsp;&emsp;limitIpCountSwitch|合格用户条件同ip 开关，1-开，2-关|integer(int32)||
|&emsp;&emsp;manualBonusSwitch|人工发放开关，1-开，2-关|integer(int32)||
|&emsp;&emsp;minBetTotal|最低有效投注总额|integer(int64)||
|&emsp;&emsp;minBetTotalCheck|最低有效投注总额开关,1-开,2-关|integer(int32)||
|&emsp;&emsp;minDepositTotal|最低存款总额|integer(int64)||
|&emsp;&emsp;minDepositTotalCheck|最低存款总额开关，1-开,2-关|integer(int32)||
|&emsp;&emsp;mobileValidCheck|是否验证手机号，1-开，2-关|integer(int32)||
|&emsp;&emsp;qualifiedGameTypes|合格用户游戏类型 多个都号隔开|string||
|&emsp;&emsp;rebateGameTypeSet|返水游戏类型集合|string||
|&emsp;&emsp;rebateReleaseType|返水时间类型，1-次日，2-隔日|integer(int32)||
|&emsp;&emsp;rebateSwitch|投注返水开关 1:开；2:关|integer(int32)||
|&emsp;&emsp;recommendUrl|受邀访问地址|string||
|&emsp;&emsp;rewardSwitch|推荐奖励开关，1-开，2-关|integer(int32)||
|&emsp;&emsp;sameIpCheck|IP是否相同检查，1-检查，2-不检查|integer(int32)||
|&emsp;&emsp;sameIpRegCheck|IP注册次数检查，1-检查，2-不检查|integer(int32)||
|&emsp;&emsp;sameIpRegCount|IP注册次数|integer(int32)||
|&emsp;&emsp;shareContent|分享内容|string||
|&emsp;&emsp;updateAccount|修改人账号|string||
|&emsp;&emsp;updateBy|修改人ID|integer(int64)||
|&emsp;&emsp;updateTime|更新时间|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"achievementConfigs": [
			{
				"bonus": 0,
				"id": 0,
				"inviteNum": 0,
				"multiple": 0
			}
		],
		"achievementCycle": 0,
		"achievementSwitch": 0,
		"agentDepositConfigs": [
			{
				"agentLevel": 0,
				"agentTitle": "",
				"level1DepositRate": 0,
				"level2DepositRate": 0,
				"level3DepositRate": 0,
				"level4DepositRate": 0
			}
		],
		"agentInviterConfigs": [
			{
				"agentLevel": 0,
				"agentTitle": "",
				"inviteeBonus": 0,
				"inviterBonus": 0
			}
		],
		"agentRankConfig": [],
		"agentRankSwitch": 0,
		"agentRebateConfigs": [
			{
				"agentLevel": 0,
				"agentTitle": "",
				"level1RebateRate": 0,
				"level2RebateRate": 0,
				"level3RebateRate": 0,
				"level4RebateRate": 0,
				"typeId": 0,
				"typeName": "",
				"typeNo": ""
			}
		],
		"agentSumAmount": 0,
		"auditSwitch": 0,
		"auditValue": 0,
		"bonusReleaseType": 0,
		"depositRebateRate": 0,
		"depositSwitch": 0,
		"entranceSwitch": 0,
		"finishTaskDays": 0,
		"inviteDepositBonus": 0,
		"inviteDepositBonusSwitch": 0,
		"inviteRegisterBonus": 0,
		"inviteRegisterBonusBool": 0,
		"inviteRegisterBonusIpLimit": 0,
		"inviteRegisterBonusSwitch": 0,
		"invitedAmount": 0,
		"invitedAmountCheck": 0,
		"invitedCount": 0,
		"invitedCountCheck": 0,
		"inviteeBonus": 0,
		"inviteeBonusCheck": 0,
		"inviterBonus": 0,
		"inviterBonusCheck": 0,
		"level1RebateRate": 0,
		"level2RebateRate": 0,
		"level3RebateRate": 0,
		"level4RebateRate": 0,
		"limitIpCount": 0,
		"limitIpCountSwitch": 0,
		"manualBonusSwitch": 0,
		"minBetTotal": 0,
		"minBetTotalCheck": 0,
		"minDepositTotal": 0,
		"minDepositTotalCheck": 0,
		"mobileValidCheck": 0,
		"qualifiedGameTypes": "",
		"rebateGameTypeSet": "",
		"rebateReleaseType": 0,
		"rebateSwitch": 0,
		"recommendUrl": "",
		"rewardSwitch": 0,
		"sameIpCheck": 0,
		"sameIpRegCheck": 0,
		"sameIpRegCount": 0,
		"shareContent": "",
		"updateAccount": "",
		"updateBy": 0,
		"updateTime": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 保存配置信息


**接口地址**:`/activity,/activity/activity/recommend/config/saveConfig`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "achievementConfigs": [
    {
      "bonus": 0,
      "inviteNum": 0,
      "multiple": 0
    }
  ],
  "achievementCycle": 0,
  "achievementSwitch": 0,
  "agentDepositConfigs": [
    {
      "agentLevel": 0,
      "agentTitle": "",
      "level1DepositRate": 0,
      "level2DepositRate": 0,
      "level3DepositRate": 0,
      "level4DepositRate": 0
    }
  ],
  "agentInviterConfigs": [
    {
      "agentLevel": 0,
      "agentTitle": "",
      "inviteeBonus": 0,
      "inviterBonus": 0
    }
  ],
  "agentRankConfig": [],
  "agentRankSwitch": 0,
  "auditSwitch": 0,
  "auditValue": 0,
  "bonusReleaseType": 0,
  "depositRebateRate": 0,
  "depositSwitch": 0,
  "entranceSwitch": 0,
  "finishTaskDays": 0,
  "inviteDepositBonus": 0,
  "inviteDepositBonusSwitch": 0,
  "inviteRegisterBonus": 0,
  "inviteRegisterBonusBool": 0,
  "inviteRegisterBonusIpLimit": 0,
  "inviteRegisterBonusSwitch": 0,
  "invitedAmount": 0,
  "invitedAmountCheck": 0,
  "invitedCount": 0,
  "invitedCountCheck": 0,
  "inviteeBonus": 0,
  "inviteeBonusCheck": 0,
  "inviterBonus": 0,
  "inviterBonusCheck": 0,
  "level1RebateRate": 0,
  "level2RebateRate": 0,
  "level3RebateRate": 0,
  "level4RebateRate": 0,
  "limitIpCount": 0,
  "limitIpCountSwitch": 0,
  "manualBonusSwitch": 0,
  "minBetTotal": 0,
  "minBetTotalCheck": 0,
  "minDepositTotal": 0,
  "minDepositTotalCheck": 0,
  "mobileValidCheck": 0,
  "qualifiedGameTypes": "",
  "rebateGameTypeSet": "",
  "rebateReleaseType": 0,
  "rebateSwitch": 0,
  "recommendUrl": "",
  "rewardSwitch": 0,
  "sameIpCheck": 0,
  "sameIpRegCheck": 0,
  "sameIpRegCount": 0,
  "shareContent": "",
  "updateBy": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|ActivityRecommendConfigSaveCmd|ActivityRecommendConfigSaveCmd|
|&emsp;&emsp;achievementConfigs|成就奖金配置||false|array|ActivityRecommendAchieveConfigCmd|
|&emsp;&emsp;&emsp;&emsp;bonus|奖金||false|integer||
|&emsp;&emsp;&emsp;&emsp;inviteNum|邀请人数||false|integer||
|&emsp;&emsp;&emsp;&emsp;multiple|奖金稽核倍数||false|integer||
|&emsp;&emsp;achievementCycle|成就奖金周期 1:长期；2:月；3:周；4:天||false|integer(int32)||
|&emsp;&emsp;achievementSwitch|成就奖金开关 1:开；2:关||false|integer(int32)||
|&emsp;&emsp;agentDepositConfigs|代理邀请充值返佣配置||false|array|AgentDepositConfigCmd|
|&emsp;&emsp;&emsp;&emsp;agentLevel|代理等级||false|integer||
|&emsp;&emsp;&emsp;&emsp;agentTitle|代理等级名称||false|string||
|&emsp;&emsp;&emsp;&emsp;level1DepositRate|一级充值返佣返水比例||false|number||
|&emsp;&emsp;&emsp;&emsp;level2DepositRate|二级充值返佣返水比例||false|number||
|&emsp;&emsp;&emsp;&emsp;level3DepositRate|三级充值返佣返水比例||false|number||
|&emsp;&emsp;&emsp;&emsp;level4DepositRate|四级充值返佣返水比例||false|number||
|&emsp;&emsp;agentInviterConfigs|代理邀请合格奖金配置||false|array|AgentInviterConfigCmd|
|&emsp;&emsp;&emsp;&emsp;agentLevel|代理等级||false|integer||
|&emsp;&emsp;&emsp;&emsp;agentTitle|代理等级名称||false|string||
|&emsp;&emsp;&emsp;&emsp;inviteeBonus|受邀人奖金||false|integer||
|&emsp;&emsp;&emsp;&emsp;inviterBonus|邀请人奖金||false|integer||
|&emsp;&emsp;agentRankConfig|代理排名配置配置||false|array|number|
|&emsp;&emsp;agentRankSwitch|代理排行榜开关 1:开；2:关||false|integer(int32)||
|&emsp;&emsp;auditSwitch|||false|integer(int32)||
|&emsp;&emsp;auditValue|||false|number||
|&emsp;&emsp;bonusReleaseType|||false|integer(int32)||
|&emsp;&emsp;depositRebateRate|充值返佣比例||false|number||
|&emsp;&emsp;depositSwitch|充值返佣开关 1:开；2:关||false|integer(int32)||
|&emsp;&emsp;entranceSwitch|||false|integer(int32)||
|&emsp;&emsp;finishTaskDays|完成任务时间限期（天）||false|integer(int32)||
|&emsp;&emsp;inviteDepositBonus|邀请注册充值奖金||false|integer(int64)||
|&emsp;&emsp;inviteDepositBonusSwitch|邀请注册充值奖金开关 1开 2关,默认关闭||false|integer(int32)||
|&emsp;&emsp;inviteRegisterBonus|邀请注册奖金||false|integer(int64)||
|&emsp;&emsp;inviteRegisterBonusBool|邀请注册累计最大奖金池||false|integer(int64)||
|&emsp;&emsp;inviteRegisterBonusIpLimit|邀请注册奖金,同IP限制数，默认1个，0：不限制||false|integer(int32)||
|&emsp;&emsp;inviteRegisterBonusSwitch|邀请注册奖金开关 1开 2关,默认关闭||false|integer(int32)||
|&emsp;&emsp;invitedAmount|||false|integer(int64)||
|&emsp;&emsp;invitedAmountCheck|||false|integer(int32)||
|&emsp;&emsp;invitedCount|||false|integer(int32)||
|&emsp;&emsp;invitedCountCheck|||false|integer(int32)||
|&emsp;&emsp;inviteeBonus|||false|integer(int64)||
|&emsp;&emsp;inviteeBonusCheck|受邀人奖金开关 1-开 ，2-关||false|integer(int32)||
|&emsp;&emsp;inviterBonus|||false|integer(int64)||
|&emsp;&emsp;inviterBonusCheck|邀请人奖金开关，1-开，2-关||false|integer(int32)||
|&emsp;&emsp;level1RebateRate|||false|number||
|&emsp;&emsp;level2RebateRate|||false|number||
|&emsp;&emsp;level3RebateRate|||false|number||
|&emsp;&emsp;level4RebateRate|||false|number||
|&emsp;&emsp;limitIpCount|合格用户条件同ip限制数量||false|integer(int32)||
|&emsp;&emsp;limitIpCountSwitch|合格用户条件同ip限制数量开关，1-开，2-关||false|integer(int32)||
|&emsp;&emsp;manualBonusSwitch|||false|integer(int32)||
|&emsp;&emsp;minBetTotal|||false|integer(int64)||
|&emsp;&emsp;minBetTotalCheck|最低有效投注总额开关，1-开，2-关||false|integer(int32)||
|&emsp;&emsp;minDepositTotal|||false|integer(int64)||
|&emsp;&emsp;minDepositTotalCheck|最低存款总额开关，1-开，2-关||false|integer(int32)||
|&emsp;&emsp;mobileValidCheck|是否验证手机号，1-开，2-关||false|integer(int32)||
|&emsp;&emsp;qualifiedGameTypes|合格用户游戏类型 多个都号隔开||false|string||
|&emsp;&emsp;rebateGameTypeSet|||false|string||
|&emsp;&emsp;rebateReleaseType|||false|integer(int32)||
|&emsp;&emsp;rebateSwitch|||false|integer(int32)||
|&emsp;&emsp;recommendUrl|受邀访问地址||false|string||
|&emsp;&emsp;rewardSwitch|||false|integer(int32)||
|&emsp;&emsp;sameIpCheck|||false|integer(int32)||
|&emsp;&emsp;sameIpRegCheck|||false|integer(int32)||
|&emsp;&emsp;sameIpRegCount|||false|integer(int32)||
|&emsp;&emsp;shareContent|分享内容||false|string||
|&emsp;&emsp;updateBy|修改人ID||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


# 活动-全民代理奖金配置


## 分页投注返佣配置查询


**接口地址**:`/activity,/activity/activity/recommend/agent/rebate/config/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "bonusType": 0,
  "current": 0,
  "size": 0,
  "typeName": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|ActivityAgentBonusConfigPageQuery|ActivityAgentBonusConfigPageQuery|
|&emsp;&emsp;bonusType|||false|integer(int32)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;typeName|游戏类型名称||false|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«AgentBonusRebateConfigDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|AgentBonusRebateConfigDTO|
|&emsp;&emsp;rebateConfigInfoList|返水配置信息列表|array|RebateConfigInfoDTO|
|&emsp;&emsp;&emsp;&emsp;configName|活动设置名称|string||
|&emsp;&emsp;&emsp;&emsp;id||integer||
|&emsp;&emsp;&emsp;&emsp;multipleNum|稽核倍数|number||
|&emsp;&emsp;&emsp;&emsp;rebateMaxLimit|单日返水发放最高上限|integer||
|&emsp;&emsp;&emsp;&emsp;rebateMinLimit|单日返水发放最低下限|integer||
|&emsp;&emsp;&emsp;&emsp;rebateRatioList|返水比例数据|array|RebateConfigInfoSubDTO|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;gamePlatformId|游戏厂商ID|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;gamePlatformNo|游戏厂商编码|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;gameTypeId|游戏类别ID|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;gameTypeNo|游戏类别编码|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;id||integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rebateRatio|返水比例|number||
|&emsp;&emsp;&emsp;&emsp;rebateTiming|定时发放时间（时:分）|string||
|&emsp;&emsp;&emsp;&emsp;rebateType|发放方式（1：批次发放，2：实时发放）|integer||
|&emsp;&emsp;&emsp;&emsp;status|活动开关（1：开启，2：关闭）|integer||
|&emsp;&emsp;&emsp;&emsp;validBetLimit|最低有效投注打码量限制|integer||
|&emsp;&emsp;rebateReleaseType|返水时间类型，1-次日，2-隔日|integer(int32)||
|&emsp;&emsp;rebateSwitch|投注返水开关|integer(int32)||
|&emsp;&emsp;updateAccount|修改人账号|string||
|&emsp;&emsp;updateTime|更新时间|integer(int64)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"rebateConfigInfoList": [
				{
					"configName": "",
					"id": 0,
					"multipleNum": 0,
					"rebateMaxLimit": 0,
					"rebateMinLimit": 0,
					"rebateRatioList": [
						{
							"gamePlatformId": 0,
							"gamePlatformNo": "",
							"gameTypeId": 0,
							"gameTypeNo": "",
							"id": 0,
							"rebateRatio": 0
						}
					],
					"rebateTiming": "",
					"rebateType": 0,
					"status": 0,
					"validBetLimit": 0
				}
			],
			"rebateReleaseType": 0,
			"rebateSwitch": 0,
			"updateAccount": "",
			"updateTime": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 保存代理返佣配置


**接口地址**:`/activity,/activity/activity/recommend/agent/rebate/config/update`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "rebateConfigs": [
    {
      "agentLevel": 0,
      "agentTitle": "",
      "level1RebateRate": 0,
      "level2RebateRate": 0,
      "level3RebateRate": 0,
      "level4RebateRate": 0,
      "typeId": 0,
      "typeName": "",
      "typeNo": ""
    }
  ],
  "rebateReleaseType": 0,
  "rebateSwitch": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|AgentBonusRebateConfigUpdateCmd|AgentBonusRebateConfigUpdateCmd|
|&emsp;&emsp;rebateConfigs|投注返水配置||false|array|RebateConfig|
|&emsp;&emsp;&emsp;&emsp;agentLevel|代理等级||false|integer||
|&emsp;&emsp;&emsp;&emsp;agentTitle|代理标题||false|string||
|&emsp;&emsp;&emsp;&emsp;level1RebateRate|一级返水比例||false|number||
|&emsp;&emsp;&emsp;&emsp;level2RebateRate|二级返水比例||false|number||
|&emsp;&emsp;&emsp;&emsp;level3RebateRate|三级返水比例||false|number||
|&emsp;&emsp;&emsp;&emsp;level4RebateRate| 四级返水比例||false|number||
|&emsp;&emsp;&emsp;&emsp;typeId|类型id||false|integer||
|&emsp;&emsp;&emsp;&emsp;typeName|类型名称||false|string||
|&emsp;&emsp;&emsp;&emsp;typeNo|类型编号||false|string||
|&emsp;&emsp;rebateReleaseType|返水时间类型，1-次日，2-隔日||false|integer(int32)||
|&emsp;&emsp;rebateSwitch|投注返水开关 1-开，2-关||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 查询代理奖金配置


**接口地址**:`/activity,/activity/activity/recommend/agent/team/config`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«AgentLevelConfigDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|AgentLevelConfigDTO|
|&emsp;&emsp;agentLevel|代理排序|integer(int32)||
|&emsp;&emsp;agentLevelMembers|代理等级人数|integer(int64)||
|&emsp;&emsp;agentTitle|代理等级名称|string||
|&emsp;&emsp;id|id|integer(int64)||
|&emsp;&emsp;teamBets|团队投注|integer(int64)||
|&emsp;&emsp;teamDeposit|团队充值|integer(int64)||
|&emsp;&emsp;totalMembers|团队人数|integer(int64)||
|&emsp;&emsp;updateAccount|修改人账号|string||
|&emsp;&emsp;updateBy|更新人|integer(int64)||
|&emsp;&emsp;updateTime|更新时间|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"agentLevel": 0,
			"agentLevelMembers": 0,
			"agentTitle": "",
			"id": 0,
			"teamBets": 0,
			"teamDeposit": 0,
			"totalMembers": 0,
			"updateAccount": "",
			"updateBy": 0,
			"updateTime": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 保存代理等级配置


**接口地址**:`/activity,/activity/activity/recommend/agent/update/level/config`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
[
  {
    "agentTitle": "",
    "teamBets": 0,
    "teamDeposit": 0,
    "totalMembers": 0
  }
]
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|array|AgentConfigSaveCmd|
|&emsp;&emsp;agentTitle|代理等级名称||false|string||
|&emsp;&emsp;teamBets|团队投注||false|integer(int64)||
|&emsp;&emsp;teamDeposit|团队充值||false|integer(int64)||
|&emsp;&emsp;totalMembers|团队人数||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


# 用户奖金明细统计


## 查询用户游戏奖金明细


**接口地址**:`/activity,/activity/activity/stat/get`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|customerId|用户ID|query|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«CustomerSumStatDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||CustomerSumStatDTO|CustomerSumStatDTO|
|&emsp;&emsp;dataDetailList||array|DataDetail|
|&emsp;&emsp;&emsp;&emsp;displayName||string||
|&emsp;&emsp;&emsp;&emsp;value||integer||
|&emsp;&emsp;total||integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"dataDetailList": [
			{
				"displayName": "",
				"value": 0
			}
		],
		"total": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# 用户票券活动-H5接口


## 用户奖励领取


**接口地址**:`/activity,/activity/activity/wap/ticket/chaimReward`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>用户奖励领取</p>



**请求示例**:


```javascript
{
  "id": 0,
  "sourceType": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|TicketChaimRewardCmd|TicketChaimRewardCmd|
|&emsp;&emsp;id|记录ID||false|integer(int64)||
|&emsp;&emsp;sourceType|1:APP 2:H5||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«RewardInfoDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||RewardInfoDTO|RewardInfoDTO|
|&emsp;&emsp;amount|中奖金额|integer(int64)||
|&emsp;&emsp;index|转盘中奖索引|integer(int32)||
|&emsp;&emsp;noPrizeDisplay|未中奖提示|string||
|&emsp;&emsp;ticketType|票券类型(1:幸运红包 2:砸金蛋抽奖券 3:大转盘票券 4:现金兑换券)|integer(int32)||
|&emsp;&emsp;type|奖励类型 0:谢谢惠顾 1：现金|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"amount": 0,
		"index": 0,
		"noPrizeDisplay": "",
		"ticketType": 0,
		"type": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 奖励中心-领取票券任务


**接口地址**:`/activity,/activity/activity/wap/ticket/claim`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>奖励中心-领取票券任务</p>



**请求示例**:


```javascript
{
  "taskId": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|TicketClaimCmd|TicketClaimCmd|
|&emsp;&emsp;taskId|任务ID||true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«TicketClaimResultDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||TicketClaimResultDTO|TicketClaimResultDTO|
|&emsp;&emsp;ticketNum|票券数量|integer(int32)||
|&emsp;&emsp;ticketType|票券类型(1:幸运红包 2:砸金蛋抽奖券 3:大转盘票券 4:现金兑换券)|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"ticketNum": 0,
		"ticketType": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 获取用户分享内容


**接口地址**:`/activity,/activity/activity/wap/ticket/condition/listShareContent`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>获取用户分享内容</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|recordId|recordId|query|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«TicketConditionShareDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|TicketConditionShareDTO|
|&emsp;&emsp;content|分享内容|string||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;used|是否分享（0:未分享 1:已分享）|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"content": "",
			"id": 0,
			"used": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 用户分享更新


**接口地址**:`/activity,/activity/activity/wap/ticket/condition/updateShare`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>用户分享更新</p>



**请求示例**:


```javascript
{
  "ids": []
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|TicketActivityConditinShareUpdateCmd|TicketActivityConditinShareUpdateCmd|
|&emsp;&emsp;ids|||true|array|integer|


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 查询票券条件


**接口地址**:`/activity,/activity/activity/wap/ticket/conditions/{recordId}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询票券条件</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|recordId|recordId|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«MyTicketConditionDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|MyTicketConditionDTO|
|&emsp;&emsp;conditionName|完成条件名称|string||
|&emsp;&emsp;conditionNum|完成条件总数（目标）|integer(int32)||
|&emsp;&emsp;conditionProcess|完成条件进度|integer(int32)||
|&emsp;&emsp;conditionTarget|条件目标|string||
|&emsp;&emsp;conditionType|条件类型|integer(int32)||
|&emsp;&emsp;expireTime|过期时间|integer(int64)||
|&emsp;&emsp;id|条件ID|integer(int64)||
|&emsp;&emsp;status|0:未完成 2已完成|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"conditionName": "",
			"conditionNum": 0,
			"conditionProcess": 0,
			"conditionTarget": "",
			"conditionType": 0,
			"expireTime": 0,
			"id": 0,
			"status": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 首页弹窗-用户票券信息


**接口地址**:`/activity,/activity/activity/wap/ticket/listTicketInfo`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>首页弹窗-用户票券信息</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id||query|false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«CustomerTicketInfoDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|CustomerTicketInfoDTO|
|&emsp;&emsp;claimRestriction|领取限制(0:无限制 1:APP)|integer(int32)||
|&emsp;&emsp;expireTime|有效时间|integer(int64)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;image|票券图片|string||
|&emsp;&emsp;moneyAmount|现金金额|integer(int64)||
|&emsp;&emsp;name|票券名称|string||
|&emsp;&emsp;process|进度|number||
|&emsp;&emsp;showBroadcast|是否展示播报信息(0:否 1:是)|integer(int32)||
|&emsp;&emsp;status|状态(0:未完成条件 1:未领取奖励 2:已完成|integer(int32)||
|&emsp;&emsp;taskId|任务ID|integer(int64)||
|&emsp;&emsp;type|票券类型(1:幸运红包 2:砸金蛋抽奖券 3:大转盘票券 4:现金兑换券)|integer(int32)||
|&emsp;&emsp;wheelRewardList|大转盘配置|array|WheelRewardWap|
|&emsp;&emsp;&emsp;&emsp;amount|金额|integer||
|&emsp;&emsp;&emsp;&emsp;picture|图片|string||
|&emsp;&emsp;&emsp;&emsp;type|奖品类型(0:谢谢参与 1:现金奖励)|integer||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"claimRestriction": 0,
			"expireTime": 0,
			"id": 0,
			"image": "",
			"moneyAmount": 0,
			"name": "",
			"process": 0,
			"showBroadcast": 0,
			"status": 0,
			"taskId": 0,
			"type": 0,
			"wheelRewardList": [
				{
					"amount": 0,
					"picture": "",
					"type": 0
				}
			]
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 奖励中心-我的票券（分页）


**接口地址**:`/activity,/activity/activity/wap/ticket/record/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>奖励中心-我的票券（分页）</p>



**请求示例**:


```javascript
{
  "current": 0,
  "endTime": "2024-01-01",
  "queryType": 0,
  "size": 0,
  "startTime": "2024-01-01",
  "ticketType": 1
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|MyTicketPageQuery|MyTicketPageQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||false|string||
|&emsp;&emsp;queryType|查询类型 0-查询进行中的票券（默认） 1-查询已领取奖励的票券||false|integer(int32)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||false|string||
|&emsp;&emsp;ticketType|票券类型(1:幸运红包 2:砸金蛋抽奖券 3:大转盘票券 4:现金兑换券)||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«MyTicketPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|MyTicketPageDTO|
|&emsp;&emsp;bounds|奖励金额|integer(int64)||
|&emsp;&emsp;claimRestriction|领取限制(0:无限制 1:APP)|integer(int32)||
|&emsp;&emsp;expireTime|过期时间|integer(int64)||
|&emsp;&emsp;id|票券记录ID|integer(int64)||
|&emsp;&emsp;rewardTime|奖励时间|integer(int64)||
|&emsp;&emsp;status|0:未完成 1已完成|integer(int32)||
|&emsp;&emsp;ticketId|票券ID|integer(int64)||
|&emsp;&emsp;ticketName|票券名称|string||
|&emsp;&emsp;ticketType|票券类型(1:幸运红包 2:砸金蛋抽奖券 3:大转盘票券 4:现金兑换券)|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"bounds": 0,
			"claimRestriction": 0,
			"expireTime": 0,
			"id": 0,
			"rewardTime": 0,
			"status": 0,
			"ticketId": 0,
			"ticketName": "",
			"ticketType": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 奖励中心-查询票券状态


**接口地址**:`/activity,/activity/activity/wap/ticket/record/status/{recordId}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>奖励中心-查询票券状态</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|recordId|票券记录ID|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|状态(0:未完成条件 1:未领取奖励 2:已完成  )|SingleResponse«int»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": 0,
	"isSuccess": true,
	"message": ""
}
```


## 奖励中心-票券任务数量


**接口地址**:`/activity,/activity/activity/wap/ticket/record/taskNum`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>奖励中心-票券任务数量</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«long»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||integer(int64)|integer(int64)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": 0,
	"isSuccess": true,
	"message": ""
}
```


## 用户票券任务


**接口地址**:`/activity,/activity/activity/wap/ticket/tasks`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>用户票券任务</p>



**请求示例**:


```javascript
{
  "activityCode": []
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|TicketTaskQuery|TicketTaskQuery|
|&emsp;&emsp;activityCode|活动编码||false|array|string|


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Map«string,List«TicketTaskInfoDTO»»»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||TicketTaskInfoDTO|TicketTaskInfoDTO|
|&emsp;&emsp;activityCode|活动编码,DEPOSIT:充值  REGISTER: 注册|string||
|&emsp;&emsp;image|票券名称|string||
|&emsp;&emsp;status|状态(0 未完成任务 1 未领取票券)|integer(int32)||
|&emsp;&emsp;taskId|票券任务ID|integer(int64)||
|&emsp;&emsp;taskNo|任务序号 对于充值类型  1：首充 3二充  5每日充值 6支付产品 ，其他是对应的序号|integer(int32)||
|&emsp;&emsp;ticketNum|活动名称|integer(int32)||
|&emsp;&emsp;ticketType|票券类型(1:幸运红包 2:砸金蛋抽奖券 3:大转盘票券 4:现金兑换券)|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"additionalProperties1": {
			"activityCode": "",
			"image": "",
			"status": 0,
			"taskId": 0,
			"taskNo": 0,
			"ticketNum": 0,
			"ticketType": 0
		}
	},
	"isSuccess": true,
	"message": ""
}
```


## 奖励中心-总共获得奖金


**接口地址**:`/activity,/activity/activity/wap/ticket/totalBounds`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>奖励中心-总共获得奖金</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|current||query|false|integer(int64)||
|endTime|结束时间|query|false|string||
|queryType|查询类型 0-查询进行中的票券（默认） 1-查询已领取奖励的票券|query|false|integer(int32)||
|size||query|false|integer(int64)||
|startTime|开始时间|query|false|string||
|ticketType|票券类型(1:幸运红包 2:砸金蛋抽奖券 3:大转盘票券 4:现金兑换券)|query|false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«long»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||integer(int64)|integer(int64)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": 0,
	"isSuccess": true,
	"message": ""
}
```


# 用户票券记录


## 票券记录（分页）


**接口地址**:`/activity,/activity/activity/admin/ticket/record/getPageList`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>票券记录（分页）</p>



**请求示例**:


```javascript
{
  "account": "",
  "activityCode": "",
  "current": 0,
  "endTime": "2024-01-01 10:00:00",
  "size": 0,
  "sort": 0,
  "sortBy": "receiveTime",
  "startTime": "2024-01-01 10:00:00",
  "status": 1,
  "taskName": "",
  "ticketName": "",
  "ticketType": 0,
  "timeType": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|TicketTaskRecordPageQuery|TicketTaskRecordPageQuery|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;activityCode|活动类型(REGISTER:注册,DESPOIT:充值)||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||false|string(date-time)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;sort|排序方式 0-升序 1-降序；默认=1||false|integer(int32)||
|&emsp;&emsp;sortBy|排序字段:createTime-开启时间（默认），rewardTime-奖励时间，bounds-奖励金额||false|string||
|&emsp;&emsp;startTime|开始时间||false|string(date-time)||
|&emsp;&emsp;status|状态(1:未领取 2:已领取 3:已过期)||false|integer(int32)||
|&emsp;&emsp;taskName|活动名称||false|string||
|&emsp;&emsp;ticketName|票券名称||false|string||
|&emsp;&emsp;ticketType|票券类型(1:幸运红包 2:砸金蛋抽奖券 3:大转盘票券 4:现金兑换券)||false|integer(int32)||
|&emsp;&emsp;timeType|时间查询类型 0-按开启时间查询 1-按奖金时间查询||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«TicketRecordPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|TicketRecordPageDTO|
|&emsp;&emsp;account|用户名字|string||
|&emsp;&emsp;activityCode|活动类型(1:优惠充值活动 2:注册)|string||
|&emsp;&emsp;bounds|金额|integer(int64)||
|&emsp;&emsp;createTime|开启时间|integer(int64)||
|&emsp;&emsp;id|票券记录ID|integer(int64)||
|&emsp;&emsp;rewardTime|奖金时间|integer(int64)||
|&emsp;&emsp;status|状态(1:未领取 2:已领取 3:已过期)|integer(int32)||
|&emsp;&emsp;taskName|活动名称|string||
|&emsp;&emsp;ticketId|票券ID|integer(int64)||
|&emsp;&emsp;ticketName|票券名称|string||
|&emsp;&emsp;ticketType|票券类型(1:幸运红包 2:砸金蛋抽奖券 3:大转盘票券 4:现金兑换券)|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"account": "",
			"activityCode": "",
			"bounds": 0,
			"createTime": 0,
			"id": 0,
			"rewardTime": 0,
			"status": 0,
			"taskName": "",
			"ticketId": 0,
			"ticketName": "",
			"ticketType": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 票券记录统计


**接口地址**:`/activity,/activity/activity/admin/ticket/record/statistics`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>票券记录统计</p>



**请求示例**:


```javascript
{
  "account": "",
  "activityCode": "",
  "current": 0,
  "endTime": "2024-01-01 10:00:00",
  "size": 0,
  "sort": 0,
  "sortBy": "receiveTime",
  "startTime": "2024-01-01 10:00:00",
  "status": 1,
  "taskName": "",
  "ticketName": "",
  "ticketType": 0,
  "timeType": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|TicketTaskRecordPageQuery|TicketTaskRecordPageQuery|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;activityCode|活动类型(REGISTER:注册,DESPOIT:充值)||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||false|string(date-time)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;sort|排序方式 0-升序 1-降序；默认=1||false|integer(int32)||
|&emsp;&emsp;sortBy|排序字段:createTime-开启时间（默认），rewardTime-奖励时间，bounds-奖励金额||false|string||
|&emsp;&emsp;startTime|开始时间||false|string(date-time)||
|&emsp;&emsp;status|状态(1:未领取 2:已领取 3:已过期)||false|integer(int32)||
|&emsp;&emsp;taskName|活动名称||false|string||
|&emsp;&emsp;ticketName|票券名称||false|string||
|&emsp;&emsp;ticketType|票券类型(1:幸运红包 2:砸金蛋抽奖券 3:大转盘票券 4:现金兑换券)||false|integer(int32)||
|&emsp;&emsp;timeType|时间查询类型 0-按开启时间查询 1-按奖金时间查询||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«TicketRecordCountDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||TicketRecordCountDTO|TicketRecordCountDTO|
|&emsp;&emsp;receiveNum|已领取人数|integer(int32)||
|&emsp;&emsp;totalBounds|已领取总额|integer(int64)||
|&emsp;&emsp;userNum|已派发人数|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"receiveNum": 0,
		"totalBounds": 0,
		"userNum": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# 用户邀请-H5接口


## 老带新团队成员信息-v3.7.4


**接口地址**:`/activity,/activity/activity/wap/invite/agent/level/info`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ShareInviterAgentLevelInfoDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ShareInviterAgentLevelInfoDTO|ShareInviterAgentLevelInfoDTO|
|&emsp;&emsp;agentLevel|代理等级|integer(int32)||
|&emsp;&emsp;agentLevelInfos|代理等级信息|array|AgentLevelInfoDTO|
|&emsp;&emsp;&emsp;&emsp;agentLevel|代理等级|integer||
|&emsp;&emsp;&emsp;&emsp;agentTitle|代理等级名称|string||
|&emsp;&emsp;&emsp;&emsp;depositBonusRate|充值返佣|number||
|&emsp;&emsp;&emsp;&emsp;inviterBonus|邀请合格奖|integer||
|&emsp;&emsp;&emsp;&emsp;level1RebateRate|投注返佣|number||
|&emsp;&emsp;&emsp;&emsp;teamBets|团队投注金额|integer||
|&emsp;&emsp;&emsp;&emsp;teamDeposit|团队充值金额|integer||
|&emsp;&emsp;&emsp;&emsp;totalMembers|团队总成员数|integer||
|&emsp;&emsp;agentTitle|代理等级名称|string||
|&emsp;&emsp;currentMembers|当前成员数|integer(int64)||
|&emsp;&emsp;currentTeamBets|当前团队投注金额|integer(int64)||
|&emsp;&emsp;currentTeamDeposit|当前团队充值金额|integer(int64)||
|&emsp;&emsp;depositBonusRate|充值返佣|number||
|&emsp;&emsp;inviterBonus|邀请合格奖|integer(int64)||
|&emsp;&emsp;level1RebateRate|投注返佣|number||
|&emsp;&emsp;teamBets|当前团队投注金额|integer(int64)||
|&emsp;&emsp;teamDeposit|团队充值金额|integer(int64)||
|&emsp;&emsp;totalMembers|团队总成员数|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"agentLevel": 0,
		"agentLevelInfos": [
			{
				"agentLevel": 0,
				"agentTitle": "",
				"depositBonusRate": 0,
				"inviterBonus": 0,
				"level1RebateRate": 0,
				"teamBets": 0,
				"teamDeposit": 0,
				"totalMembers": 0
			}
		],
		"agentTitle": "",
		"currentMembers": 0,
		"currentTeamBets": 0,
		"currentTeamDeposit": 0,
		"depositBonusRate": 0,
		"inviterBonus": 0,
		"level1RebateRate": 0,
		"teamBets": 0,
		"teamDeposit": 0,
		"totalMembers": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## Member-统计


**接口地址**:`/activity,/activity/activity/wap/invite/member/sum`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«InviteMemberSumDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||InviteMemberSumDTO|InviteMemberSumDTO|
|&emsp;&emsp;depositors|Depositors|integer(int32)||
|&emsp;&emsp;qualifiedUsers|Qualified users|integer(int32)||
|&emsp;&emsp;registers|Registers|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"depositors": 0,
		"qualifiedUsers": 0,
		"registers": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 老带新团队成员信息-v3.7.4


**接口地址**:`/activity,/activity/activity/wap/invite/member/team/info`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ShareInviterMemberInfoDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ShareInviterMemberInfoDTO|ShareInviterMemberInfoDTO|
|&emsp;&emsp;agentLevel|代理等级|integer(int32)||
|&emsp;&emsp;agentTitle|代理头衔|string||
|&emsp;&emsp;layerInfo|层级信息|array|SubLevelInfo|
|&emsp;&emsp;&emsp;&emsp;layer|层级数|integer||
|&emsp;&emsp;&emsp;&emsp;memberCount||integer||
|&emsp;&emsp;&emsp;&emsp;readNewNum|未读数量|integer||
|&emsp;&emsp;monthAddNum|当月新增成员数|integer(int32)||
|&emsp;&emsp;todayAddNum|今日新增成员数|integer(int32)||
|&emsp;&emsp;totalMembers|团队总成员数|integer(int32)||
|&emsp;&emsp;yesterdayAddNum|昨日新增成员数|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"agentLevel": 0,
		"agentTitle": "",
		"layerInfo": [
			{
				"layer": 0,
				"memberCount": 0,
				"readNewNum": 0
			}
		],
		"monthAddNum": 0,
		"todayAddNum": 0,
		"totalMembers": 0,
		"yesterdayAddNum": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## Member-Team List 分页查询


**接口地址**:`/activity,/activity/activity/wap/invite/member/team/list`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "current": 0,
  "end": "",
  "layer": 0,
  "size": 0,
  "start": "",
  "type": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|InviteMemberTeamListQuery|InviteMemberTeamListQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;end|结束日期||false|string(date)||
|&emsp;&emsp;layer|代理层级||false|integer(int32)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;start|开始日期||false|string(date)||
|&emsp;&emsp;type|0-Registers 1-Depositors 2-Qualified user||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«InviteMemberTeamListDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|InviteMemberTeamListDTO|
|&emsp;&emsp;account|账号|string||
|&emsp;&emsp;depositAmount|充值金额|integer(int64)||
|&emsp;&emsp;depositDate|充值日期|integer(int64)||
|&emsp;&emsp;depositors|Depositors 0-否 1-是|integer(int32)||
|&emsp;&emsp;mobileValid|是否验证手机号 0-否 1-是|integer(int32)||
|&emsp;&emsp;qualified|Qualified 0-否 1-是|integer(int32)||
|&emsp;&emsp;readNew|是否验证手机号 0-否 1-是|integer(int32)||
|&emsp;&emsp;registers|Registers 0-否 1-是|integer(int32)||
|&emsp;&emsp;registrationDate|注册日期|integer(int64)||
|&emsp;&emsp;validBet|有效打码金额|integer(int64)||
|&emsp;&emsp;withdrawalAmount|提现金额|integer(int64)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"account": "",
			"depositAmount": 0,
			"depositDate": 0,
			"depositors": 0,
			"mobileValid": 0,
			"qualified": 0,
			"readNew": 0,
			"registers": 0,
			"registrationDate": 0,
			"validBet": 0,
			"withdrawalAmount": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 老带新团队成员列表-v3.7.4


**接口地址**:`/activity,/activity/activity/wap/invite/member/team/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "current": 0,
  "end": "",
  "layer": 0,
  "size": 0,
  "start": "",
  "type": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|InviteMemberTeamListQuery|InviteMemberTeamListQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;end|结束日期||false|string(date)||
|&emsp;&emsp;layer|代理层级||false|integer(int32)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;start|开始日期||false|string(date)||
|&emsp;&emsp;type|0-Registers 1-Depositors 2-Qualified user||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«InviteMemberTeamListDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|InviteMemberTeamListDTO|
|&emsp;&emsp;account|账号|string||
|&emsp;&emsp;depositAmount|充值金额|integer(int64)||
|&emsp;&emsp;depositDate|充值日期|integer(int64)||
|&emsp;&emsp;depositors|Depositors 0-否 1-是|integer(int32)||
|&emsp;&emsp;mobileValid|是否验证手机号 0-否 1-是|integer(int32)||
|&emsp;&emsp;qualified|Qualified 0-否 1-是|integer(int32)||
|&emsp;&emsp;readNew|是否验证手机号 0-否 1-是|integer(int32)||
|&emsp;&emsp;registers|Registers 0-否 1-是|integer(int32)||
|&emsp;&emsp;registrationDate|注册日期|integer(int64)||
|&emsp;&emsp;validBet|有效打码金额|integer(int64)||
|&emsp;&emsp;withdrawalAmount|提现金额|integer(int64)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"account": "",
			"depositAmount": 0,
			"depositDate": 0,
			"depositors": 0,
			"mobileValid": 0,
			"qualified": 0,
			"readNew": 0,
			"registers": 0,
			"registrationDate": 0,
			"validBet": 0,
			"withdrawalAmount": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## Report-折线图


**接口地址**:`/activity,/activity/activity/wap/invite/report/chart`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "end": "",
  "start": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|InviteReportSumQuery|InviteReportSumQuery|
|&emsp;&emsp;end|结束日期||false|string(date)||
|&emsp;&emsp;start|开始日期||false|string(date)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«InviteReportChartDTO»»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|InviteReportChartDTO|
|&emsp;&emsp;depositors|Depositors|integer(int32)||
|&emsp;&emsp;qualifiedUsers|Qualified Users|integer(int32)||
|&emsp;&emsp;registers|Registers|integer(int32)||
|&emsp;&emsp;time|日期|string(date)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"depositors": 0,
			"qualifiedUsers": 0,
			"registers": 0,
			"time": ""
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## Report-收入统计


**接口地址**:`/activity,/activity/activity/wap/invite/report/income`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«InviteReportIncomeDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||InviteReportIncomeDTO|InviteReportIncomeDTO|
|&emsp;&emsp;today|Today's income|integer(int64)||
|&emsp;&emsp;total|Total income|integer(int64)||
|&emsp;&emsp;yesterday|Yesterday's income|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"today": 0,
		"total": 0,
		"yesterday": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## Report-查询统计


**接口地址**:`/activity,/activity/activity/wap/invite/report/sum`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "end": "",
  "start": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|InviteReportSumQuery|InviteReportSumQuery|
|&emsp;&emsp;end|结束日期||false|string(date)||
|&emsp;&emsp;start|开始日期||false|string(date)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«InviteReportSumDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||InviteReportSumDTO|InviteReportSumDTO|
|&emsp;&emsp;achievementRewards|成就奖奖金|integer(int64)||
|&emsp;&emsp;agentRankBonus|老带新代理排行奖|integer(int64)||
|&emsp;&emsp;bettingRebatesBonus||integer(int64)||
|&emsp;&emsp;depositBonus||integer(int64)||
|&emsp;&emsp;depositors||integer(int32)||
|&emsp;&emsp;income||integer(int64)||
|&emsp;&emsp;qualifiedBonus||integer(int64)||
|&emsp;&emsp;qualifiedUsers||integer(int32)||
|&emsp;&emsp;rebateBonus|充值返佣奖金|integer(int64)||
|&emsp;&emsp;registers||integer(int32)||
|&emsp;&emsp;registrationBonus||integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"achievementRewards": 0,
		"agentRankBonus": 0,
		"bettingRebatesBonus": 0,
		"depositBonus": 0,
		"depositors": 0,
		"income": 0,
		"qualifiedBonus": 0,
		"qualifiedUsers": 0,
		"rebateBonus": 0,
		"registers": 0,
		"registrationBonus": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# 票券活动


## 新增票券活动


**接口地址**:`/activity,/activity/activity/admin/ticket/add`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>新增票券活动</p>



**请求示例**:


```javascript
{
  "betCondition": {
    "gameTypeList": [],
    "type": 0,
    "value": ""
  },
  "claimRestriction": 0,
  "depositCondition": {
    "type": 0,
    "value": ""
  },
  "endTime": "",
  "expireDate": 0,
  "expireHour": 0,
  "image": "",
  "luckyMoneyConfig": {
    "auditValue": 0,
    "luckyMoneyRewardList": [
      {
        "amount": 0,
        "hitRate": 0,
        "id": 0,
        "stock": 0
      }
    ]
  },
  "moneyConfig": {
    "amount": 0,
    "auditValue": 0,
    "id": 0
  },
  "name": "",
  "nextTickets": [
    {
      "id": 0,
      "name": "",
      "num": 0,
      "type": 0
    }
  ],
  "noPrizeDisplay": "",
  "phoneVerificationCondition": true,
  "registerCountCondition": 0,
  "shareCondition": "",
  "showBroadcast": 0,
  "startTime": "",
  "status": 0,
  "type": 0,
  "wheelConfig": {
    "auditValue": 0,
    "wheelRewardList": [
      {
        "amount": 0,
        "hitRate": 0,
        "id": 0,
        "picture": "",
        "stock": 0,
        "type": ""
      }
    ]
  }
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|TicketActivityAddCmd|TicketActivityAddCmd|
|&emsp;&emsp;betCondition|投注条件||false|BetCondition|BetCondition|
|&emsp;&emsp;&emsp;&emsp;gameTypeList|打码范围,例如[SLOT,LIVE],为空表示全部||false|array|string|
|&emsp;&emsp;&emsp;&emsp;type|投注检查类型||false|integer||
|&emsp;&emsp;&emsp;&emsp;value|目标值||false|string||
|&emsp;&emsp;claimRestriction|领取限制(0:无限制 1:APP)||false|integer(int32)||
|&emsp;&emsp;depositCondition|存款条件||false|DepositCondition|DepositCondition|
|&emsp;&emsp;&emsp;&emsp;type|存款检查类型||false|integer||
|&emsp;&emsp;&emsp;&emsp;value|目标值||false|string||
|&emsp;&emsp;endTime|票券活动结束时间||false|string(date-time)||
|&emsp;&emsp;expireDate|领取后票券过期时间（天）||false|integer(int32)||
|&emsp;&emsp;expireHour|领取后票券过期时间（时）||false|integer(int32)||
|&emsp;&emsp;image|票券图片||false|string||
|&emsp;&emsp;luckyMoneyConfig|幸运红包配置||false|LuckyMoneyConfig|LuckyMoneyConfig|
|&emsp;&emsp;&emsp;&emsp;auditValue|稽核倍数||false|number||
|&emsp;&emsp;&emsp;&emsp;luckyMoneyRewardList|奖项设置||false|array|LuckyMoneyRewardConfig|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;amount|中奖金额||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;hitRate|中奖概率||false|number||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;id|||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;stock|剩余数量||false|integer||
|&emsp;&emsp;moneyConfig|现金奖励配置||false|MoneyConfig|MoneyConfig|
|&emsp;&emsp;&emsp;&emsp;amount|金额设置||false|integer||
|&emsp;&emsp;&emsp;&emsp;auditValue|稽核倍数||false|number||
|&emsp;&emsp;&emsp;&emsp;id|||false|integer||
|&emsp;&emsp;name|票券名称||false|string||
|&emsp;&emsp;nextTickets|下一轮票券任务||false|array|TicketDistribution|
|&emsp;&emsp;&emsp;&emsp;id|||false|integer||
|&emsp;&emsp;&emsp;&emsp;name|票券名称||false|string||
|&emsp;&emsp;&emsp;&emsp;num|票券数量||false|integer||
|&emsp;&emsp;&emsp;&emsp;type|票券类型(1:幸运红包 2:砸金蛋抽奖券 3:大转盘票券 4:现金兑换券)||false|integer||
|&emsp;&emsp;noPrizeDisplay|未中奖提示||false|string||
|&emsp;&emsp;phoneVerificationCondition|手机验证条件||false|boolean||
|&emsp;&emsp;registerCountCondition|注册合格人数||false|integer(int32)||
|&emsp;&emsp;shareCondition|分享条件||false|string||
|&emsp;&emsp;showBroadcast|是否展示播报信息(0:否 1:是)||false|integer(int32)||
|&emsp;&emsp;startTime|票券活动开始时间||false|string(date-time)||
|&emsp;&emsp;status|是否开启（0:未开启 1:开启）||false|integer(int32)||
|&emsp;&emsp;type|票券类型(1:幸运红包 2:砸金蛋抽奖券 3:大转盘票券 4:现金兑换券)||false|integer(int32)||
|&emsp;&emsp;wheelConfig|大转盘配置||false|WheelConfig|WheelConfig|
|&emsp;&emsp;&emsp;&emsp;auditValue|稽核倍数||false|number||
|&emsp;&emsp;&emsp;&emsp;wheelRewardList|奖项设置||false|array|WheelRewardConfig|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;amount|金额||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;hitRate|中奖概率||false|number||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;id|||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;picture|图片||false|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;stock|剩余数量||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;type|奖品类型(0:谢谢参与 1:现金奖励)||false|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 查询票券绑定任务


**接口地址**:`/activity,/activity/activity/admin/ticket/bind-tasks`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "current": 0,
  "id": 0,
  "size": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|ActivityTicketTaskPageQuery|ActivityTicketTaskPageQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;id|票券Id||false|integer(int64)||
|&emsp;&emsp;size|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«ActivityTicketTaskPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|ActivityTicketTaskPageDTO|
|&emsp;&emsp;activityCode|活动名称|string||
|&emsp;&emsp;activityDisplayName|活动类型|string||
|&emsp;&emsp;createTime|关联时间|integer(int64)||
|&emsp;&emsp;id|Id|integer(int64)||
|&emsp;&emsp;taskName|任务名称|string||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"activityCode": "",
			"activityDisplayName": "",
			"createTime": 0,
			"id": 0,
			"taskName": ""
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 根据ID查询票券详情


**接口地址**:`/activity,/activity/activity/admin/ticket/getTicketDtlById`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>根据类型查询票券</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id|id|query|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«TicketDtlDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||TicketDtlDTO|TicketDtlDTO|
|&emsp;&emsp;betCondition|投注条件|BetCondition|BetCondition|
|&emsp;&emsp;&emsp;&emsp;gameTypeList|打码范围,例如[SLOT,LIVE],为空表示全部|array|string|
|&emsp;&emsp;&emsp;&emsp;type|投注检查类型|integer||
|&emsp;&emsp;&emsp;&emsp;value|目标值|string||
|&emsp;&emsp;bindWithdrawalAccountCondition|绑定提款账户条件|boolean||
|&emsp;&emsp;claimRestriction|领取限制(0:无限制 1:APP)|integer(int32)||
|&emsp;&emsp;depositCondition|存款条件|DepositCondition|DepositCondition|
|&emsp;&emsp;&emsp;&emsp;type|存款检查类型|integer||
|&emsp;&emsp;&emsp;&emsp;value|目标值|string||
|&emsp;&emsp;endTime|票券活动结束时间|integer(int64)||
|&emsp;&emsp;expireDate|领取后票券过期时间（天）|integer(int32)||
|&emsp;&emsp;expireHour|领取后票券过期时间（时）|integer(int32)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;image|票券图片|string||
|&emsp;&emsp;luckyMoneyConfig|幸运红包配置|LuckyMoneyConfig|LuckyMoneyConfig|
|&emsp;&emsp;&emsp;&emsp;auditValue|稽核倍数|number||
|&emsp;&emsp;&emsp;&emsp;luckyMoneyRewardList|奖项设置|array|LuckyMoneyRewardConfig|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;amount|中奖金额|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;hitRate|中奖概率|number||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;id||integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;stock|剩余数量|integer||
|&emsp;&emsp;moneyConfig|现金奖励配置|MoneyConfig|MoneyConfig|
|&emsp;&emsp;&emsp;&emsp;amount|金额设置|integer||
|&emsp;&emsp;&emsp;&emsp;auditValue|稽核倍数|number||
|&emsp;&emsp;&emsp;&emsp;id||integer||
|&emsp;&emsp;name|票券名称|string||
|&emsp;&emsp;nextTickets|下一轮票券任务|array|TicketDistribution|
|&emsp;&emsp;&emsp;&emsp;id||integer||
|&emsp;&emsp;&emsp;&emsp;name|票券名称|string||
|&emsp;&emsp;&emsp;&emsp;num|票券数量|integer||
|&emsp;&emsp;&emsp;&emsp;type|票券类型(1:幸运红包 2:砸金蛋抽奖券 3:大转盘票券 4:现金兑换券)|integer||
|&emsp;&emsp;noPrizeDisplay|未中奖提示|string||
|&emsp;&emsp;phoneVerificationCondition|手机验证条件|boolean||
|&emsp;&emsp;registerCountCondition|注册合格人数|integer(int32)||
|&emsp;&emsp;shareCondition|分享条件|string||
|&emsp;&emsp;showBroadcast|是否展示播报信息(0:否 1:是)|integer(int32)||
|&emsp;&emsp;startTime|票券活动开始时间|integer(int64)||
|&emsp;&emsp;status|是否开启（0:未开启 1:开启）|integer(int32)||
|&emsp;&emsp;type|票券类型(1:幸运红包 2:砸金蛋抽奖券 3:大转盘票券 4:现金兑换券)|integer(int32)||
|&emsp;&emsp;wheelConfig|大转盘配置|WheelConfig|WheelConfig|
|&emsp;&emsp;&emsp;&emsp;auditValue|稽核倍数|number||
|&emsp;&emsp;&emsp;&emsp;wheelRewardList|奖项设置|array|WheelRewardConfig|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;amount|金额|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;hitRate|中奖概率|number||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;id||integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;picture|图片|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;stock|剩余数量|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;type|奖品类型(0:谢谢参与 1:现金奖励)|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"betCondition": {
			"gameTypeList": [],
			"type": 0,
			"value": ""
		},
		"bindWithdrawalAccountCondition": true,
		"claimRestriction": 0,
		"depositCondition": {
			"type": 0,
			"value": ""
		},
		"endTime": 0,
		"expireDate": 0,
		"expireHour": 0,
		"id": 0,
		"image": "",
		"luckyMoneyConfig": {
			"auditValue": 0,
			"luckyMoneyRewardList": [
				{
					"amount": 0,
					"hitRate": 0,
					"id": 0,
					"stock": 0
				}
			]
		},
		"moneyConfig": {
			"amount": 0,
			"auditValue": 0,
			"id": 0
		},
		"name": "",
		"nextTickets": [
			{
				"id": 0,
				"name": "",
				"num": 0,
				"type": 0
			}
		],
		"noPrizeDisplay": "",
		"phoneVerificationCondition": true,
		"registerCountCondition": 0,
		"shareCondition": "",
		"showBroadcast": 0,
		"startTime": 0,
		"status": 0,
		"type": 0,
		"wheelConfig": {
			"auditValue": 0,
			"wheelRewardList": [
				{
					"amount": 0,
					"hitRate": 0,
					"id": 0,
					"picture": "",
					"stock": 0,
					"type": ""
				}
			]
		}
	},
	"isSuccess": true,
	"message": ""
}
```


## 根据类型查询有效票券


**接口地址**:`/activity,/activity/activity/admin/ticket/listTicketByType`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>根据类型查询有效票券</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|name|票券名字|query|false|string||
|type|票券类型(1:幸运红包 2:砸金蛋抽奖券 3:大转盘票券 4:现金兑换券)|query|false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«TicketProfileDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|TicketProfileDTO|
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;name|票券名称|string||
|&emsp;&emsp;type|票券类型(1:幸运红包 2:砸金蛋抽奖券 3:大转盘票券 4:现金兑换券)|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"id": 0,
			"name": "",
			"type": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 票券活动列表


**接口地址**:`/activity,/activity/activity/admin/ticket/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>票券活动列表</p>



**请求示例**:


```javascript
{
  "current": 0,
  "size": 0,
  "status": 0,
  "type": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|TicketActivityPageQuery|TicketActivityPageQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;status|是否开启（0:未开启 1:开启）||false|integer(int32)||
|&emsp;&emsp;type|票券类型(1:幸运红包 2:砸金蛋抽奖券 3:大转盘票券 4:现金兑换券)||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«TicketPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|TicketPageDTO|
|&emsp;&emsp;createTime|创建时间|integer(int64)||
|&emsp;&emsp;endTime|结束时间|integer(int64)||
|&emsp;&emsp;expireTime|有效期|integer(int32)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;name|票券名称|string||
|&emsp;&emsp;receiveNum|获奖张数|integer(int32)||
|&emsp;&emsp;rewardNum|派发张数|integer(int32)||
|&emsp;&emsp;startTime|开始时间|integer(int64)||
|&emsp;&emsp;status|是否开启（0:未开启 1:开启）|integer(int32)||
|&emsp;&emsp;type|票券类型(1:幸运红包 2:砸金蛋抽奖券 3:大转盘票券 4:现金兑换券)|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"createTime": 0,
			"endTime": 0,
			"expireTime": 0,
			"id": 0,
			"name": "",
			"receiveNum": 0,
			"rewardNum": 0,
			"startTime": 0,
			"status": 0,
			"type": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 解绑单个票券任务


**接口地址**:`/activity,/activity/activity/admin/ticket/unbind-task`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "id": 0,
  "password": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|activityTicketUnBindCmd|activityTicketUnBindCmd|body|true|ActivityTicketUnBindCmd|ActivityTicketUnBindCmd|
|&emsp;&emsp;id|Id||false|integer(int64)||
|&emsp;&emsp;password|用户密码||false|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 解绑当前票券绑定的所有任务


**接口地址**:`/activity,/activity/activity/admin/ticket/unbind-tasks`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "id": 0,
  "password": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|activityTicketUnBindCmd|activityTicketUnBindCmd|body|true|ActivityTicketUnBindCmd|ActivityTicketUnBindCmd|
|&emsp;&emsp;id|Id||false|integer(int64)||
|&emsp;&emsp;password|用户密码||false|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 编辑票券活动


**接口地址**:`/activity,/activity/activity/admin/ticket/update`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>编辑票券活动</p>



**请求示例**:


```javascript
{
  "betCondition": {
    "gameTypeList": [],
    "type": 0,
    "value": ""
  },
  "claimRestriction": 0,
  "depositCondition": {
    "type": 0,
    "value": ""
  },
  "endTime": "",
  "expireDate": 0,
  "expireHour": 0,
  "id": 0,
  "image": "",
  "luckyMoneyConfig": {
    "auditValue": 0,
    "luckyMoneyRewardList": [
      {
        "amount": 0,
        "hitRate": 0,
        "id": 0,
        "stock": 0
      }
    ]
  },
  "moneyConfig": {
    "amount": 0,
    "auditValue": 0,
    "id": 0
  },
  "name": "",
  "nextTickets": [
    {
      "id": 0,
      "name": "",
      "num": 0,
      "type": 0
    }
  ],
  "noPrizeDisplay": "",
  "phoneVerificationCondition": true,
  "registerCountCondition": 0,
  "shareCondition": "",
  "showBroadcast": 0,
  "startTime": "",
  "status": 0,
  "type": 0,
  "wheelConfig": {
    "auditValue": 0,
    "wheelRewardList": [
      {
        "amount": 0,
        "hitRate": 0,
        "id": 0,
        "picture": "",
        "stock": 0,
        "type": ""
      }
    ]
  }
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|TicketActivityUpdateCmd|TicketActivityUpdateCmd|
|&emsp;&emsp;betCondition|投注条件||false|BetCondition|BetCondition|
|&emsp;&emsp;&emsp;&emsp;gameTypeList|打码范围,例如[SLOT,LIVE],为空表示全部||false|array|string|
|&emsp;&emsp;&emsp;&emsp;type|投注检查类型||false|integer||
|&emsp;&emsp;&emsp;&emsp;value|目标值||false|string||
|&emsp;&emsp;claimRestriction|领取限制(0:无限制 1:APP)||false|integer(int32)||
|&emsp;&emsp;depositCondition|存款条件||false|DepositCondition|DepositCondition|
|&emsp;&emsp;&emsp;&emsp;type|存款检查类型||false|integer||
|&emsp;&emsp;&emsp;&emsp;value|目标值||false|string||
|&emsp;&emsp;endTime|票券活动结束时间||false|string(date-time)||
|&emsp;&emsp;expireDate|领取后票券过期时间（天）||false|integer(int32)||
|&emsp;&emsp;expireHour|领取后票券过期时间（时）||false|integer(int32)||
|&emsp;&emsp;id|||false|integer(int64)||
|&emsp;&emsp;image|票券图片||false|string||
|&emsp;&emsp;luckyMoneyConfig|幸运红包配置||false|LuckyMoneyConfig|LuckyMoneyConfig|
|&emsp;&emsp;&emsp;&emsp;auditValue|稽核倍数||false|number||
|&emsp;&emsp;&emsp;&emsp;luckyMoneyRewardList|奖项设置||false|array|LuckyMoneyRewardConfig|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;amount|中奖金额||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;hitRate|中奖概率||false|number||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;id|||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;stock|剩余数量||false|integer||
|&emsp;&emsp;moneyConfig|现金奖励配置||false|MoneyConfig|MoneyConfig|
|&emsp;&emsp;&emsp;&emsp;amount|金额设置||false|integer||
|&emsp;&emsp;&emsp;&emsp;auditValue|稽核倍数||false|number||
|&emsp;&emsp;&emsp;&emsp;id|||false|integer||
|&emsp;&emsp;name|票券名称||false|string||
|&emsp;&emsp;nextTickets|下一轮票券任务||false|array|TicketDistribution|
|&emsp;&emsp;&emsp;&emsp;id|||false|integer||
|&emsp;&emsp;&emsp;&emsp;name|票券名称||false|string||
|&emsp;&emsp;&emsp;&emsp;num|票券数量||false|integer||
|&emsp;&emsp;&emsp;&emsp;type|票券类型(1:幸运红包 2:砸金蛋抽奖券 3:大转盘票券 4:现金兑换券)||false|integer||
|&emsp;&emsp;noPrizeDisplay|未中奖提示||false|string||
|&emsp;&emsp;phoneVerificationCondition|手机验证条件||false|boolean||
|&emsp;&emsp;registerCountCondition|注册合格人数||false|integer(int32)||
|&emsp;&emsp;shareCondition|分享条件||false|string||
|&emsp;&emsp;showBroadcast|是否展示播报信息(0:否 1:是)||false|integer(int32)||
|&emsp;&emsp;startTime|票券活动开始时间||false|string(date-time)||
|&emsp;&emsp;status|是否开启（0:未开启 1:开启）||false|integer(int32)||
|&emsp;&emsp;type|票券类型(1:幸运红包 2:砸金蛋抽奖券 3:大转盘票券 4:现金兑换券)||false|integer(int32)||
|&emsp;&emsp;wheelConfig|大转盘配置||false|WheelConfig|WheelConfig|
|&emsp;&emsp;&emsp;&emsp;auditValue|稽核倍数||false|number||
|&emsp;&emsp;&emsp;&emsp;wheelRewardList|奖项设置||false|array|WheelRewardConfig|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;amount|金额||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;hitRate|中奖概率||false|number||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;id|||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;picture|图片||false|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;stock|剩余数量||false|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;type|奖品类型(0:谢谢参与 1:现金奖励)||false|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 编辑票券活动状态


**接口地址**:`/activity,/activity/activity/admin/ticket/updateStatus`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>编辑票券活动状态</p>



**请求示例**:


```javascript
{
  "id": 0,
  "status": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|TicketActivityStatusUpdateCmd|TicketActivityStatusUpdateCmd|
|&emsp;&emsp;id|||false|integer(int64)||
|&emsp;&emsp;status|是否开启（0:未开启 1:开启）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


# 签到活动-H5接口


## 完成签到


**接口地址**:`/activity,/activity/activity/wap/signing/done`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>完成签到</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«SigningWapDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||SigningWapDTO|SigningWapDTO|
|&emsp;&emsp;dayNum|签到天数|integer(int32)||
|&emsp;&emsp;signingResult|签到结果（true：成功，false：失败）|boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"dayNum": 0,
		"signingResult": true
	},
	"isSuccess": true,
	"message": ""
}
```


## 查询-签到信息


**接口地址**:`/activity,/activity/activity/wap/signing/querySigningInfo`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«SigningInfoDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||SigningInfoDTO|SigningInfoDTO|
|&emsp;&emsp;canSign|false-未满足签到条件，true-满足签到条件|boolean||
|&emsp;&emsp;currentTime|服务器当前时间|integer(int64)||
|&emsp;&emsp;cycleDetails|签到周期详情|array|SigningInfoDetailDTO|
|&emsp;&emsp;&emsp;&emsp;dayNum|签到日期|integer||
|&emsp;&emsp;&emsp;&emsp;depositNum|存款次数|integer||
|&emsp;&emsp;&emsp;&emsp;depositTotal|存款总额|integer||
|&emsp;&emsp;&emsp;&emsp;normalAward|奖金(bonus)|integer||
|&emsp;&emsp;&emsp;&emsp;signingStatus|签到状态（1：待签到、2已签到、3：漏签（待补签）、4：补签、、5：补签正常签）|integer||
|&emsp;&emsp;&emsp;&emsp;specialAward|特殊奖励(extra)|integer||
|&emsp;&emsp;dayNum|签到日期，第N天|integer(int32)||
|&emsp;&emsp;endTime|活动结束时间|integer(int64)||
|&emsp;&emsp;normalAward|普通奖励，奖金(bonus)|integer(int64)||
|&emsp;&emsp;reSigningDepositNum|补签存款次数条件|integer(int32)||
|&emsp;&emsp;reSigningDepositTotal|补签存款总额条件|integer(int64)||
|&emsp;&emsp;realDepositNum|实际充值次数|integer(int32)||
|&emsp;&emsp;realTotalAmount|实际充值金额|integer(int64)||
|&emsp;&emsp;remainingReSigningTimes|剩余签到次数|integer(int32)||
|&emsp;&emsp;signingStatus|签到状态（1：待签到、2已签到、3：漏签（待补签）、4：补签、、5：补签正常签）|integer(int32)||
|&emsp;&emsp;specialAward|特殊奖励(extra)|integer(int64)||
|&emsp;&emsp;totalReSigningTimes|总共有多少次重签|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"canSign": true,
		"currentTime": 0,
		"cycleDetails": [
			{
				"dayNum": 0,
				"depositNum": 0,
				"depositTotal": 0,
				"normalAward": 0,
				"signingStatus": 0,
				"specialAward": 0
			}
		],
		"dayNum": 0,
		"endTime": 0,
		"normalAward": 0,
		"reSigningDepositNum": 0,
		"reSigningDepositTotal": 0,
		"realDepositNum": 0,
		"realTotalAmount": 0,
		"remainingReSigningTimes": 0,
		"signingStatus": 0,
		"specialAward": 0,
		"totalReSigningTimes": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 查询-历史签到统计记录


**接口地址**:`/activity,/activity/activity/wap/signing/querySigningStatistics`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«SigningStatisticsWapDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||SigningStatisticsWapDTO|SigningStatisticsWapDTO|
|&emsp;&emsp;awardTotal|奖励总数|integer(int64)||
|&emsp;&emsp;signingTimes|签到天数|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"awardTotal": 0,
		"signingTimes": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 查询-签到开关配置


**接口地址**:`/activity,/activity/activity/wap/signing/querySwitchInfo`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询-签到开关配置</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«SigningSwitchWapDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||SigningSwitchWapDTO|SigningSwitchWapDTO|
|&emsp;&emsp;switchStatus|开关状态|boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"switchStatus": true
	},
	"isSuccess": true,
	"message": ""
}
```


# 签到活动-定时任务接口


## signingWorkJob


**接口地址**:`/activity,/activity/activity/job/signingWorkJob`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "workDate": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|SigningWorkCmd|SigningWorkCmd|
|&emsp;&emsp;workDate|计算日期||false|string(date)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


# 签到活动后台配置


## 新增配置


**接口地址**:`/activity,/activity/activity/signing/config/add`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "auditValue": 0,
  "configName": "",
  "cycle": true,
  "days": 0,
  "details": [
    {
      "dayNum": 0,
      "depositNum": 0,
      "depositTotal": 0,
      "id": 0,
      "normalAward": 0,
      "specialAward": 0
    }
  ],
  "reSigningDepositNum": 0,
  "reSigningDepositTotal": 0,
  "reSigningLimit": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|SigningConfigAddCmd|SigningConfigAddCmd|
|&emsp;&emsp;auditValue|稽核倍数||false|number||
|&emsp;&emsp;configName|配置名称||false|string||
|&emsp;&emsp;cycle|是否自动循环（false：否，true：是）||false|boolean||
|&emsp;&emsp;days|天数||false|integer(int32)||
|&emsp;&emsp;details|配置明细||false|array|SigningConfigDetailItem|
|&emsp;&emsp;&emsp;&emsp;dayNum|第N天||false|integer||
|&emsp;&emsp;&emsp;&emsp;depositNum|存款次数||false|integer||
|&emsp;&emsp;&emsp;&emsp;depositTotal|存款总额||false|integer||
|&emsp;&emsp;&emsp;&emsp;id|明细ID，新增时不传，修改时必传||false|integer||
|&emsp;&emsp;&emsp;&emsp;normalAward|普通奖励||false|integer||
|&emsp;&emsp;&emsp;&emsp;specialAward|特殊奖励||false|integer||
|&emsp;&emsp;reSigningDepositNum|补签存款次数条件||false|integer(int32)||
|&emsp;&emsp;reSigningDepositTotal|补签存款总额条件||false|integer(int64)||
|&emsp;&emsp;reSigningLimit|补签次数||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 修改配置


**接口地址**:`/activity,/activity/activity/signing/config/edit`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "auditValue": 0,
  "configName": "",
  "cycle": true,
  "details": [
    {
      "dayNum": 0,
      "depositNum": 0,
      "depositTotal": 0,
      "id": 0,
      "normalAward": 0,
      "specialAward": 0
    }
  ],
  "id": 0,
  "reSigningDepositNum": 0,
  "reSigningDepositTotal": 0,
  "reSigningLimit": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|SigningConfigEditCmd|SigningConfigEditCmd|
|&emsp;&emsp;auditValue|稽核倍数||false|number||
|&emsp;&emsp;configName|配置名称||false|string||
|&emsp;&emsp;cycle|是否自动循环（false：否，true：是）||false|boolean||
|&emsp;&emsp;details|配置明细||false|array|SigningConfigDetailItem|
|&emsp;&emsp;&emsp;&emsp;dayNum|第N天||false|integer||
|&emsp;&emsp;&emsp;&emsp;depositNum|存款次数||false|integer||
|&emsp;&emsp;&emsp;&emsp;depositTotal|存款总额||false|integer||
|&emsp;&emsp;&emsp;&emsp;id|明细ID，新增时不传，修改时必传||false|integer||
|&emsp;&emsp;&emsp;&emsp;normalAward|普通奖励||false|integer||
|&emsp;&emsp;&emsp;&emsp;specialAward|特殊奖励||false|integer||
|&emsp;&emsp;id|主键||false|integer(int64)||
|&emsp;&emsp;reSigningDepositNum|补签存款次数条件||false|integer(int32)||
|&emsp;&emsp;reSigningDepositTotal|补签存款总额条件||false|integer(int64)||
|&emsp;&emsp;reSigningLimit|补签次数||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 编辑-开关配置


**接口地址**:`/activity,/activity/activity/signing/config/editSwitch`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "endTime": "",
  "startTime": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|SigningSwitchEditCmd|SigningSwitchEditCmd|
|&emsp;&emsp;endTime|结束时间||false|string(date-time)||
|&emsp;&emsp;startTime|开始时间||false|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 分页查询签到活动配置


**接口地址**:`/activity,/activity/activity/signing/config/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "configName": "",
  "current": 0,
  "endTime": "",
  "operator": "",
  "size": 0,
  "startTime": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|SigningConfigPageQuery|SigningConfigPageQuery|
|&emsp;&emsp;configName|签到配置名称||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||false|string(date-time)||
|&emsp;&emsp;operator|操作人账号||false|string||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||false|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«SigningConfigPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|SigningConfigPageDTO|
|&emsp;&emsp;configName|配置名称|string||
|&emsp;&emsp;configStatus|配置状态 0-启用，1-启用|integer(int32)||
|&emsp;&emsp;createTime|create_time|integer(int64)||
|&emsp;&emsp;days|活动天数|integer(int32)||
|&emsp;&emsp;id|主键|integer(int64)||
|&emsp;&emsp;operator|operator|string||
|&emsp;&emsp;totalAwardAmount|累计派奖金额|integer(int64)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"configName": "",
			"configStatus": 0,
			"createTime": 0,
			"days": 0,
			"id": 0,
			"operator": "",
			"totalAwardAmount": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 查询配置详情


**接口地址**:`/activity,/activity/activity/signing/config/queryById/{id}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id|id|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«SigningConfigDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||SigningConfigDTO|SigningConfigDTO|
|&emsp;&emsp;auditValue|稽核倍数|number||
|&emsp;&emsp;configName|配置名称|string||
|&emsp;&emsp;configStatus|配置状态 0-关闭 ,1-开启|integer(int32)||
|&emsp;&emsp;cycle|是否自动循环（false：否，true：是）|boolean||
|&emsp;&emsp;days|天数|integer(int32)||
|&emsp;&emsp;details|配置明细|array|SigningConfigDetail|
|&emsp;&emsp;&emsp;&emsp;dayNum|第N天|integer||
|&emsp;&emsp;&emsp;&emsp;depositNum|存款次数|integer||
|&emsp;&emsp;&emsp;&emsp;depositTotal|存款总额|integer||
|&emsp;&emsp;&emsp;&emsp;id|明细ID|integer||
|&emsp;&emsp;&emsp;&emsp;normalAward|普通奖励|integer||
|&emsp;&emsp;&emsp;&emsp;specialAward|特殊奖励|integer||
|&emsp;&emsp;id|主键|integer(int64)||
|&emsp;&emsp;reSigningDepositNum|补签存款次数条件|integer(int32)||
|&emsp;&emsp;reSigningDepositTotal|补签存款总额条件|integer(int64)||
|&emsp;&emsp;reSigningLimit|补签次数|integer(int32)||
|&emsp;&emsp;reSigningSwitch|补签开关（false：关，true：开）|boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"auditValue": 0,
		"configName": "",
		"configStatus": 0,
		"cycle": true,
		"days": 0,
		"details": [
			{
				"dayNum": 0,
				"depositNum": 0,
				"depositTotal": 0,
				"id": 0,
				"normalAward": 0,
				"specialAward": 0
			}
		],
		"id": 0,
		"reSigningDepositNum": 0,
		"reSigningDepositTotal": 0,
		"reSigningLimit": 0,
		"reSigningSwitch": true
	},
	"isSuccess": true,
	"message": ""
}
```


## 查询-开关配置


**接口地址**:`/activity,/activity/activity/signing/config/querySwitch`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«SigningSwitchDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||SigningSwitchDTO|SigningSwitchDTO|
|&emsp;&emsp;endTime|结束时间|integer(int64)||
|&emsp;&emsp;startTime|开始时间|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"endTime": 0,
		"startTime": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# 签到活动记录查询


## 分页查询


**接口地址**:`/activity,/activity/activity/signing/record/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "account": "",
  "awardType": "",
  "current": 0,
  "endTime": "",
  "size": 0,
  "startTime": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|SigningRecordPageQuery|SigningRecordPageQuery|
|&emsp;&emsp;account|账号||false|string||
|&emsp;&emsp;awardType|奖励类型（1：普通奖，2：大奖）||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||false|string(date-time)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||false|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«SigningRecordPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|SigningRecordPageDTO|
|&emsp;&emsp;account|会员账号|string||
|&emsp;&emsp;awardAmount|奖励金额|integer(int64)||
|&emsp;&emsp;awardType|奖励类型（1：普通奖，2：大奖）|string||
|&emsp;&emsp;dayNum|签到内容|integer(int32)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;sendTime|领取时间|integer(int64)||
|&emsp;&emsp;signingType|签到类型（1：正常签到，2补签）|string||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"account": "",
			"awardAmount": 0,
			"awardType": "",
			"dayNum": 0,
			"id": 0,
			"sendTime": 0,
			"signingType": ""
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 统计查询


**接口地址**:`/activity,/activity/activity/signing/record/sum`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "account": "",
  "awardType": "",
  "current": 0,
  "endTime": "",
  "size": 0,
  "startTime": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|SigningRecordPageQuery|SigningRecordPageQuery|
|&emsp;&emsp;account|账号||false|string||
|&emsp;&emsp;awardType|奖励类型（1：普通奖，2：大奖）||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||false|string(date-time)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||false|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«SigningRecordSumDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||SigningRecordSumDTO|SigningRecordSumDTO|
|&emsp;&emsp;reSigningCount|补签次数|integer(int32)||
|&emsp;&emsp;signingCount|签到次数|integer(int32)||
|&emsp;&emsp;totalAwardAmount|总奖金|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"reSigningCount": 0,
		"signingCount": 0,
		"totalAwardAmount": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# 累计充值活动H5相关接口


## 用户当前奖励


**接口地址**:`/activity,/activity/activity/wap/cumulative/currentAward`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«UserChargeCumulativeWapDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||UserChargeCumulativeWapDTO|UserChargeCumulativeWapDTO|
|&emsp;&emsp;id|领取记录Id|integer(int64)||
|&emsp;&emsp;obtainingStatus|领取状态|integer(int32)||
|&emsp;&emsp;rewardAmount|领取金额|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"id": 0,
		"obtainingStatus": 0,
		"rewardAmount": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 用户领取奖励


**接口地址**:`/activity,/activity/activity/wap/cumulative/gainAward/{id}`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id|id|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 累计充值信息


**接口地址**:`/activity,/activity/activity/wap/cumulative/getCumulativeDepositConfig`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>累计充值信息</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«DailyCumulativeDepositConfig-每日存款累计活动配置»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||DailyCumulativeDepositConfig-每日存款累计活动配置|DailyCumulativeDepositConfig-每日存款累计活动配置|
|&emsp;&emsp;levelConfigList|等级配置|array|DailyCumulativeDepositConfig-等级配置|
|&emsp;&emsp;&emsp;&emsp;customerLevel|用户VIP等级|integer||
|&emsp;&emsp;&emsp;&emsp;rewardConfigList|等级奖励配置|array|DailyCumulativeDepositConfig-等级奖励配置|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;cumulativeDeposit|累计金额|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardAmount|奖励金额|integer||
|&emsp;&emsp;multipleNum|稽核倍数|integer(int32)||
|&emsp;&emsp;operator|操作用户|string||
|&emsp;&emsp;receiveMethod|领取方式 1：自动领取  2：手动领取|integer(int32)||
|&emsp;&emsp;rule|规则描述|string||
|&emsp;&emsp;status|活动状态 1开启 2关闭|integer(int32)||
|&emsp;&emsp;updateTime|最后更新时间|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"levelConfigList": [
			{
				"customerLevel": 0,
				"rewardConfigList": [
					{
						"cumulativeDeposit": 0,
						"rewardAmount": 0
					}
				]
			}
		],
		"multipleNum": 0,
		"operator": "",
		"receiveMethod": 0,
		"rule": "",
		"status": 0,
		"updateTime": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# 红包雨活动-H5接口


## 抽奖


**接口地址**:`/activity,/activity/activity/wap/moneyRain/draw`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«MoneyRainDrawDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||MoneyRainDrawDTO|MoneyRainDrawDTO|
|&emsp;&emsp;bonus|红包雨奖金|integer(int64)||
|&emsp;&emsp;currentTime|当前时间|integer(int64)||
|&emsp;&emsp;next|下一轮次时间|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"bonus": 0,
		"currentTime": 0,
		"next": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 查询红包雨活动信息


**接口地址**:`/activity,/activity/activity/wap/moneyRain/queryInfo`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«MoneyRainInfoDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||MoneyRainInfoDTO|MoneyRainInfoDTO|
|&emsp;&emsp;bonus|已领取金额|integer(int64)||
|&emsp;&emsp;currentTime|当前时间|integer(int64)||
|&emsp;&emsp;next|下一轮次时间|integer(int64)||
|&emsp;&emsp;status|状态： 1-活动未开始,2-没有领取资格,3-金额不足,4-未领取，5-已领取,6-活动已关闭,7-未存款|integer(int32)||
|&emsp;&emsp;statusDesc|状态描述|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"bonus": 0,
		"currentTime": 0,
		"next": 0,
		"status": 0,
		"statusDesc": ""
	},
	"isSuccess": true,
	"message": ""
}
```


## 查询红包雨活动开关


**接口地址**:`/activity,/activity/activity/wap/moneyRain/querySwitchConfig`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«SwitchConfigDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||SwitchConfigDTO|SwitchConfigDTO|
|&emsp;&emsp;serverTime|服务器时间|integer(int64)||
|&emsp;&emsp;switchStatus|true：活动开启，false：活动关闭|boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"serverTime": 0,
		"switchStatus": true
	},
	"isSuccess": true,
	"message": ""
}
```


## 轮次规则


**接口地址**:`/activity,/activity/activity/wap/moneyRain/rule`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«WeekRuleConfigDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||WeekRuleConfigDTO|WeekRuleConfigDTO|
|&emsp;&emsp;next|下一轮次时间|integer(int64)||
|&emsp;&emsp;roundTime|轮次整点数|array|array|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"next": 0,
		"roundTime": []
	},
	"isSuccess": true,
	"message": ""
}
```


# 红包雨活动配置


## 查询活动奖励记录（分页）


**接口地址**:`/activity,/activity/activity/money/rain/bonus/record/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询活动奖励记录（分页）</p>



**请求示例**:


```javascript
{
  "account": 2023100800,
  "current": 0,
  "endTime": "2024-01-31 23:59:59",
  "hourOfTime": 12,
  "level": 1,
  "size": 0,
  "startTime": "2024-01-01 00:00:00"
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|BonusRecordPageQuery|BonusRecordPageQuery|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||true|string(date-time)||
|&emsp;&emsp;hourOfTime|轮次整点时间||false|integer(int32)||
|&emsp;&emsp;level|奖励等级||false|integer(int32)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||true|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«MoneyRainBonusRecordPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|MoneyRainBonusRecordPageDTO|
|&emsp;&emsp;account|会员账号|string||
|&emsp;&emsp;bonus|奖金|integer(int64)||
|&emsp;&emsp;createTime|领奖时间|integer(int64)||
|&emsp;&emsp;customerLevel|奖励等级|integer(int32)||
|&emsp;&emsp;hourOfTime|轮次整点时间|integer(int32)||
|&emsp;&emsp;round|轮次|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"account": "",
			"bonus": 0,
			"createTime": 0,
			"customerLevel": 0,
			"hourOfTime": 0,
			"round": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 查询活动奖励记录合计


**接口地址**:`/activity,/activity/activity/money/rain/bonus/record/sum`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询活动奖励记录合计</p>



**请求示例**:


```javascript
{
  "account": 2023100800,
  "current": 0,
  "endTime": "2024-01-31 23:59:59",
  "hourOfTime": 12,
  "level": 1,
  "size": 0,
  "startTime": "2024-01-01 00:00:00"
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|BonusRecordPageQuery|BonusRecordPageQuery|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||true|string(date-time)||
|&emsp;&emsp;hourOfTime|轮次整点时间||false|integer(int32)||
|&emsp;&emsp;level|奖励等级||false|integer(int32)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||true|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«MoneyRainBonusRecordSumDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||MoneyRainBonusRecordSumDTO|MoneyRainBonusRecordSumDTO|
|&emsp;&emsp;bonus|领奖金额合计|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"bonus": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 查询活动基础配置


**接口地址**:`/activity,/activity/activity/money/rain/config/base`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询活动基础配置</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«MoneyRainBaseConfigDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||MoneyRainBaseConfigDTO|MoneyRainBaseConfigDTO|
|&emsp;&emsp;configId||integer(int64)||
|&emsp;&emsp;multipleNum|稽核倍数|number||
|&emsp;&emsp;operator|操作人|string||
|&emsp;&emsp;receivedTotalBonus|当前轮次已发奖励总和|integer(int64)||
|&emsp;&emsp;roundDesc|当前轮次时间|string||
|&emsp;&emsp;switchStatus|活动开关（true：开启，false：关闭）|boolean||
|&emsp;&emsp;unDepositDay|存款间隔天数（0表示不限制）|integer(int32)||
|&emsp;&emsp;updateTime|最后更新时间|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"configId": 0,
		"multipleNum": 0,
		"operator": "",
		"receivedTotalBonus": 0,
		"roundDesc": "",
		"switchStatus": true,
		"unDepositDay": 0,
		"updateTime": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 编辑活动配置


**接口地址**:`/activity,/activity/activity/money/rain/config/edit`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>编辑活动配置</p>



**请求示例**:


```javascript
{
  "configId": 0,
  "multipleNum": 0,
  "switchStatus": true,
  "unDepositDay": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|MoneyRainEditCmd|MoneyRainEditCmd|
|&emsp;&emsp;configId|||false|integer(int64)||
|&emsp;&emsp;multipleNum|稽核倍数||true|number||
|&emsp;&emsp;switchStatus|活动开关（true：开启，false：关闭）||true|boolean||
|&emsp;&emsp;unDepositDay|存款间隔天数（0表示不限制）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 查询活动配置


**接口地址**:`/activity,/activity/activity/money/rain/config/info`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询活动配置</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«MoneyRainConfigDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||MoneyRainConfigDTO|MoneyRainConfigDTO|
|&emsp;&emsp;configId||integer(int64)||
|&emsp;&emsp;multipleNum|稽核倍数|number||
|&emsp;&emsp;operator|操作人|string||
|&emsp;&emsp;receivedTotalBonus|当前轮次已发奖励总和|integer(int64)||
|&emsp;&emsp;roundDesc|当前轮次时间|string||
|&emsp;&emsp;switchStatus|活动开关（true：开启，false：关闭）|boolean||
|&emsp;&emsp;unDepositDay|存款间隔天数（0表示不限制）|integer(int32)||
|&emsp;&emsp;updateTime|最后更新时间|integer(int64)||
|&emsp;&emsp;weeks|周数据配置|array|MoneyRainConfigSubDTO|
|&emsp;&emsp;&emsp;&emsp;bonusConfigList|等级奖励数据|array|LevelRainBonusConfigDTO|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;bonusConfigId||integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;bonusEnd|等级奖励最大值|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;bonusStart|等级奖励最小值|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;level|VIP等级|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;levelTotalBonus|等级奖励配额上限|integer||
|&emsp;&emsp;&emsp;&emsp;current|是否正在进行|boolean||
|&emsp;&emsp;&emsp;&emsp;dayOfWeek|星期天数|integer||
|&emsp;&emsp;&emsp;&emsp;deleted|是否删除（true：删除，false：未删除）|boolean||
|&emsp;&emsp;&emsp;&emsp;preTime|修改前的轮次整点数|integer||
|&emsp;&emsp;&emsp;&emsp;roundTime|轮次整点数|integer||
|&emsp;&emsp;&emsp;&emsp;totalBonus|每轮活动奖金上限|integer||
|&emsp;&emsp;&emsp;&emsp;weekConfigId||integer||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"configId": 0,
		"multipleNum": 0,
		"operator": "",
		"receivedTotalBonus": 0,
		"roundDesc": "",
		"switchStatus": true,
		"unDepositDay": 0,
		"updateTime": 0,
		"weeks": [
			{
				"bonusConfigList": [
					{
						"bonusConfigId": 0,
						"bonusEnd": 0,
						"bonusStart": 0,
						"level": 0,
						"levelTotalBonus": 0
					}
				],
				"current": true,
				"dayOfWeek": 1,
				"deleted": true,
				"preTime": 0,
				"roundTime": 0,
				"totalBonus": 0,
				"weekConfigId": 0
			}
		]
	},
	"isSuccess": true,
	"message": ""
}
```


## 删除周数据配置


**接口地址**:`/activity,/activity/activity/money/rain/config/week/delete`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>删除周数据配置</p>



**请求示例**:


```javascript
{
  "week": 0,
  "weekConfigId": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|MoneyRainWeekDeleteCmd|MoneyRainWeekDeleteCmd|
|&emsp;&emsp;week|星期天数||false|integer(int32)||
|&emsp;&emsp;weekConfigId|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 编辑活动周数据配置


**接口地址**:`/activity,/activity/activity/money/rain/config/week/edit`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>编辑活动周数据配置</p>



**请求示例**:


```javascript
{
  "bonusConfigList": [
    {
      "bonusConfigId": 0,
      "bonusEnd": 0,
      "bonusStart": 0,
      "level": 0,
      "levelTotalBonus": 0
    }
  ],
  "dayOfWeek": 1,
  "deleted": true,
  "preTime": 0,
  "roundTime": 0,
  "totalBonus": 998000,
  "weekConfigId": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|MoneyRainWeekAddCmd|MoneyRainWeekAddCmd|
|&emsp;&emsp;bonusConfigList|等级奖励数据||false|array|LevelRainBonusConfigDTO|
|&emsp;&emsp;&emsp;&emsp;bonusConfigId|||false|integer||
|&emsp;&emsp;&emsp;&emsp;bonusEnd|等级奖励最大值||false|integer||
|&emsp;&emsp;&emsp;&emsp;bonusStart|等级奖励最小值||false|integer||
|&emsp;&emsp;&emsp;&emsp;level|VIP等级||false|integer||
|&emsp;&emsp;&emsp;&emsp;levelTotalBonus|等级奖励配额上限||false|integer||
|&emsp;&emsp;dayOfWeek|星期天数||false|integer(int32)||
|&emsp;&emsp;deleted|是否删除（true：删除，false：未删除）||false|boolean||
|&emsp;&emsp;preTime|修改前的轮次整点数||false|integer(int32)||
|&emsp;&emsp;roundTime|轮次整点数||false|integer(int32)||
|&emsp;&emsp;totalBonus|每轮活动奖金上限||true|integer(int64)||
|&emsp;&emsp;weekConfigId|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 查询活动周数据配置


**接口地址**:`/activity,/activity/activity/money/rain/config/week/info`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询活动周数据配置</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«WeekConfigInfoDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|WeekConfigInfoDTO|
|&emsp;&emsp;bonusConfigList|等级奖励数据|array|LevelRainBonusConfigDTO|
|&emsp;&emsp;&emsp;&emsp;bonusConfigId||integer||
|&emsp;&emsp;&emsp;&emsp;bonusEnd|等级奖励最大值|integer||
|&emsp;&emsp;&emsp;&emsp;bonusStart|等级奖励最小值|integer||
|&emsp;&emsp;&emsp;&emsp;level|VIP等级|integer||
|&emsp;&emsp;&emsp;&emsp;levelTotalBonus|等级奖励配额上限|integer||
|&emsp;&emsp;current|是否正在进行|boolean||
|&emsp;&emsp;dayOfWeek|星期天数|integer(int32)||
|&emsp;&emsp;deleted|是否删除（true：删除，false：未删除）|boolean||
|&emsp;&emsp;preTime|修改前的轮次整点数|integer(int32)||
|&emsp;&emsp;roundTime|轮次整点数|integer(int32)||
|&emsp;&emsp;totalBonus|每轮活动奖金上限|integer(int64)||
|&emsp;&emsp;weekConfigId||integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"bonusConfigList": [
				{
					"bonusConfigId": 0,
					"bonusEnd": 0,
					"bonusStart": 0,
					"level": 0,
					"levelTotalBonus": 0
				}
			],
			"current": true,
			"dayOfWeek": 1,
			"deleted": true,
			"preTime": 0,
			"roundTime": 0,
			"totalBonus": 0,
			"weekConfigId": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 查询活动轮次记录（分页）


**接口地址**:`/activity,/activity/activity/money/rain/statistics/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询活动轮次记录（分页）</p>



**请求示例**:


```javascript
{
  "current": 0,
  "endTime": "2024-01-31",
  "size": 0,
  "startTime": "2024-01-01"
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|MoneyRainStatisticsPageQuery|MoneyRainStatisticsPageQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||true|string(date)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||true|string(date)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«MoneyRainStatisticsPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|MoneyRainStatisticsPageDTO|
|&emsp;&emsp;endTime|场次结束时间|string||
|&emsp;&emsp;failCount|领取失败人数|integer(int32)||
|&emsp;&emsp;reportDate|日期|string(date)||
|&emsp;&emsp;startTime|场次开始时间|string||
|&emsp;&emsp;successAmt|成功总金额|integer(int64)||
|&emsp;&emsp;successCount|成功领取人次|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"endTime": "",
			"failCount": 0,
			"reportDate": "",
			"startTime": "",
			"successAmt": 0,
			"successCount": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 查询活动轮次记录合计


**接口地址**:`/activity,/activity/activity/money/rain/statistics/sum`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询活动轮次记录合计</p>



**请求示例**:


```javascript
{
  "current": 0,
  "endTime": "2024-01-31",
  "size": 0,
  "startTime": "2024-01-01"
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|MoneyRainStatisticsPageQuery|MoneyRainStatisticsPageQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||true|string(date)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||true|string(date)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«MoneyRainStatisticsSumDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||MoneyRainStatisticsSumDTO|MoneyRainStatisticsSumDTO|
|&emsp;&emsp;failCount|失败次数合计|integer(int32)||
|&emsp;&emsp;successAmt|成功金额合计|integer(int64)||
|&emsp;&emsp;successCount|成功次数合计|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"failCount": 0,
		"successAmt": 0,
		"successCount": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# 老带新邀请记录


## 查询推荐成员分页


**接口地址**:`/activity,/activity/activity/recommend/record`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "current": 0,
  "endMonth": {
    "month": 0,
    "year": 0
  },
  "endTime": 0,
  "inviteeAccount": "",
  "inviterId": 0,
  "recommendType": 0,
  "size": 0,
  "startMonth": {
    "month": 0,
    "year": 0
  },
  "startTime": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|InviteRecordPageQuery|InviteRecordPageQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endMonth|结束时间||false|YearMonth|YearMonth|
|&emsp;&emsp;&emsp;&emsp;month|||false|integer||
|&emsp;&emsp;&emsp;&emsp;year|||false|integer||
|&emsp;&emsp;endTime|||false|integer(int64)||
|&emsp;&emsp;inviteeAccount|用户账号||false|string||
|&emsp;&emsp;inviterId|邀请人ID||false|integer(int64)||
|&emsp;&emsp;recommendType|推荐类型 1-老带新  ，2-转盘， 3-其他||false|integer(int32)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startMonth|开始时间||false|YearMonth|YearMonth|
|&emsp;&emsp;&emsp;&emsp;month|||false|integer||
|&emsp;&emsp;&emsp;&emsp;year|||false|integer||
|&emsp;&emsp;startTime|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«InviteRecordPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|InviteRecordPageDTO|
|&emsp;&emsp;customerLevel|用户等级|integer(int32)||
|&emsp;&emsp;inviteeAccount|用户账号|string||
|&emsp;&emsp;rechargeWithdrawalDiffAmount|充值提现差额|integer(int64)||
|&emsp;&emsp;registerTime|注册时间|integer(int64)||
|&emsp;&emsp;totalRechargeAmount|总充值金额|integer(int64)||
|&emsp;&emsp;totalWithdrawalAmount|总提现金额|integer(int64)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"customerLevel": 0,
			"inviteeAccount": "",
			"rechargeWithdrawalDiffAmount": 0,
			"registerTime": 0,
			"totalRechargeAmount": 0,
			"totalWithdrawalAmount": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 查询推荐成员汇总信息


**接口地址**:`/activity,/activity/activity/recommend/sum`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "current": 0,
  "endMonth": {
    "month": 0,
    "year": 0
  },
  "endTime": 0,
  "inviteeAccount": "",
  "inviterId": 0,
  "recommendType": 0,
  "size": 0,
  "startMonth": {
    "month": 0,
    "year": 0
  },
  "startTime": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|InviteRecordPageQuery|InviteRecordPageQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endMonth|结束时间||false|YearMonth|YearMonth|
|&emsp;&emsp;&emsp;&emsp;month|||false|integer||
|&emsp;&emsp;&emsp;&emsp;year|||false|integer||
|&emsp;&emsp;endTime|||false|integer(int64)||
|&emsp;&emsp;inviteeAccount|用户账号||false|string||
|&emsp;&emsp;inviterId|邀请人ID||false|integer(int64)||
|&emsp;&emsp;recommendType|推荐类型 1-老带新  ，2-转盘， 3-其他||false|integer(int32)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startMonth|开始时间||false|YearMonth|YearMonth|
|&emsp;&emsp;&emsp;&emsp;month|||false|integer||
|&emsp;&emsp;&emsp;&emsp;year|||false|integer||
|&emsp;&emsp;startTime|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«InviteSumDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||InviteSumDTO|InviteSumDTO|
|&emsp;&emsp;rechargeWithdrawDiffAmount|充值差|integer(int64)||
|&emsp;&emsp;totalCustomerCount|总会员数量|integer(int32)||
|&emsp;&emsp;totalRechargeAmount|充值|integer(int64)||
|&emsp;&emsp;totalWithdrawAmount|提现|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"rechargeWithdrawDiffAmount": 0,
		"totalCustomerCount": 0,
		"totalRechargeAmount": 0,
		"totalWithdrawAmount": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# 转盘活动H5接口


## 申请提现-v2.2.0


**接口地址**:`/activity,/activity/activity/wap/turntable/applyWithdraw/{recordId}`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>申请提现-v2.2.0</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|recordId|recordId|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 获取失败详情-v2.2.0


**接口地址**:`/activity,/activity/activity/wap/turntable/auditInfo/{recordId}`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>获取失败详情-v2.2.0</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|recordId|recordId|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«TurntableRecordApplyDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||TurntableRecordApplyDTO|TurntableRecordApplyDTO|
|&emsp;&emsp;auditInfo|审核原因|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"auditInfo": ""
	},
	"isSuccess": true,
	"message": ""
}
```


## 获取奖励配置-v2.0.3


**接口地址**:`/activity,/activity/activity/wap/turntable/config`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>获取奖励配置-v2.0.3</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«TurntableRewardConfigWapDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|TurntableRewardConfigWapDTO|
|&emsp;&emsp;freeTimes|免费次数|integer(int32)||
|&emsp;&emsp;maxLevel|vip最大等级|integer(int32)||
|&emsp;&emsp;minLevel|vip最小等级|integer(int32)||
|&emsp;&emsp;rewards|转盘奖励|array|RewardConfigWapDTO|
|&emsp;&emsp;&emsp;&emsp;id|ID|integer||
|&emsp;&emsp;&emsp;&emsp;pic|图片地址|string||
|&emsp;&emsp;&emsp;&emsp;rewardTypeCode|奖励类型ID|integer||
|&emsp;&emsp;&emsp;&emsp;rewardValue|奖励值|string||
|&emsp;&emsp;turntableType|转盘类型|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"freeTimes": 0,
			"maxLevel": 0,
			"minLevel": 0,
			"rewards": [
				{
					"id": 0,
					"pic": "",
					"rewardTypeCode": 0,
					"rewardValue": ""
				}
			],
			"turntableType": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 查询转盘活动状态


**接口地址**:`/activity,/activity/activity/wap/turntable/config/queryTurntableStatus`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询转盘活动状态</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«TurntableStatusDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||TurntableStatusDTO|TurntableStatusDTO|
|&emsp;&emsp;status|活动状态（1：开启，2：关闭）|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"status": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 获取转盘配置-v2.2.0


**接口地址**:`/activity,/activity/activity/wap/turntable/configInfo`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>获取转盘配置-v2.2.0</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«TurntableConfigInfoDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||TurntableConfigInfoDTO|TurntableConfigInfoDTO|
|&emsp;&emsp;posterInfo|海报信息|string||
|&emsp;&emsp;rewardInfo|转盘数据|array|TurntableRewardConfigWapDTO|
|&emsp;&emsp;&emsp;&emsp;freeTimes|免费次数|integer||
|&emsp;&emsp;&emsp;&emsp;maxLevel|vip最大等级|integer||
|&emsp;&emsp;&emsp;&emsp;minLevel|vip最小等级|integer||
|&emsp;&emsp;&emsp;&emsp;rewards|转盘奖励|array|RewardConfigWapDTO|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;id|ID|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;pic|图片地址|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardTypeCode|奖励类型ID|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardValue|奖励值|string||
|&emsp;&emsp;&emsp;&emsp;turntableType|转盘类型|integer||
|&emsp;&emsp;shareContent|分享文案|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"posterInfo": "",
		"rewardInfo": [
			{
				"freeTimes": 0,
				"maxLevel": 0,
				"minLevel": 0,
				"rewards": [
					{
						"id": 0,
						"pic": "",
						"rewardTypeCode": 0,
						"rewardValue": ""
					}
				],
				"turntableType": 0
			}
		],
		"shareContent": ""
	},
	"isSuccess": true,
	"message": ""
}
```


## 抽奖-v2.2.0


**接口地址**:`/activity,/activity/activity/wap/turntable/draw/{type}`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>抽奖-v2.2.0</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|type|type|path|true|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«DrawDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||DrawDTO|DrawDTO|
|&emsp;&emsp;id|奖品ID|integer(int64)||
|&emsp;&emsp;pic|图片地址|string||
|&emsp;&emsp;rewardTypeCode|奖励类型编码|integer(int32)||
|&emsp;&emsp;rewardTypeName|奖励类型名称|string||
|&emsp;&emsp;rewardValue|奖励值|number||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"id": 0,
		"pic": "",
		"rewardTypeCode": 0,
		"rewardTypeName": "",
		"rewardValue": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 获取用户助力提醒-v2.0.3


**接口地址**:`/activity,/activity/activity/wap/turntable/getCustomerInviteRemind`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>获取用户助力提醒-v2.0.3</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«CustomerInviteRemindDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||CustomerInviteRemindDTO|CustomerInviteRemindDTO|
|&emsp;&emsp;amount|获奖金额|integer(int64)||
|&emsp;&emsp;endTime|结束时间|integer(int64)||
|&emsp;&emsp;residueHelpCompletedCount|剩余多少次助力就完成可以提现|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"amount": 0,
		"endTime": 0,
		"residueHelpCompletedCount": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 获取用户转盘记录详情-v2.2.0


**接口地址**:`/activity,/activity/activity/wap/turntable/pageDrawRecordInfo`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>获取用户转盘记录详情-v2.2.0</p>



**请求示例**:


```javascript
{
  "current": 0,
  "size": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|qry|qry|body|true|PageParam|PageParam|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;size|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«TurntableDrawRecordInfoDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|TurntableDrawRecordInfoDTO|
|&emsp;&emsp;id|Id|integer(int64)||
|&emsp;&emsp;resourceName|来源类型名称|string||
|&emsp;&emsp;resourceType|奖励类型 1免费次数 2抽奖次数 3邀请奖励 4初始金|integer(int32)||
|&emsp;&emsp;rewardTime|获取奖励时间|integer(int64)||
|&emsp;&emsp;rewardTypeCode|奖励类型|integer(int32)||
|&emsp;&emsp;rewardValue|奖励类型值|string||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"id": 0,
			"resourceName": "",
			"resourceType": 0,
			"rewardTime": 0,
			"rewardTypeCode": 0,
			"rewardValue": ""
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 获取转盘游戏中奖记录-v2.0.3


**接口地址**:`/activity,/activity/activity/wap/turntable/pageGameRewardRecord`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>获取转盘游戏中奖记录-v2.0.3</p>



**请求示例**:


```javascript
{
  "current": 0,
  "size": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|qry|qry|body|true|PageParam|PageParam|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;size|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«RewardRecordDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|RewardRecordDTO|
|&emsp;&emsp;account|会员账号|string||
|&emsp;&emsp;pic|图标地址|string||
|&emsp;&emsp;rewardTypeCode|奖励类型编码|integer(int32)||
|&emsp;&emsp;rewardTypeName|奖励类型名称|string||
|&emsp;&emsp;rewardValue|奖励值|string||
|&emsp;&emsp;turntableName|转盘名称|string||
|&emsp;&emsp;turntableType|转盘类型|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"account": "",
			"pic": "",
			"rewardTypeCode": 0,
			"rewardTypeName": "",
			"rewardValue": "",
			"turntableName": "",
			"turntableType": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 游戏提现记录-v2.0.3


**接口地址**:`/activity,/activity/activity/wap/turntable/pageGameWithdrawalRecord`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>游戏提现记录-v2.0.3</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«GameWithdrawalRecordDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|GameWithdrawalRecordDTO|
|&emsp;&emsp;account|账号|string||
|&emsp;&emsp;rewardDesc|提现描述|string||
|&emsp;&emsp;rewardValue|奖励值|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"account": "",
			"rewardDesc": "",
			"rewardValue": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 获取用户提现记录-v2.2.0


**接口地址**:`/activity,/activity/activity/wap/turntable/pageWithdrawalRecord`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>获取用户提现记录-v2.2.0</p>



**请求示例**:


```javascript
{
  "current": 0,
  "size": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|qry|qry|body|true|PageParam|PageParam|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;size|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«WithdrawalRecordDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|WithdrawalRecordDTO|
|&emsp;&emsp;rewardValue|奖励值|integer(int64)||
|&emsp;&emsp;turntableRecordId|记录Id|integer(int64)||
|&emsp;&emsp;withdrawalStatus|提现状态 1待提现 2成功 4提现中 5审核中 6已拒绝|integer(int32)||
|&emsp;&emsp;withdrawalTime|提现时间|integer(int64)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"rewardValue": 0,
			"turntableRecordId": 0,
			"withdrawalStatus": 0,
			"withdrawalTime": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 查询活动说明


**接口地址**:`/activity,/activity/activity/wap/turntable/queryActivityDesc`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«string»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": "",
	"isSuccess": true,
	"message": ""
}
```


## 获取助力玩家列表


**接口地址**:`/activity,/activity/activity/wap/turntable/queryHelpCustomerList`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«HelpCustomerDTO»»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|HelpCustomerDTO|
|&emsp;&emsp;createTime|创建时间|integer(int64)||
|&emsp;&emsp;helpAccount|助力玩家账号|string||
|&emsp;&emsp;helpTelephone|助力玩家手机号|string||
|&emsp;&emsp;progress|帮助进度|integer(int64)||
|&emsp;&emsp;receivedDesc|助力描述|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"createTime": 0,
			"helpAccount": "",
			"helpTelephone": "",
			"progress": 0,
			"receivedDesc": ""
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 查询抽奖信息-v2.2.0


**接口地址**:`/activity,/activity/activity/wap/turntable/queryInfo`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询抽奖信息-v2.2.0</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«TurntableInfoDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||TurntableInfoDTO|TurntableInfoDTO|
|&emsp;&emsp;activityStatus|活动状态 1-开，2-关|integer(int32)||
|&emsp;&emsp;amount|金额|integer(int64)||
|&emsp;&emsp;availableDrawCount|可用抽奖次数|integer(int32)||
|&emsp;&emsp;currentTime|当前时间|integer(int64)||
|&emsp;&emsp;endTime|结束时间|integer(int64)||
|&emsp;&emsp;id|记录Id|integer(int64)||
|&emsp;&emsp;initialized|是否初始化 false-否，true-是|boolean||
|&emsp;&emsp;level|vip等级|integer(int32)||
|&emsp;&emsp;link|分享链接|string||
|&emsp;&emsp;nextStartTime|下期活动-开始时间|integer(int64)||
|&emsp;&emsp;progress|提现进度|integer(int64)||
|&emsp;&emsp;rate|提现进度百分比|number||
|&emsp;&emsp;startTime|开始时间|integer(int64)||
|&emsp;&emsp;turntableType|转盘类型|integer(int32)||
|&emsp;&emsp;useAppStatus|app使用 1需要app使用 2不需要|integer(int32)||
|&emsp;&emsp;withdrawalStatus|提现状态,1-待提现,2-已提现|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"activityStatus": 0,
		"amount": 0,
		"availableDrawCount": 0,
		"currentTime": 0,
		"endTime": 0,
		"id": 0,
		"initialized": true,
		"level": 0,
		"link": "",
		"nextStartTime": 0,
		"progress": 0,
		"rate": 0,
		"startTime": 0,
		"turntableType": 0,
		"useAppStatus": 0,
		"withdrawalStatus": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 获取手机号码


**接口地址**:`/activity,/activity/activity/wap/turntable/queryPhoneNumbers`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«PhoneNumberWapDTO»»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|PhoneNumberWapDTO|
|&emsp;&emsp;phoneNumber|手机号码|string||
|&emsp;&emsp;used|0-未使用，1-已使用|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"phoneNumber": "",
			"used": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 获取奖励配置


**接口地址**:`/activity,/activity/activity/wap/turntable/queryRewardConfig`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«RewardConfigWapDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|RewardConfigWapDTO|
|&emsp;&emsp;id|ID|integer(int64)||
|&emsp;&emsp;pic|图片地址|string||
|&emsp;&emsp;rewardTypeCode|奖励类型ID|integer(int32)||
|&emsp;&emsp;rewardValue|奖励值|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"id": 0,
			"pic": "",
			"rewardTypeCode": 0,
			"rewardValue": ""
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 获取奖励配置


**接口地址**:`/activity,/activity/activity/wap/turntable/queryRewardConfig`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«RewardConfigWapDTO»»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|RewardConfigWapDTO|
|&emsp;&emsp;id|ID|integer(int64)||
|&emsp;&emsp;pic|图片地址|string||
|&emsp;&emsp;rewardTypeCode|奖励类型ID|integer(int32)||
|&emsp;&emsp;rewardValue|奖励值|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"id": 0,
			"pic": "",
			"rewardTypeCode": 0,
			"rewardValue": ""
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 统计数据-v2.2.0


**接口地址**:`/activity,/activity/activity/wap/turntable/statInfo`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>统计数据-v2.2.0</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«TurntableWapStatInfoDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||TurntableWapStatInfoDTO|TurntableWapStatInfoDTO|
|&emsp;&emsp;lastHelpInfo|最近助力信息|LatestHelpInfoDTO|LatestHelpInfoDTO|
|&emsp;&emsp;&emsp;&emsp;account|账号|string||
|&emsp;&emsp;&emsp;&emsp;avatar|头像地址|string||
|&emsp;&emsp;&emsp;&emsp;firstRechargeAmount|首充金额|integer||
|&emsp;&emsp;&emsp;&emsp;sendTurntableCount|是否赠送一次转盘机会 1-是 2-否|integer||
|&emsp;&emsp;totalReward|游戏总奖金|integer(int64)||
|&emsp;&emsp;unReadWithdrawalNum|未读提现审核后的数量|integer(int32)||
|&emsp;&emsp;withdrawalRecords|提现记录|array|GameWithdrawalRecordDTO|
|&emsp;&emsp;&emsp;&emsp;account|账号|string||
|&emsp;&emsp;&emsp;&emsp;rewardDesc|提现描述|string||
|&emsp;&emsp;&emsp;&emsp;rewardValue|奖励值|integer||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"lastHelpInfo": {
			"account": "",
			"avatar": "",
			"firstRechargeAmount": 0,
			"sendTurntableCount": 0
		},
		"totalReward": 0,
		"unReadWithdrawalNum": 0,
		"withdrawalRecords": [
			{
				"account": "",
				"rewardDesc": "",
				"rewardValue": 0
			}
		]
	},
	"isSuccess": true,
	"message": ""
}
```


## 标记手机号已发送短信


**接口地址**:`/activity,/activity/activity/wap/turntable/updatePhoneNumbersSendSms`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "phoneNumbers": []
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|UpdatePhoneNumbersSendSmsCmd|UpdatePhoneNumbersSendSmsCmd|
|&emsp;&emsp;phoneNumbers|手机号码||false|array|string|


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


## 标记手机号已使用


**接口地址**:`/activity,/activity/activity/wap/turntable/updatePhoneNumbersUsed`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "phoneNumbers": []
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|UpdatePhoneNumbersUsedCmd|UpdatePhoneNumbersUsedCmd|
|&emsp;&emsp;phoneNumbers|手机号码||false|array|string|


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«Void»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"isSuccess": true,
	"message": ""
}
```


# 转盘活动配置


## 审核查询-v2.2.0


**接口地址**:`/activity,/activity/activity/turntable/audit`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>审核查询-v2.2.0</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|recordId|recordId|query|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«AuditDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||AuditDTO|AuditDTO|
|&emsp;&emsp;auditAmount|提现中金额|integer(int64)||
|&emsp;&emsp;failAmount|提现失败金额|integer(int64)||
|&emsp;&emsp;failCount|失败次数|integer(int32)||
|&emsp;&emsp;ipUserCount|同ip用户数量|integer(int32)||
|&emsp;&emsp;successfulAmount|成功提现金额|integer(int64)||
|&emsp;&emsp;validPhoneNum|总有效邀请合格手机号|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"auditAmount": 0,
		"failAmount": 0,
		"failCount": 0,
		"ipUserCount": 0,
		"successfulAmount": 0,
		"validPhoneNum": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 审核明细（分页）-v2.2.0


**接口地址**:`/activity,/activity/activity/turntable/audit/detail`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>审核明细（分页）-v2.2.0</p>



**请求示例**:


```javascript
{
  "current": 0,
  "customerId": 0,
  "recordId": 0,
  "size": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|AuditDetailQuery|AuditDetailQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;customerId|会员ID||false|integer(int64)||
|&emsp;&emsp;recordId|转盘轮次Id||false|integer(int64)||
|&emsp;&emsp;size|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«TurntableRecordCountDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|TurntableRecordCountDTO|
|&emsp;&emsp;customerAccount|被邀请人会员名称|string||
|&emsp;&emsp;registerTime|被邀请人注册时间|integer(int64)||
|&emsp;&emsp;resourceType|来源类型  0.初始金 1. 每日免费 2.获得的抽奖次数 3. 被邀请人|integer(int32)||
|&emsp;&emsp;rewardTime|奖励时间|integer(int64)||
|&emsp;&emsp;rewardTypeCode|奖励类型|integer(int32)||
|&emsp;&emsp;rewardValue|数额|string||
|&emsp;&emsp;totalRechargeAmount|被邀请人充值金额|integer(int64)||
|&emsp;&emsp;validBetAmount|被邀请人打码金额|integer(int64)||
|&emsp;&emsp;validPhone|验证手机号状态 1已验证 |integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"customerAccount": "",
			"registerTime": 0,
			"resourceType": 0,
			"rewardTime": 0,
			"rewardTypeCode": 0,
			"rewardValue": "",
			"totalRechargeAmount": 0,
			"validBetAmount": 0,
			"validPhone": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 审核明细汇总-v2.2.0


**接口地址**:`/activity,/activity/activity/turntable/audit/detail/sum`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>审核明细汇总）-v2.2.0</p>



**请求示例**:


```javascript
{
  "current": 0,
  "customerId": 0,
  "recordId": 0,
  "size": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|AuditDetailQuery|AuditDetailQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;customerId|会员ID||false|integer(int64)||
|&emsp;&emsp;recordId|转盘轮次Id||false|integer(int64)||
|&emsp;&emsp;size|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«AuditDetailDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||AuditDetailDTO|AuditDetailDTO|
|&emsp;&emsp;inviteNumTotal|转盘总邀请人数|integer(int64)||
|&emsp;&emsp;roundNumTotal|总邀请轮数|integer(int32)||
|&emsp;&emsp;successfulRoundNum|已成功邀请轮数|integer(int32)||
|&emsp;&emsp;validPhoneNum|总有效邀请合格手机号|integer(int32)||
|&emsp;&emsp;withdrawAmountTotal|总转盘提现成功金额|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"inviteNumTotal": 0,
		"roundNumTotal": 0,
		"successfulRoundNum": 0,
		"validPhoneNum": 0,
		"withdrawAmountTotal": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 查询审核记录（分页）-v2.2.0


**接口地址**:`/activity,/activity/activity/turntable/audit/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询审核记录（分页）-v2.2.0</p>



**请求示例**:


```javascript
{
  "auditStatus": 0,
  "current": 0,
  "customerAccount": "",
  "endTime": "",
  "size": 0,
  "sortList": [
    {
      "direction": 0,
      "field": ""
    }
  ],
  "startTime": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|AuditPageQuery|AuditPageQuery|
|&emsp;&emsp;auditStatus|审核状态 0 待审核 1 审核拒绝，2 审核通过||false|integer(int32)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;customerAccount|会员账号||false|string||
|&emsp;&emsp;endTime|提款结束时间||false|string(date-time)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;sortList|page排序参数||false|array|SortParam|
|&emsp;&emsp;&emsp;&emsp;direction|排序方式 0-升序 1-降序；默认=1||false|integer||
|&emsp;&emsp;&emsp;&emsp;field|排序字段||false|string||
|&emsp;&emsp;startTime|提款开始时间||false|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«AuditPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|AuditPageDTO|
|&emsp;&emsp;amount|提款金额|integer(int64)||
|&emsp;&emsp;applyTime|转盘提款时间|integer(int64)||
|&emsp;&emsp;auditInfo|拒绝原因|string||
|&emsp;&emsp;auditStatus|审核状态 0 待审核 1 审核拒绝，2 审核通过|integer(int32)||
|&emsp;&emsp;auditor|审核员|string||
|&emsp;&emsp;customerAccount|会员账号|string||
|&emsp;&emsp;customerId|会员ID|integer(int64)||
|&emsp;&emsp;id|提现主键id|integer(int64)||
|&emsp;&emsp;inviteNum|当前轮数邀请人数|integer(int32)||
|&emsp;&emsp;recordId|转盘轮次Id|integer(int64)||
|&emsp;&emsp;registerTime|用户注册时间|integer(int64)||
|&emsp;&emsp;withdrawOrder|第几次提款|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"amount": 0,
			"applyTime": 0,
			"auditInfo": "",
			"auditStatus": 0,
			"auditor": "",
			"customerAccount": "",
			"customerId": 0,
			"id": 0,
			"inviteNum": 0,
			"recordId": 0,
			"registerTime": 0,
			"withdrawOrder": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 提现审核-v2.2.0


**接口地址**:`/activity,/activity/activity/turntable/audit/withdraw`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>提现审核-v2.2.0</p>



**请求示例**:


```javascript
{
  "auditInfo": "",
  "auditStatus": 0,
  "id": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|AuditWithdrawCmd|AuditWithdrawCmd|
|&emsp;&emsp;auditInfo|拒绝原因||false|string||
|&emsp;&emsp;auditStatus|审核状态 0 待审核 1 审核拒绝，2 审核通过||false|integer(int32)||
|&emsp;&emsp;id|提现记录ID||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 编辑转盘活动配置


**接口地址**:`/activity,/activity/activity/turntable/config/edit`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>编辑转盘活动配置</p>



**请求示例**:


```javascript
{
  "activityDesc": "",
  "appDownload": 0,
  "drawValidPhone": 0,
  "initialProgressMax": 0,
  "initialProgressMin": 0,
  "multiple": 0,
  "posterConfig": "",
  "progressConfigList": [
    {
      "completeEnd": 0,
      "completeStart": 0,
      "type": 0,
      "typeSwitch": 0
    }
  ],
  "rewardConfigList": [
    {
      "auditValue": 0,
      "pic": "",
      "pr": 0,
      "quantityMaxLimit": 0,
      "rewardTypeCode": 0,
      "rewardTypeName": "",
      "rewardValue": "",
      "turntableType": 0
    }
  ],
  "rewardNums": 0,
  "shareContent": "",
  "status": 0,
  "withdrawAmt": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|TurntableConfigEditCmd|TurntableConfigEditCmd|
|&emsp;&emsp;activityDesc|活动说明||false|string||
|&emsp;&emsp;appDownload|参与活动是否需要下载app（1：是，2：否）||false|integer(int32)||
|&emsp;&emsp;drawValidPhone|转盘校验手机号 1校验 2不校验||false|integer(int32)||
|&emsp;&emsp;initialProgressMax|初始金最大值||false|number||
|&emsp;&emsp;initialProgressMin|初始金最小值||false|number||
|&emsp;&emsp;multiple|稽核倍数||false|integer(int32)||
|&emsp;&emsp;posterConfig|海报配置||false|string||
|&emsp;&emsp;progressConfigList|转盘进度配置||false|array|TurntableProgressConfigEditCmd|
|&emsp;&emsp;&emsp;&emsp;completeEnd|区间数2||false|integer||
|&emsp;&emsp;&emsp;&emsp;completeStart|区间数1||false|integer||
|&emsp;&emsp;&emsp;&emsp;type|条件类型： 1完成注册, 2 完成注册并充值||false|integer||
|&emsp;&emsp;&emsp;&emsp;typeSwitch|条件类型开关（1：开启，2：关闭）||false|integer||
|&emsp;&emsp;rewardConfigList|抽奖配置列表||false|array|TurntableRewardConfigEditCmd|
|&emsp;&emsp;&emsp;&emsp;auditValue|稽核倍数||false|number||
|&emsp;&emsp;&emsp;&emsp;pic|图标地址||false|string||
|&emsp;&emsp;&emsp;&emsp;pr|获奖概率||false|number||
|&emsp;&emsp;&emsp;&emsp;quantityMaxLimit|数量上限||false|integer||
|&emsp;&emsp;&emsp;&emsp;rewardTypeCode|奖励类型编码||false|integer||
|&emsp;&emsp;&emsp;&emsp;rewardTypeName|奖励类型名称||false|string||
|&emsp;&emsp;&emsp;&emsp;rewardValue|数额||false|string||
|&emsp;&emsp;&emsp;&emsp;turntableType|转盘类型||false|integer||
|&emsp;&emsp;rewardNums|转盘数量||false|integer(int32)||
|&emsp;&emsp;shareContent|分享内容||false|string||
|&emsp;&emsp;status|活动状态（1：开启，2：关闭）||false|integer(int32)||
|&emsp;&emsp;withdrawAmt|提现金额||false|number||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 查询转盘活动配置


**接口地址**:`/activity,/activity/activity/turntable/config/info`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询转盘活动配置-v2.2.0</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«TurntableConfigDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||TurntableConfigDTO|TurntableConfigDTO|
|&emsp;&emsp;activityDesc|活动说明|string||
|&emsp;&emsp;appDownload|参与活动是否需要下载app（1：是，2：否）|integer(int32)||
|&emsp;&emsp;drawValidPhone|转盘校验手机号 1校验 2不校验|integer(int32)||
|&emsp;&emsp;initialProgressMax|初始金最大值|integer(int64)||
|&emsp;&emsp;initialProgressMin|初始金最小值|integer(int64)||
|&emsp;&emsp;lastUpdateBy|最后更新操作人|string||
|&emsp;&emsp;lastUpdateTime|最后更新时间|integer(int64)||
|&emsp;&emsp;multiple|稽核倍数|integer(int32)||
|&emsp;&emsp;posterConfig|海报配置|string||
|&emsp;&emsp;progressConfigList|转盘进度配置|array|TurntableProgressConfigDTO|
|&emsp;&emsp;&emsp;&emsp;completeEnd|区间数2|integer||
|&emsp;&emsp;&emsp;&emsp;completeStart|区间数1|integer||
|&emsp;&emsp;&emsp;&emsp;type| 条件类型： 1完成注册, 2 完成注册并充值 |integer||
|&emsp;&emsp;&emsp;&emsp;typeSwitch|条件类型开关（1：开启，2：关闭）|integer||
|&emsp;&emsp;rewardConfigList|抽奖配置列表|array|TurntableRewardConfigDTO|
|&emsp;&emsp;&emsp;&emsp;maxLevel|vip最大等级|integer||
|&emsp;&emsp;&emsp;&emsp;minLevel|vip最小等级|integer||
|&emsp;&emsp;&emsp;&emsp;rewards|转盘奖励|array|RewardConfigDTO|
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;auditValue|稽核倍数|number||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;id||integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;pic|图标地址|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;pr|获奖概率|number||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;quantityMaxLimit|数量上限|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardTypeCode|奖励类型编码|integer||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardTypeName|奖励类型名称|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;rewardValue|数额|string||
|&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;turntableType|转盘类型|integer||
|&emsp;&emsp;&emsp;&emsp;turntableType|转盘类型|integer||
|&emsp;&emsp;rewardNums|抽奖份额配置|integer(int32)||
|&emsp;&emsp;shareContent|分享内容|string||
|&emsp;&emsp;status|活动状态（1：开启，2：关闭）|integer(int32)||
|&emsp;&emsp;withdrawAmt|提现金额|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"activityDesc": "",
		"appDownload": 0,
		"drawValidPhone": 0,
		"initialProgressMax": 0,
		"initialProgressMin": 0,
		"lastUpdateBy": "",
		"lastUpdateTime": 0,
		"multiple": 0,
		"posterConfig": "",
		"progressConfigList": [
			{
				"completeEnd": 0,
				"completeStart": 0,
				"type": 0,
				"typeSwitch": 0
			}
		],
		"rewardConfigList": [
			{
				"maxLevel": 0,
				"minLevel": 0,
				"rewards": [
					{
						"auditValue": 0,
						"id": 0,
						"pic": "",
						"pr": 0,
						"quantityMaxLimit": 0,
						"rewardTypeCode": 0,
						"rewardTypeName": "",
						"rewardValue": "",
						"turntableType": 0
					}
				],
				"turntableType": 0
			}
		],
		"rewardNums": 0,
		"shareContent": "",
		"status": 0,
		"withdrawAmt": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 查询抽奖记录（分页）


**接口地址**:`/activity,/activity/activity/turntable/reward/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询抽奖记录（分页）</p>



**请求示例**:


```javascript
{
  "account": "",
  "agentName": "",
  "current": 0,
  "customerLevel": 0,
  "endTime": "",
  "rewardTypeCode": 0,
  "rewardValue": 0,
  "size": 0,
  "startTime": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RewardPageQuery|RewardPageQuery|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;agentName|代理商名称||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;customerLevel|VIP等级||false|integer(int32)||
|&emsp;&emsp;endTime|结束时间||false|string(date-time)||
|&emsp;&emsp;rewardTypeCode|奖励类型编码||false|integer(int32)||
|&emsp;&emsp;rewardValue|奖励值||false|number||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||false|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«RewardPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|RewardPageDTO|
|&emsp;&emsp;account|会员账号|string||
|&emsp;&emsp;agentName|代理商名称|string||
|&emsp;&emsp;createTime|中奖时间|integer(int64)||
|&emsp;&emsp;customerId|会员ID|integer(int64)||
|&emsp;&emsp;customerLevel|VIP等级|integer(int32)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;rewardTypeName|奖品名称|string||
|&emsp;&emsp;rewardValue|奖励值|string||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"account": "",
			"agentName": "",
			"createTime": 0,
			"customerId": 0,
			"customerLevel": 0,
			"id": 0,
			"rewardTypeName": "",
			"rewardValue": ""
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 现金奖总额


**接口地址**:`/activity,/activity/activity/turntable/reward/sum`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>现金奖总额</p>



**请求示例**:


```javascript
{
  "account": "",
  "agentName": "",
  "current": 0,
  "customerLevel": 0,
  "endTime": "",
  "rewardTypeCode": 0,
  "rewardValue": 0,
  "size": 0,
  "startTime": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RewardPageQuery|RewardPageQuery|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;agentName|代理商名称||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;customerLevel|VIP等级||false|integer(int32)||
|&emsp;&emsp;endTime|结束时间||false|string(date-time)||
|&emsp;&emsp;rewardTypeCode|奖励类型编码||false|integer(int32)||
|&emsp;&emsp;rewardValue|奖励值||false|number||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||false|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«RewardSumDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||RewardSumDTO|RewardSumDTO|
|&emsp;&emsp;drawCountSum|转盘次数|integer(int32)||
|&emsp;&emsp;helpAmtSum|帮助金总额|integer(int64)||
|&emsp;&emsp;jackpotSum|Jackpot|integer(int64)||
|&emsp;&emsp;peopleSum|中奖人数|integer(int32)||
|&emsp;&emsp;rewardSum|现金奖总额|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"drawCountSum": 0,
		"helpAmtSum": 0,
		"jackpotSum": 0,
		"peopleSum": 0,
		"rewardSum": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 查询转盘活动奖品类型列表


**接口地址**:`/activity,/activity/activity/turntable/reward/type/list`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询转盘活动奖品类型列表</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«RewardTypeDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|RewardTypeDTO|
|&emsp;&emsp;rewardTypeCode|奖品类型编码|integer(int32)||
|&emsp;&emsp;rewardTypeName|奖品类型名称|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"rewardTypeCode": 0,
			"rewardTypeName": ""
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 导入手机号码


**接口地址**:`/activity,/activity/activity/turntable/telephone/import`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>导入手机号码</p>



**请求示例**:


```javascript
{
  "remark": "",
  "telephoneList": []
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|ImportTelephoneCmd|ImportTelephoneCmd|
|&emsp;&emsp;remark|备注||false|string||
|&emsp;&emsp;telephoneList|手机号码集合||false|array|string|


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ImportTelephoneDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ImportTelephoneDTO|ImportTelephoneDTO|
|&emsp;&emsp;failedTotal|失败条数|integer(int32)||
|&emsp;&emsp;repeatableTotal|重复条数|integer(int32)||
|&emsp;&emsp;successTotal|成功条数|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"failedTotal": 0,
		"repeatableTotal": 0,
		"successTotal": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 启用号码配置


**接口地址**:`/activity,/activity/activity/turntable/telephone/open/{configId}`


**请求方式**:`PUT`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>启用号码配置</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|configId|configId|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 查询手机号码配置（分页）


**接口地址**:`/activity,/activity/activity/turntable/telephone/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询手机号码配置（分页）</p>



**请求示例**:


```javascript
{
  "current": 0,
  "size": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|TelephonePageQuery|TelephonePageQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;size|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«TelephonePageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|TelephonePageDTO|
|&emsp;&emsp;createByStr|操作人|string||
|&emsp;&emsp;createTime|导入时间|integer(int64)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;nums|数量|integer(int32)||
|&emsp;&emsp;operatorAccount|使用数量|string||
|&emsp;&emsp;remark|备注|string||
|&emsp;&emsp;status|状态（1：启用，2：未启用）|integer(int32)||
|&emsp;&emsp;unUsedNums|可用数量|integer(int32)||
|&emsp;&emsp;usedCount|使用数量|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"createByStr": "",
			"createTime": 0,
			"id": 0,
			"nums": 0,
			"operatorAccount": "",
			"remark": "",
			"status": 0,
			"unUsedNums": 0,
			"usedCount": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 提现统计合计


**接口地址**:`/activity,/activity/activity/turntable/withdraw/sum`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>提现统计合计</p>



**请求示例**:


```javascript
{
  "account": "",
  "agentName": "",
  "current": 0,
  "customerLevel": 0,
  "endTime": "",
  "rewardTypeCode": 0,
  "rewardValue": 0,
  "size": 0,
  "startTime": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RewardPageQuery|RewardPageQuery|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;agentName|代理商名称||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;customerLevel|VIP等级||false|integer(int32)||
|&emsp;&emsp;endTime|结束时间||false|string(date-time)||
|&emsp;&emsp;rewardTypeCode|奖励类型编码||false|integer(int32)||
|&emsp;&emsp;rewardValue|奖励值||false|number||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||false|string(date-time)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«WithdrawSumDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||WithdrawSumDTO|WithdrawSumDTO|
|&emsp;&emsp;withdrawNums|提现人数总和|integer(int32)||
|&emsp;&emsp;withdrawSum|提现金额总和|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"withdrawNums": 0,
		"withdrawSum": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# 运营-体验金


## 获取配置信息


**接口地址**:`/activity,/activity/activity/experienceBonus/getConfig`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>获取配置信息-v3.8.5</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ExperienceBonusConfigDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ExperienceBonusConfigDTO|ExperienceBonusConfigDTO|
|&emsp;&emsp;auditValue|稽核倍数|number||
|&emsp;&emsp;experienceBonusConfigs|体验金配置列表|array|ExperienceBonusConfig|
|&emsp;&emsp;&emsp;&emsp;bonus|奖金金额|integer||
|&emsp;&emsp;&emsp;&emsp;bonusCode|奖金编码|integer||
|&emsp;&emsp;memberType|会员类型 0 全体新注册用户 1 老带新和转盘注册用户|integer(int32)||
|&emsp;&emsp;operator|操作人|string||
|&emsp;&emsp;rule|活动规则|string||
|&emsp;&emsp;startTime|活动开始时间|integer(int64)||
|&emsp;&emsp;status|活动状态 1开启 2关闭|integer(int32)||
|&emsp;&emsp;updateTime|'更新时间'|integer(int64)||
|&emsp;&emsp;verifyPhoneStatus|校验手机号配置 1开启 2关闭|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"auditValue": 0,
		"experienceBonusConfigs": [
			{
				"bonus": 0,
				"bonusCode": 0
			}
		],
		"memberType": 0,
		"operator": "",
		"rule": "",
		"startTime": 0,
		"status": 0,
		"updateTime": 0,
		"verifyPhoneStatus": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 分页查询


**接口地址**:`/activity,/activity/activity/experienceBonus/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "account": "",
  "activate": 0,
  "claimEndTime": "",
  "claimsStartTime": "",
  "current": 0,
  "memberType": 0,
  "size": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|ExperiencebonusPageQuery|ExperiencebonusPageQuery|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;activate|是否激活，0 未激活，1 已激活||false|integer(int32)||
|&emsp;&emsp;claimEndTime|用户领取时间||false|string(date-time)||
|&emsp;&emsp;claimsStartTime|用户领取时间||false|string(date-time)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;memberType|会员类型，0 全部用户 1 老带新用户||false|integer(int32)||
|&emsp;&emsp;size|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«ActivityExperienceBonusRecordPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|ActivityExperienceBonusRecordPageDTO|
|&emsp;&emsp;account|会员账号|string||
|&emsp;&emsp;activate|是否激活，0 未激活，1 已激活|integer(int32)||
|&emsp;&emsp;bonus|用户领取奖金|integer(int64)||
|&emsp;&emsp;claimTime|领取时间|integer(int64)||
|&emsp;&emsp;memberType|会员类型，0 全部用户 1 老带新用户|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"account": "",
			"activate": 0,
			"bonus": 0,
			"claimTime": 0,
			"memberType": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 统计查询


**接口地址**:`/activity,/activity/activity/experienceBonus/sum`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:


**请求示例**:


```javascript
{
  "account": "",
  "activate": 0,
  "claimEndTime": "",
  "claimsStartTime": "",
  "current": 0,
  "memberType": 0,
  "size": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|ExperiencebonusPageQuery|ExperiencebonusPageQuery|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;activate|是否激活，0 未激活，1 已激活||false|integer(int32)||
|&emsp;&emsp;claimEndTime|用户领取时间||false|string(date-time)||
|&emsp;&emsp;claimsStartTime|用户领取时间||false|string(date-time)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;memberType|会员类型，0 全部用户 1 老带新用户||false|integer(int32)||
|&emsp;&emsp;size|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ActivityExperienceBonusRecordSumDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ActivityExperienceBonusRecordSumDTO|ActivityExperienceBonusRecordSumDTO|
|&emsp;&emsp;activateAmount1|已激活总额|integer(int64)||
|&emsp;&emsp;activateCustomer1|已激活人数|integer(int32)||
|&emsp;&emsp;totalAmount|已领取总额|integer(int64)||
|&emsp;&emsp;totalCustomer|已领取人数|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"activateAmount1": 0,
		"activateCustomer1": 0,
		"totalAmount": 0,
		"totalCustomer": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 更新配置


**接口地址**:`/activity,/activity/activity/experienceBonus/updateConfig`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>更新配置-3.8.5</p>



**请求示例**:


```javascript
{
  "auditValue": 0,
  "experienceBonusConfigs": [
    {
      "bonus": 0,
      "bonusCode": 0,
      "bonusProbability": 0
    }
  ],
  "memberType": 0,
  "rule": "",
  "status": 0,
  "verifyPhoneStatus": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|ExperienceBonusConfigUpdateCmd|ExperienceBonusConfigUpdateCmd|
|&emsp;&emsp;auditValue|稽核倍数||false|number||
|&emsp;&emsp;experienceBonusConfigs|体验金配置列表||false|array|ExperienceBonusConfig0|
|&emsp;&emsp;&emsp;&emsp;bonus|奖金金额||false|integer||
|&emsp;&emsp;&emsp;&emsp;bonusCode|奖金编码||false|integer||
|&emsp;&emsp;&emsp;&emsp;bonusProbability|奖金概率||false|number||
|&emsp;&emsp;memberType|会员类型 0 全体新注册用户 1 老带新和转盘注册用户||false|integer(int32)||
|&emsp;&emsp;rule|活动规则||false|string||
|&emsp;&emsp;status|活动状态 1开启 2关闭||false|integer(int32)||
|&emsp;&emsp;verifyPhoneStatus|校验手机号配置 1开启 2关闭||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


# 运营模块-Banner轮播图


## 添加Banner


**接口地址**:`/activity,/activity/activity/banner/add`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>添加Banner</p>



**请求示例**:


```javascript
{
  "bannerName": "",
  "clientType": 0,
  "linkAdr": "",
  "linkId": 0,
  "linkMethod": 0,
  "linkType": 0,
  "pic": "",
  "station": 0,
  "visible": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|BannerAddCmd|BannerAddCmd|
|&emsp;&emsp;bannerName|名称||false|string||
|&emsp;&emsp;clientType|客户端类型（1：PC，2：移动端）||false|integer(int32)||
|&emsp;&emsp;linkAdr|跳转链接方式为2时必填||false|string||
|&emsp;&emsp;linkId|跳转链接方式为1时必填||false|integer(int64)||
|&emsp;&emsp;linkMethod|跳转链接方式（0：无，1：内部链接），2：外部链接||false|integer(int32)||
|&emsp;&emsp;linkType|跳转链接类型（1：资讯，2：活动聚合，3：活动页面）||false|integer(int32)||
|&emsp;&emsp;pic|图片地址||false|string||
|&emsp;&emsp;station|位置（1：首页，2：活动页）||false|integer(int32)||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 删除Banner信息


**接口地址**:`/activity,/activity/activity/banner/delete/{id}`


**请求方式**:`DELETE`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>删除Banner信息</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id|id|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|204|No Content||
|401|Unauthorized||
|403|Forbidden||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 修改Banner


**接口地址**:`/activity,/activity/activity/banner/edit`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>修改Banner</p>



**请求示例**:


```javascript
{
  "bannerName": "",
  "clientType": 0,
  "id": 0,
  "linkAdr": "",
  "linkId": 0,
  "linkMethod": 0,
  "linkType": 0,
  "pic": "",
  "station": 0,
  "visible": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|BannerUpdateCmd|BannerUpdateCmd|
|&emsp;&emsp;bannerName|名称||false|string||
|&emsp;&emsp;clientType|客户端类型（1：PC，2：移动端）||false|integer(int32)||
|&emsp;&emsp;id|||false|integer(int64)||
|&emsp;&emsp;linkAdr|跳转链接方式为2时必填||false|string||
|&emsp;&emsp;linkId|跳转链接方式为1时必填||false|integer(int64)||
|&emsp;&emsp;linkMethod|跳转链接方式（0：无，1：内部链接），2：外部链接||false|integer(int32)||
|&emsp;&emsp;linkType|跳转链接类型（1：资讯，2：活动）||false|integer(int32)||
|&emsp;&emsp;pic|图片地址||false|string||
|&emsp;&emsp;station|位置（1：首页，2：活动聚合，3：活动页面）||false|integer(int32)||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 查询Banner列表(分页)


**接口地址**:`/activity,/activity/activity/banner/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询Banner列表(分页)</p>



**请求示例**:


```javascript
{
  "bannerName": "",
  "clientType": 0,
  "current": 0,
  "size": 0,
  "visible": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|BannerPageQuery|BannerPageQuery|
|&emsp;&emsp;bannerName|名称||false|string||
|&emsp;&emsp;clientType|客户端类型（1：PC，2：移动端）||false|integer(int32)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«BannerPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|BannerPageDTO|
|&emsp;&emsp;bannerName|名称|string||
|&emsp;&emsp;clientType|客户端类型（1：PC，2：移动端）|integer(int32)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;pic|图片地址|string||
|&emsp;&emsp;sort|排序|integer(int32)||
|&emsp;&emsp;station|位置（1：首页，2：活动页）|integer(int32)||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"bannerName": "",
			"clientType": 0,
			"id": 0,
			"pic": "",
			"sort": 0,
			"station": 0,
			"visible": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## Banner排序


**接口地址**:`/activity,/activity/activity/banner/sort`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>Banner排序</p>



**请求示例**:


```javascript
{
  "id": 0,
  "sortType": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|BannerSortCmd|BannerSortCmd|
|&emsp;&emsp;id|||false|integer(int64)||
|&emsp;&emsp;sortType|排序类型（1：上移，2：下移，3：置顶，4：置底）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 根据ID获取Banner信息


**接口地址**:`/activity,/activity/activity/banner/{id}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>根据ID获取Banner信息</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id|id|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«BannerDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||BannerDTO|BannerDTO|
|&emsp;&emsp;activityType|活动类型|integer(int32)||
|&emsp;&emsp;activityTypeName|活动类型名称|string||
|&emsp;&emsp;bannerName|名称|string||
|&emsp;&emsp;clientType|客户端类型（1：PC，2：移动端）|integer(int32)||
|&emsp;&emsp;createBy|创建人|string||
|&emsp;&emsp;createTime|创建时间|string(date-time)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;linkAdr|链接地址|string||
|&emsp;&emsp;linkId||integer(int64)||
|&emsp;&emsp;linkMethod|跳转链接方式（0：无，1：内部链接，2：外部链接）|integer(int32)||
|&emsp;&emsp;linkTitle|跳转链接标题|string||
|&emsp;&emsp;linkType|跳转链接类型（1：资讯，2：活动）|integer(int32)||
|&emsp;&emsp;pic|图片地址|string||
|&emsp;&emsp;sort|排序|integer(int32)||
|&emsp;&emsp;updateBy|更新操作人|string||
|&emsp;&emsp;updateTime|最新更新时间|string(date-time)||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"activityType": 0,
		"activityTypeName": "",
		"bannerName": "",
		"clientType": 0,
		"createBy": "",
		"createTime": "",
		"id": 0,
		"linkAdr": "",
		"linkId": 0,
		"linkMethod": 0,
		"linkTitle": "",
		"linkType": 0,
		"pic": "",
		"sort": 0,
		"updateBy": "",
		"updateTime": "",
		"visible": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# 运营模块-会员意见箱


## 关闭反馈


**接口地址**:`/activity,/activity/activity/feedback/close/{id}`


**请求方式**:`PUT`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>关闭反馈</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id|id|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 反馈信息详情


**接口地址**:`/activity,/activity/activity/feedback/info/{id}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>反馈信息详情</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id|id|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«FeedbackDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||FeedbackDTO|FeedbackDTO|
|&emsp;&emsp;account|会员账号|string||
|&emsp;&emsp;createTime|创建时间|integer(int64)||
|&emsp;&emsp;customerId|会员编码|integer(int64)||
|&emsp;&emsp;feedbackContent|反馈内容|string||
|&emsp;&emsp;feedbackStatus|状态（1：未回复、2：已关闭、3：已回复）|integer(int32)||
|&emsp;&emsp;feedbackType|类型（1：存款问题，2：提款问题、3游戏问题、4：客服问、5：申请代理、6：其他问题）|integer(int32)||
|&emsp;&emsp;historyNums|历史提交次数|integer(int32)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;level|VIP等级|integer(int32)||
|&emsp;&emsp;replyContent|回复内容|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"account": "",
		"createTime": 0,
		"customerId": 0,
		"feedbackContent": "",
		"feedbackStatus": 0,
		"feedbackType": 0,
		"historyNums": 0,
		"id": 0,
		"level": 0,
		"replyContent": ""
	},
	"isSuccess": true,
	"message": ""
}
```


## 回复反馈


**接口地址**:`/activity,/activity/activity/feedback/replay`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>回复反馈</p>



**请求示例**:


```javascript
{
  "feedbackContent": "",
  "id": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|FeedbackReplayCmd|FeedbackReplayCmd|
|&emsp;&emsp;feedbackContent|反馈内容||false|string||
|&emsp;&emsp;id|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 反馈信息列表（分页）


**接口地址**:`/activity,/activity/activity/feedback/send/list`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>反馈信息列表（分页）</p>



**请求示例**:


```javascript
{
  "account": "",
  "current": 0,
  "endTime": "",
  "feedbackType": 0,
  "size": 0,
  "startTime": "",
  "tabType": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|FeedbackPageQuery|FeedbackPageQuery|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||false|string(date-time)||
|&emsp;&emsp;feedbackType|类型（1：存款问题，2：提款问题、3游戏问题、4：客服问、5：申请代理、6：其他问题）||false|integer(int32)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||false|string(date-time)||
|&emsp;&emsp;tabType|状态（1：未处理, 2：已处理）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«FeedbackPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|FeedbackPageDTO|
|&emsp;&emsp;account|会员账号|string||
|&emsp;&emsp;createTime|时间|integer(int64)||
|&emsp;&emsp;customerId|会员编码|integer(int64)||
|&emsp;&emsp;feedbackContent|反馈内容|string||
|&emsp;&emsp;feedbackStatus|状态（1：未回复、2：已关闭、3：已回复）|integer(int32)||
|&emsp;&emsp;feedbackType|类型（1：存款问题，2：提款问题、3游戏问题、4：客服问、5：申请代理、6：其他问题）|integer(int32)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;operator|操作人|string||
|&emsp;&emsp;replyTime|回复时间|integer(int64)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"account": "",
			"createTime": 0,
			"customerId": 0,
			"feedbackContent": "",
			"feedbackStatus": 0,
			"feedbackType": 0,
			"id": 0,
			"operator": "",
			"replyTime": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


# 运营模块-公告


## 添加公告


**接口地址**:`/activity,/activity/activity/bulletin/add`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>添加公告</p>



**请求示例**:


```javascript
{
  "bulletinLinkColor": "",
  "bulletinLinkText": "",
  "bulletinLinkUrl": "",
  "bulletinType": 0,
  "content": "",
  "endTime": "",
  "linkAdr": "",
  "linkId": 0,
  "linkMethod": 0,
  "linkType": 0,
  "startTime": "",
  "visible": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|BulletinAddCmd|BulletinAddCmd|
|&emsp;&emsp;bulletinLinkColor|链接文本颜色||false|string||
|&emsp;&emsp;bulletinLinkText|链接文本||false|string||
|&emsp;&emsp;bulletinLinkUrl|公告内容链接地址，与linkAdr区别是内容中带的跳转地址||false|string||
|&emsp;&emsp;bulletinType|公告类型 1：普通文本，2：变色文本||false|integer(int32)||
|&emsp;&emsp;content|内容||false|string||
|&emsp;&emsp;endTime|有效期-结束时间||false|string(date-time)||
|&emsp;&emsp;linkAdr|跳转链接方式为2时必填||false|string||
|&emsp;&emsp;linkId|跳转链接方式为1时必填||false|integer(int64)||
|&emsp;&emsp;linkMethod|跳转链接方式（0：无，1：内部链接），2：外部链接||false|integer(int32)||
|&emsp;&emsp;linkType|跳转链接类型（1：资讯，2：活动聚合，3：活动页面）||false|integer(int32)||
|&emsp;&emsp;startTime|有效期-开始时间||false|string(date-time)||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 修改公告


**接口地址**:`/activity,/activity/activity/bulletin/edit`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>修改公告</p>



**请求示例**:


```javascript
{
  "bulletinLinkColor": "",
  "bulletinLinkText": "",
  "bulletinLinkUrl": "",
  "bulletinType": 0,
  "content": "",
  "endTime": "",
  "id": 0,
  "linkAdr": "",
  "linkId": 0,
  "linkMethod": 0,
  "linkType": 0,
  "startTime": "",
  "visible": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|BulletinUpdateCmd|BulletinUpdateCmd|
|&emsp;&emsp;bulletinLinkColor|链接文本颜色||false|string||
|&emsp;&emsp;bulletinLinkText|链接文本||false|string||
|&emsp;&emsp;bulletinLinkUrl|公告内容链接地址，与linkAdr区别是内容中带的跳转地址||false|string||
|&emsp;&emsp;bulletinType|公告类型 1：普通文本，2：变色文本||false|integer(int32)||
|&emsp;&emsp;content|内容||false|string||
|&emsp;&emsp;endTime|有效期-结束时间||false|string(date-time)||
|&emsp;&emsp;id|||false|integer(int64)||
|&emsp;&emsp;linkAdr|跳转链接方式为2时必填||false|string||
|&emsp;&emsp;linkId|跳转链接方式为1时必填||false|integer(int64)||
|&emsp;&emsp;linkMethod|跳转链接方式（0：无，1：内部链接），2：外部链接||false|integer(int32)||
|&emsp;&emsp;linkType|跳转链接类型（1：资讯，2：活动聚合，3：活动页面）||false|integer(int32)||
|&emsp;&emsp;startTime|有效期-开始时间||false|string(date-time)||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 查询公告列表(分页)


**接口地址**:`/activity,/activity/activity/bulletin/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询公告列表(分页)</p>



**请求示例**:


```javascript
{
  "content": "",
  "current": 0,
  "endTime": "",
  "size": 0,
  "startTime": "",
  "status": 0,
  "visible": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|BulletinPageQuery|BulletinPageQuery|
|&emsp;&emsp;content|内容||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||false|string||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||false|string||
|&emsp;&emsp;status|状态（1：待生效，2：生效中，3：已过期）||false|integer(int32)||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«BulletinPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|BulletinPageDTO|
|&emsp;&emsp;bulletinLinkColor|链接文本颜色|string||
|&emsp;&emsp;bulletinLinkText|链接文本|string||
|&emsp;&emsp;bulletinLinkUrl|公告内容链接地址，与linkAdr区别是内容中带的跳转地址|string||
|&emsp;&emsp;bulletinType|公告类型 1：普通文本，2：变色文本|integer(int32)||
|&emsp;&emsp;content|内容|string||
|&emsp;&emsp;endTime|有效期-结束时间|integer(int64)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;startTime|有效期-开始时间|integer(int64)||
|&emsp;&emsp;status|状态（1：待生效，2：生效中，3：已过期）|integer(int32)||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"bulletinLinkColor": "",
			"bulletinLinkText": "",
			"bulletinLinkUrl": "",
			"bulletinType": 0,
			"content": "",
			"endTime": 0,
			"id": 0,
			"startTime": 0,
			"status": 0,
			"visible": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 公告排序


**接口地址**:`/activity,/activity/activity/bulletin/sort`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>公告排序</p>



**请求示例**:


```javascript
{
  "id": 0,
  "sortType": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|BulletinSortCmd|BulletinSortCmd|
|&emsp;&emsp;id|||false|integer(int64)||
|&emsp;&emsp;sortType|排序类型（1：上移，2：下移，3：置顶，4：置底）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 根据ID获取公告信息


**接口地址**:`/activity,/activity/activity/bulletin/{id}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>根据ID获取公告信息</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id|id|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«BulletinDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||BulletinDTO|BulletinDTO|
|&emsp;&emsp;activityType|活动类型|integer(int32)||
|&emsp;&emsp;activityTypeName|活动类型名称|string||
|&emsp;&emsp;bulletinLinkColor|链接文本颜色|string||
|&emsp;&emsp;bulletinLinkText|链接文本|string||
|&emsp;&emsp;bulletinLinkUrl|公告内容链接地址，与linkAdr区别是内容中带的跳转地址|string||
|&emsp;&emsp;bulletinType|公告类型 1：普通文本，2：变色文本|integer(int32)||
|&emsp;&emsp;content|内容|string||
|&emsp;&emsp;createBy|创建人|string||
|&emsp;&emsp;createTime|创建时间|string(date-time)||
|&emsp;&emsp;endTime|有效期-结束时间|integer(int64)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;linkAdr|链接地址|string||
|&emsp;&emsp;linkId||integer(int64)||
|&emsp;&emsp;linkMethod|跳转链接方式（0：无，1：内部链接），2：外部链接|integer(int32)||
|&emsp;&emsp;linkTitle|跳转链接标题|string||
|&emsp;&emsp;linkType|跳转链接类型（1：资讯，2：活动）|integer(int32)||
|&emsp;&emsp;startTime|有效期-开始时间|integer(int64)||
|&emsp;&emsp;status|状态（1：待生效，2：生效中，3：已过期）|integer(int32)||
|&emsp;&emsp;updateBy|更新人|string||
|&emsp;&emsp;updateTime|更新时间|string(date-time)||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"activityType": 0,
		"activityTypeName": "",
		"bulletinLinkColor": "",
		"bulletinLinkText": "",
		"bulletinLinkUrl": "",
		"bulletinType": 0,
		"content": "",
		"createBy": "",
		"createTime": "",
		"endTime": 0,
		"id": 0,
		"linkAdr": "",
		"linkId": 0,
		"linkMethod": 0,
		"linkTitle": "",
		"linkType": 0,
		"startTime": 0,
		"status": 0,
		"updateBy": "",
		"updateTime": "",
		"visible": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# 运营模块-广告


## 添加广告


**接口地址**:`/activity,/activity/activity/ads/add`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>添加广告</p>



**请求示例**:


```javascript
{
  "clientType": 0,
  "content": "",
  "endTime": "",
  "linkAdr": "",
  "linkId": 0,
  "linkMethod": 0,
  "linkType": 0,
  "pic": "",
  "startTime": "",
  "title": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|AdsAddCmd|AdsAddCmd|
|&emsp;&emsp;clientType|客户端类型（1：PC，2：移动端）||false|integer(int32)||
|&emsp;&emsp;content|内容||false|string||
|&emsp;&emsp;endTime|有效期-结束时间||false|string(date-time)||
|&emsp;&emsp;linkAdr|跳转链接方式为2时必填||false|string||
|&emsp;&emsp;linkId|跳转链接方式为1时必填||false|integer(int64)||
|&emsp;&emsp;linkMethod|跳转链接方式（0：无，1：内部链接），2：外部链接||false|integer(int32)||
|&emsp;&emsp;linkType|跳转链接类型（1：资讯，2：活动聚合，3：活动页面）||false|integer(int32)||
|&emsp;&emsp;pic|图片地址||false|string||
|&emsp;&emsp;startTime|有效期-开始时间||false|string(date-time)||
|&emsp;&emsp;title|标题||false|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 修改广告


**接口地址**:`/activity,/activity/activity/ads/edit`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>修改广告</p>



**请求示例**:


```javascript
{
  "clientType": 0,
  "content": "",
  "endTime": "",
  "id": 0,
  "linkAdr": "",
  "linkId": 0,
  "linkMethod": 0,
  "linkType": 0,
  "pic": "",
  "startTime": "",
  "title": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|AdsUpdateCmd|AdsUpdateCmd|
|&emsp;&emsp;clientType|客户端类型（1：PC，2：移动端）||false|integer(int32)||
|&emsp;&emsp;content|内容||false|string||
|&emsp;&emsp;endTime|有效期-结束时间||false|string(date-time)||
|&emsp;&emsp;id|||false|integer(int64)||
|&emsp;&emsp;linkAdr|跳转链接方式为2时必填||false|string||
|&emsp;&emsp;linkId|跳转链接方式为1时必填||false|integer(int64)||
|&emsp;&emsp;linkMethod|跳转链接方式（0：无，1：内部链接），2：外部链接||false|integer(int32)||
|&emsp;&emsp;linkType|跳转链接类型（1：资讯，2：活动聚合，3：活动页面）||false|integer(int32)||
|&emsp;&emsp;pic|图片地址||false|string||
|&emsp;&emsp;startTime|有效期-开始时间||false|string(date-time)||
|&emsp;&emsp;title|标题||false|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 查询广告列表(分页)


**接口地址**:`/activity,/activity/activity/ads/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询广告列表(分页)</p>



**请求示例**:


```javascript
{
  "current": 0,
  "endTime": "",
  "size": 0,
  "startTime": "",
  "status": 0,
  "title": "",
  "visible": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|AdsPageQuery|AdsPageQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||false|string||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||false|string||
|&emsp;&emsp;status|状态（1：待生效，2：生效中，3：已过期）||false|integer(int32)||
|&emsp;&emsp;title|标题||false|string||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«AdsPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|AdsPageDTO|
|&emsp;&emsp;clickCount|点击次数|integer(int64)||
|&emsp;&emsp;endTime|有效期-结束时间|integer(int64)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;showCount|展示次数|integer(int64)||
|&emsp;&emsp;startTime|有效期-开始时间|integer(int64)||
|&emsp;&emsp;status|状态（1：待生效，2：生效中，3：已过期）|integer(int32)||
|&emsp;&emsp;title|标题|string||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"clickCount": 0,
			"endTime": 0,
			"id": 0,
			"showCount": 0,
			"startTime": 0,
			"status": 0,
			"title": "",
			"visible": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 广告排序


**接口地址**:`/activity,/activity/activity/ads/sort`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>广告排序</p>



**请求示例**:


```javascript
{
  "id": 0,
  "sortType": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|AdsSortCmd|AdsSortCmd|
|&emsp;&emsp;id|||false|integer(int64)||
|&emsp;&emsp;sortType|排序类型（1：上移，2：下移，3：置顶，4：置底）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 开关广告


**接口地址**:`/activity,/activity/activity/ads/toggle/{id}`


**请求方式**:`PUT`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>开关广告</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id|id|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 根据ID获取广告信息


**接口地址**:`/activity,/activity/activity/ads/{id}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>根据ID获取广告信息</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id|id|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«AdsDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||AdsDTO|AdsDTO|
|&emsp;&emsp;content|内容|string||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;linkAdr|跳转链接地址|string||
|&emsp;&emsp;linkId|内部关联ID|integer(int64)||
|&emsp;&emsp;linkMethod|跳转链接方式（0：无，1：内部链接），2：外部链接|integer(int32)||
|&emsp;&emsp;linkType|跳转链接类型（1：资讯，2：活动）|integer(int32)||
|&emsp;&emsp;pic|图片地址|string||
|&emsp;&emsp;title|广告标题|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"content": "",
		"id": 0,
		"linkAdr": "",
		"linkId": 0,
		"linkMethod": 0,
		"linkType": 0,
		"pic": "",
		"title": ""
	},
	"isSuccess": true,
	"message": ""
}
```


# 运营模块-活动聚合页


## 添加聚合页


**接口地址**:`/activity,/activity/activity/activityLoad/add`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>添加聚合页</p>



**请求示例**:


```javascript
{
  "content": "",
  "endTime": "",
  "linkAdr": "",
  "linkId": 0,
  "linkMethod": 0,
  "linkType": 0,
  "pic": "",
  "startTime": "",
  "title": "",
  "visible": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|ActivityLoadAddCmd|ActivityLoadAddCmd|
|&emsp;&emsp;content|文案内容||false|string||
|&emsp;&emsp;endTime|有效期-结束时间||false|string(date-time)||
|&emsp;&emsp;linkAdr|跳转链接方式为2时必填||false|string||
|&emsp;&emsp;linkId|跳转链接方式为1时必填||false|integer(int64)||
|&emsp;&emsp;linkMethod|跳转链接方式（0：无，1：内部链接），2：外部链接||false|integer(int32)||
|&emsp;&emsp;linkType|跳转链接类型（1：资讯，2：活动聚合，3：活动页面）||false|integer(int32)||
|&emsp;&emsp;pic|图片地址||false|string||
|&emsp;&emsp;startTime|有效期-开始时间||false|string(date-time)||
|&emsp;&emsp;title|标题||false|string||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 修改聚合页


**接口地址**:`/activity,/activity/activity/activityLoad/edit`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>修改聚合页</p>



**请求示例**:


```javascript
{
  "content": "",
  "endTime": "",
  "id": 0,
  "linkAdr": "",
  "linkId": 0,
  "linkMethod": 0,
  "linkType": 0,
  "pic": "",
  "startTime": "",
  "title": "",
  "visible": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|ActivityLoadUpdateCmd|ActivityLoadUpdateCmd|
|&emsp;&emsp;content|文案内容||false|string||
|&emsp;&emsp;endTime|有效期-结束时间||false|string(date-time)||
|&emsp;&emsp;id|||false|integer(int64)||
|&emsp;&emsp;linkAdr|跳转链接方式为2时必填||false|string||
|&emsp;&emsp;linkId|跳转链接方式为1时必填||false|integer(int64)||
|&emsp;&emsp;linkMethod|跳转链接方式（0：无，1：内部链接），2：外部链接||false|integer(int32)||
|&emsp;&emsp;linkType|跳转链接类型（1：资讯，2：活动聚合，3：活动页面）||false|integer(int32)||
|&emsp;&emsp;pic|图片地址||false|string||
|&emsp;&emsp;startTime|有效期-开始时间||false|string(date-time)||
|&emsp;&emsp;title|标题||false|string||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 查询活动聚合页列表(分页)


**接口地址**:`/activity,/activity/activity/activityLoad/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询活动聚合页列表(分页)</p>



**请求示例**:


```javascript
{
  "clientType": 0,
  "current": 0,
  "endTime": "",
  "size": 0,
  "startTime": "",
  "status": 0,
  "title": "",
  "visible": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|ActivityLoadPageQuery|ActivityLoadPageQuery|
|&emsp;&emsp;clientType|客户端类型（1：PC，2：移动端）||false|integer(int32)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||false|string||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||false|string||
|&emsp;&emsp;status|状态（1：待生效，2：生效中，3：已过期）||false|integer(int32)||
|&emsp;&emsp;title|标题||false|string||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«ActivityLoadPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|ActivityLoadPageDTO|
|&emsp;&emsp;endTime|有效期-结束时间|integer(int64)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;pic|图片地址|string||
|&emsp;&emsp;startTime|有效期-开始时间|integer(int64)||
|&emsp;&emsp;title|标题|string||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"endTime": 0,
			"id": 0,
			"pic": "",
			"startTime": 0,
			"title": "",
			"visible": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 聚合页排序


**接口地址**:`/activity,/activity/activity/activityLoad/sort`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>聚合页排序</p>



**请求示例**:


```javascript
{
  "id": 0,
  "operatorId": 0,
  "sortType": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|ActivityLoadSortCmd|ActivityLoadSortCmd|
|&emsp;&emsp;id|||false|integer(int64)||
|&emsp;&emsp;operatorId|操作人ID||false|integer(int64)||
|&emsp;&emsp;sortType|排序类型（1：上移，2：下移，3：置顶，4：置底）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 根据ID获取聚合页信息


**接口地址**:`/activity,/activity/activity/activityLoad/{id}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>根据ID获取聚合页信息</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id|id|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ActivityLoadDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ActivityLoadDTO|ActivityLoadDTO|
|&emsp;&emsp;activityType|活动类型|integer(int32)||
|&emsp;&emsp;activityTypeName|活动类型名称|string||
|&emsp;&emsp;content|文案内容|string||
|&emsp;&emsp;createBy|创建人|string||
|&emsp;&emsp;createTime|创建时间|string(date-time)||
|&emsp;&emsp;endTime|有效期-结束时间|integer(int64)||
|&emsp;&emsp;linkAdr|链接地址|string||
|&emsp;&emsp;linkId||integer(int64)||
|&emsp;&emsp;linkMethod|跳转链接方式（0：无，1：内部链接，2：外部链接）|integer(int32)||
|&emsp;&emsp;linkTitle|跳转链接标题|string||
|&emsp;&emsp;linkType|跳转链接类型（1：资讯，2：活动）|integer(int32)||
|&emsp;&emsp;pic|图片地址|string||
|&emsp;&emsp;startTime|有效期-开始时间|integer(int64)||
|&emsp;&emsp;title|标题|string||
|&emsp;&emsp;updateBy|更新操作人|string||
|&emsp;&emsp;updateTime|最新更新时间|string(date-time)||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"activityType": 0,
		"activityTypeName": "",
		"content": "",
		"createBy": "",
		"createTime": "",
		"endTime": 0,
		"linkAdr": "",
		"linkId": 0,
		"linkMethod": 0,
		"linkTitle": "",
		"linkType": 0,
		"pic": "",
		"startTime": 0,
		"title": "",
		"updateBy": "",
		"updateTime": "",
		"visible": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# 运营模块-消息


## 发送信息


**接口地址**:`/activity,/activity/activity/msg/rpc/add`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>发送信息</p>



**请求示例**:


```javascript
{
  "content": "",
  "operatorId": 0,
  "previewContent": "",
  "recipientType": 0,
  "recipientValues": [],
  "sendTime": "",
  "sendType": 0,
  "title": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|SendMessageCmd|SendMessageCmd|
|&emsp;&emsp;content|内容||false|string||
|&emsp;&emsp;operatorId|操作人ID||false|integer(int64)||
|&emsp;&emsp;previewContent|预览内容||false|string||
|&emsp;&emsp;recipientType|收件人类型（1：所有人，2：指定用户等级，3：指定玩家，4：RFM标签，5：周期标签，6：活跃标签，7批量导入）||false|integer(int32)||
|&emsp;&emsp;recipientValues|收件人类型值||false|array|string|
|&emsp;&emsp;sendTime|定时发送时间||false|string(date-time)||
|&emsp;&emsp;sendType|发送触发类型（1：立即发送，2：定时发送）||false|integer(int32)||
|&emsp;&emsp;title|标题||false|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 取消发送信息


**接口地址**:`/activity,/activity/activity/msg/rpc/cancel`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>取消发送信息</p>



**请求示例**:


```javascript
{
  "idList": []
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|CancelSendMessageCmd|CancelSendMessageCmd|
|&emsp;&emsp;idList|待取消发送的消息ID集合||false|array|integer|


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 删除信息


**接口地址**:`/activity,/activity/activity/msg/rpc/delete`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>删除信息</p>



**请求示例**:


```javascript
{
  "idList": []
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|DeleteMessageCmd|DeleteMessageCmd|
|&emsp;&emsp;idList|待删除的消息ID集合||false|array|integer|


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 批量导入信息


**接口地址**:`/activity,/activity/activity/msg/rpc/import`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>批量导入信息</p>



**请求示例**:


```javascript
{
  "dataList": []
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|ImportMessageCmd|ImportMessageCmd|
|&emsp;&emsp;dataList|||false|array|string|


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ImportMessageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ImportMessageDTO|ImportMessageDTO|
|&emsp;&emsp;dataList|会员账号列表|array|string|
|&emsp;&emsp;failedTotal|失败条数|integer(int32)||
|&emsp;&emsp;repeatableTotal|重复条数|integer(int32)||
|&emsp;&emsp;successTotal|成功条数|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"dataList": [],
		"failedTotal": 0,
		"repeatableTotal": 0,
		"successTotal": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 查询发送信息列表


**接口地址**:`/activity,/activity/activity/msg/rpc/send/list`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询发送信息列表</p>



**请求示例**:


```javascript
{
  "current": 0,
  "size": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|MessageSendPageQuery|MessageSendPageQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;size|||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«MessageSendDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|MessageSendDTO|
|&emsp;&emsp;content|内容|string||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;previewContent|预览内容|string||
|&emsp;&emsp;recipientType|收件人类型（1：所有人，2：指定用户等级，3：指定玩家，4：RFM标签，5：周期标签，6：活跃标签）|integer(int32)||
|&emsp;&emsp;recipientValue|收件人类型值|string||
|&emsp;&emsp;sendOnTime|定时发送时间|string(date-time)||
|&emsp;&emsp;sendTime|发送时间|string(date-time)||
|&emsp;&emsp;sendType|发送触发类型（1：立即发送，2：定时发送）|integer(int32)||
|&emsp;&emsp;sender|发件人|integer(int64)||
|&emsp;&emsp;senderName|发件人|string||
|&emsp;&emsp;status|状态（1：待发送，2：已发送，3：已阅读），4：已取消|integer(int32)||
|&emsp;&emsp;title|标题|string||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"content": "",
			"id": 0,
			"previewContent": "",
			"recipientType": 0,
			"recipientValue": "",
			"sendOnTime": "",
			"sendTime": "",
			"sendType": 0,
			"sender": 0,
			"senderName": "",
			"status": 0,
			"title": ""
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 编辑发送信息


**接口地址**:`/activity,/activity/activity/msg/rpc/update`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>编辑发送信息</p>



**请求示例**:


```javascript
{
  "content": "",
  "id": 0,
  "operatorId": 0,
  "previewContent": "",
  "recipientType": 0,
  "recipientValues": [],
  "sendTime": "",
  "sendType": 0,
  "title": ""
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|SendMessageUpdateCmd|SendMessageUpdateCmd|
|&emsp;&emsp;content|内容||false|string||
|&emsp;&emsp;id|||false|integer(int64)||
|&emsp;&emsp;operatorId|操作人ID||false|integer(int64)||
|&emsp;&emsp;previewContent|预览内容||false|string||
|&emsp;&emsp;recipientType|收件人类型（1：所有人，2：指定用户等级，3：指定玩家，4：RFM标签，5：周期标签，6：活跃标签）||false|integer(int32)||
|&emsp;&emsp;recipientValues|收件人类型值||false|array|string|
|&emsp;&emsp;sendTime|定时发送时间||false|string(date-time)||
|&emsp;&emsp;sendType|发送触发类型（1：立即发送，2：定时发送）||false|integer(int32)||
|&emsp;&emsp;title|标题||false|string||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 查询消息内容


**接口地址**:`/activity,/activity/activity/msg/rpc/{msgId}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询消息内容</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|msgId|msgId|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«MessageSendDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||MessageSendDTO|MessageSendDTO|
|&emsp;&emsp;content|内容|string||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;previewContent|预览内容|string||
|&emsp;&emsp;recipientType|收件人类型（1：所有人，2：指定用户等级，3：指定玩家，4：RFM标签，5：周期标签，6：活跃标签）|integer(int32)||
|&emsp;&emsp;recipientValue|收件人类型值|string||
|&emsp;&emsp;sendOnTime|定时发送时间|string(date-time)||
|&emsp;&emsp;sendTime|发送时间|string(date-time)||
|&emsp;&emsp;sendType|发送触发类型（1：立即发送，2：定时发送）|integer(int32)||
|&emsp;&emsp;sender|发件人|integer(int64)||
|&emsp;&emsp;senderName|发件人|string||
|&emsp;&emsp;status|状态（1：待发送，2：已发送，3：已阅读），4：已取消|integer(int32)||
|&emsp;&emsp;title|标题|string||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"content": "",
		"id": 0,
		"previewContent": "",
		"recipientType": 0,
		"recipientValue": "",
		"sendOnTime": "",
		"sendTime": "",
		"sendType": 0,
		"sender": 0,
		"senderName": "",
		"status": 0,
		"title": ""
	},
	"isSuccess": true,
	"message": ""
}
```


# 运营模块-资讯


## 添加资讯


**接口地址**:`/activity,/activity/activity/information/add`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>添加资讯</p>



**请求示例**:


```javascript
{
  "content": "",
  "lang": "",
  "operatorId": 0,
  "title": "",
  "visible": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|InformationAddCmd|InformationAddCmd|
|&emsp;&emsp;content|内容||false|string||
|&emsp;&emsp;lang|语言 zh- 中文 , en - 英文||false|string||
|&emsp;&emsp;operatorId|操作人ID||false|integer(int64)||
|&emsp;&emsp;title|标题||false|string||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 修改资讯


**接口地址**:`/activity,/activity/activity/information/edit`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>修改资讯</p>



**请求示例**:


```javascript
{
  "content": "",
  "id": 0,
  "lang": "",
  "operatorId": 0,
  "title": "",
  "visible": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|InformationUpdateCmd|InformationUpdateCmd|
|&emsp;&emsp;content|内容||false|string||
|&emsp;&emsp;id|||false|integer(int64)||
|&emsp;&emsp;lang|语言 zh- 中文 , en - 英文||false|string||
|&emsp;&emsp;operatorId|操作人ID||false|integer(int64)||
|&emsp;&emsp;title|标题||false|string||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 查询资讯列表


**接口地址**:`/activity,/activity/activity/information/list`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询资讯列表</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«InformationDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|InformationDTO|
|&emsp;&emsp;content|内容|string||
|&emsp;&emsp;createBy|创建人|string||
|&emsp;&emsp;createTime|创建时间|string(date-time)||
|&emsp;&emsp;endTime|有效期结束时间|string(date-time)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;lang|语言 zh- 中文 , en - 英文|string||
|&emsp;&emsp;startTime|有效期开始时间|string(date-time)||
|&emsp;&emsp;status|状态（1：待生效，2：生效中，3：已过期）|integer(int32)||
|&emsp;&emsp;title|标题|string||
|&emsp;&emsp;updateBy|操作人|string||
|&emsp;&emsp;updateTime|最后更新时间|string(date-time)||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"content": "",
			"createBy": "",
			"createTime": "",
			"endTime": "",
			"id": 0,
			"lang": "",
			"startTime": "",
			"status": 0,
			"title": "",
			"updateBy": "",
			"updateTime": "",
			"visible": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 查询资讯列表(分页)


**接口地址**:`/activity,/activity/activity/information/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询资讯列表(分页)</p>



**请求示例**:


```javascript
{
  "current": 0,
  "endTime": "",
  "size": 0,
  "startTime": "",
  "title": "",
  "visible": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|InformationPageQuery|InformationPageQuery|
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||false|string||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||false|string||
|&emsp;&emsp;title|标题||false|string||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«InformationPageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|InformationPageDTO|
|&emsp;&emsp;createTime|创建时间|string(date-time)||
|&emsp;&emsp;endTime|有效期-结束时间|string(date-time)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;readCount|浏览次数|integer(int64)||
|&emsp;&emsp;startTime|有效期-开始时间|string(date-time)||
|&emsp;&emsp;title|标题|string||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"createTime": "",
			"endTime": "",
			"id": 0,
			"readCount": 0,
			"startTime": "",
			"title": "",
			"visible": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 查询生效中的资讯列表


**接口地址**:`/activity,/activity/activity/information/used/list`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询生效中的资讯列表</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«InformationDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|InformationDTO|
|&emsp;&emsp;content|内容|string||
|&emsp;&emsp;createBy|创建人|string||
|&emsp;&emsp;createTime|创建时间|string(date-time)||
|&emsp;&emsp;endTime|有效期结束时间|string(date-time)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;lang|语言 zh- 中文 , en - 英文|string||
|&emsp;&emsp;startTime|有效期开始时间|string(date-time)||
|&emsp;&emsp;status|状态（1：待生效，2：生效中，3：已过期）|integer(int32)||
|&emsp;&emsp;title|标题|string||
|&emsp;&emsp;updateBy|操作人|string||
|&emsp;&emsp;updateTime|最后更新时间|string(date-time)||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"content": "",
			"createBy": "",
			"createTime": "",
			"endTime": "",
			"id": 0,
			"lang": "",
			"startTime": "",
			"status": 0,
			"title": "",
			"updateBy": "",
			"updateTime": "",
			"visible": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 根据ID获取资讯信息


**接口地址**:`/activity,/activity/activity/information/{id}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>根据ID获取资讯信息</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id|id|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«InformationDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||InformationDTO|InformationDTO|
|&emsp;&emsp;content|内容|string||
|&emsp;&emsp;createBy|创建人|string||
|&emsp;&emsp;createTime|创建时间|string(date-time)||
|&emsp;&emsp;endTime|有效期结束时间|string(date-time)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;lang|语言 zh- 中文 , en - 英文|string||
|&emsp;&emsp;startTime|有效期开始时间|string(date-time)||
|&emsp;&emsp;status|状态（1：待生效，2：生效中，3：已过期）|integer(int32)||
|&emsp;&emsp;title|标题|string||
|&emsp;&emsp;updateBy|操作人|string||
|&emsp;&emsp;updateTime|最后更新时间|string(date-time)||
|&emsp;&emsp;visible|是否显示（1：显示，2；不显示）|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"content": "",
		"createBy": "",
		"createTime": "",
		"endTime": "",
		"id": 0,
		"lang": "",
		"startTime": "",
		"status": 0,
		"title": "",
		"updateBy": "",
		"updateTime": "",
		"visible": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# 运营端-充值活动相关接口


## 新增充值活动


**接口地址**:`/activity,/activity/activity/deposit/create`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>新增充值活动</p>



**请求示例**:


```javascript
{
  "activityDesc": "",
  "activityName": "",
  "depositAmount": 0,
  "endDate": "",
  "gameTypeList": [],
  "giftAmount": 0,
  "giftMaxAmount": 0,
  "giftRate": 0,
  "giftType": 0,
  "levelList": [],
  "multipleNum": 0,
  "paymentIdList": [],
  "paymentModeList": [],
  "specified": "",
  "startDate": "",
  "targetType": 0,
  "tickets": [
    {
      "ticketId": 0,
      "ticketNum": 0
    }
  ],
  "times": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|ActivityDepositAddCmd|ActivityDepositAddCmd|
|&emsp;&emsp;activityDesc|活动说明||false|string||
|&emsp;&emsp;activityName|活动名称||true|string||
|&emsp;&emsp;depositAmount|充值金额||false|integer(int64)||
|&emsp;&emsp;endDate|结束日期||false|string(date)||
|&emsp;&emsp;gameTypeList|参与活动的游戏类型||false|array|integer|
|&emsp;&emsp;giftAmount|赠送金额||false|integer(int64)||
|&emsp;&emsp;giftMaxAmount|最大赠送金额||false|integer(int64)||
|&emsp;&emsp;giftRate|赠送比例||false|number||
|&emsp;&emsp;giftType|赠送类型 0：固定金额；1：充值比率||false|integer(int32)||
|&emsp;&emsp;levelList|玩家等级||false|array|integer|
|&emsp;&emsp;multipleNum|稽核倍数||false|integer(int32)||
|&emsp;&emsp;paymentIdList|参数活动的支付通道||false|array|integer|
|&emsp;&emsp;paymentModeList|参与活动的支付产品||false|array|integer|
|&emsp;&emsp;specified|指定金额赠送配置;格式：[{"key":100,"value":0.224,"multiple":1,"hot":1}]||false|string||
|&emsp;&emsp;startDate|开始日期||false|string(date)||
|&emsp;&emsp;targetType|目标类型；1：全部用户；2：用户等级||false|integer(int32)||
|&emsp;&emsp;tickets|票券||false|array|ActivityTicketDataCmd|
|&emsp;&emsp;&emsp;&emsp;ticketId|票券Id||false|integer||
|&emsp;&emsp;&emsp;&emsp;ticketNum|票券||false|integer||
|&emsp;&emsp;times|允许参与次数；1：首充；3：二冲；5：每日首充||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«long»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||integer(int64)|integer(int64)|
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": 0,
	"isSuccess": true,
	"message": ""
}
```


## 根据ID查询充值活动详情


**接口地址**:`/activity,/activity/activity/deposit/get/{id}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>根据ID查询充值活动详情</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id|id|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«ActivityDepositDetailsDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||ActivityDepositDetailsDTO|ActivityDepositDetailsDTO|
|&emsp;&emsp;activityDesc|活动说明|string||
|&emsp;&emsp;activityName|活动名称|string||
|&emsp;&emsp;depositAmount|充值金额|integer(int64)||
|&emsp;&emsp;display|是否显示 0：隐藏；1：显示|boolean||
|&emsp;&emsp;endDate|结束日期|string(date-time)||
|&emsp;&emsp;gameTypeList|参与活动的游戏类型|array|integer|
|&emsp;&emsp;giftAmount|赠送金额|integer(int64)||
|&emsp;&emsp;giftMaxAmount|最大赠送金额|integer(int64)||
|&emsp;&emsp;giftRate|赠送比例|number||
|&emsp;&emsp;giftType|赠送类型 0：固定金额；1：充值比率|integer(int32)||
|&emsp;&emsp;id|活动ID|integer(int64)||
|&emsp;&emsp;levelList|用户等级集合|array|integer|
|&emsp;&emsp;multipleNum|稽核倍数|integer(int32)||
|&emsp;&emsp;operator|操作人|string||
|&emsp;&emsp;paymentIdList|参数活动的支付通道|array|integer|
|&emsp;&emsp;paymentModeIdList|参数活动的支付产品|array|integer|
|&emsp;&emsp;specified|指定金额赠送配置;格式：[{"key":100,"value":0.224,"multiple":1}]|string||
|&emsp;&emsp;startDate|开始日期|string(date-time)||
|&emsp;&emsp;status|活动状态： 1-开启，2-关闭|integer(int32)||
|&emsp;&emsp;targetType|目标类型；1：全部用户；2：用户等级|integer(int32)||
|&emsp;&emsp;tickets|票券列表|array|ActivityTicketDataDTO|
|&emsp;&emsp;&emsp;&emsp;ticketId|票券Id|integer||
|&emsp;&emsp;&emsp;&emsp;ticketName|票券名称|string||
|&emsp;&emsp;&emsp;&emsp;ticketNum|票券|integer||
|&emsp;&emsp;&emsp;&emsp;ticketType|票券类型|integer||
|&emsp;&emsp;times|允许参与次数 0:首充；1：不限制|integer(int32)||
|&emsp;&emsp;updateTime|更新时间|string(date-time)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"activityDesc": "",
		"activityName": "",
		"depositAmount": 0,
		"display": true,
		"endDate": "",
		"gameTypeList": [],
		"giftAmount": 0,
		"giftMaxAmount": 0,
		"giftRate": 0,
		"giftType": 0,
		"id": 0,
		"levelList": [],
		"multipleNum": 0,
		"operator": "",
		"paymentIdList": [],
		"paymentModeIdList": [],
		"specified": "",
		"startDate": "",
		"status": 0,
		"targetType": 0,
		"tickets": [
			{
				"ticketId": 0,
				"ticketName": "",
				"ticketNum": 0,
				"ticketType": 0
			}
		],
		"times": 0,
		"updateTime": ""
	},
	"isSuccess": true,
	"message": ""
}
```


## 查询充值活动(分页)


**接口地址**:`/activity,/activity/activity/deposit/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询充值活动(分页)</p>



**请求示例**:


```javascript
{
  "activityName": "",
  "channelModeId": 0,
  "current": 0,
  "display": true,
  "endTime": "",
  "gameTypeId": 0,
  "level": 0,
  "size": 0,
  "startTime": "",
  "status": 0,
  "times": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|ActivityDepositAdminQuery|ActivityDepositAdminQuery|
|&emsp;&emsp;activityName|活动名称||false|string||
|&emsp;&emsp;channelModeId|支付id||false|integer(int64)||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;display|是否显示 false：隐藏；true:显示||false|boolean||
|&emsp;&emsp;endTime|结束日期||false|string(date-time)||
|&emsp;&emsp;gameTypeId|游戏类型ID||false|integer(int64)||
|&emsp;&emsp;level|用户等级||false|integer(int32)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始日期||false|string(date-time)||
|&emsp;&emsp;status|活动状态||false|integer(int32)||
|&emsp;&emsp;times|支付活动类型ID||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«ActivityDepositDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|ActivityDepositDTO|
|&emsp;&emsp;activityDepostName|支付活动类型名称|string||
|&emsp;&emsp;activityName|活动名称|string||
|&emsp;&emsp;channelModes|指定充值通道集合；为空时 代表全部|array|string|
|&emsp;&emsp;display|是否显示 0：隐藏；1：显示|boolean||
|&emsp;&emsp;endTime|结束日期|string(date-time)||
|&emsp;&emsp;gameTypes|指定游戏类型集合；为空时 代表全部|array|string|
|&emsp;&emsp;id|活动ID|integer(int64)||
|&emsp;&emsp;levelList|用户等级|array|string|
|&emsp;&emsp;paymentModeNames|指定充值产品集合；为空时 代表全部|array|string|
|&emsp;&emsp;specified|指定金额赠送配置;格式：[{"key":100,"value":0.224,"multiple":1}]|string||
|&emsp;&emsp;startTime|开始日期|string(date-time)||
|&emsp;&emsp;status|活动状态： 1-开启，2-关闭|integer(int32)||
|&emsp;&emsp;targetType|目标用户 1：全部用户；2：用户等级|integer(int32)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"activityDepostName": "",
			"activityName": "",
			"channelModes": [],
			"display": true,
			"endTime": "",
			"gameTypes": [],
			"id": 0,
			"levelList": [],
			"paymentModeNames": [],
			"specified": "",
			"startTime": "",
			"status": 0,
			"targetType": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 更新充值活动状态 开启-关闭


**接口地址**:`/activity,/activity/activity/deposit/updatStatus/{id}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>新充值活动状态 开启/关闭</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id|id|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 更新充值活动


**接口地址**:`/activity,/activity/activity/deposit/update`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>更新充值活动</p>



**请求示例**:


```javascript
{
  "activityDesc": "",
  "activityName": "",
  "depositAmount": 0,
  "endDate": "",
  "gameTypeList": [],
  "giftAmount": 0,
  "giftMaxAmount": 0,
  "giftRate": 0,
  "giftType": 0,
  "id": 0,
  "level": 0,
  "levelList": [],
  "multipleNum": 0,
  "paymentIdList": [],
  "paymentModeList": [],
  "specified": "",
  "startDate": "",
  "targetType": 0,
  "tickets": [
    {
      "ticketId": 0,
      "ticketNum": 0
    }
  ],
  "times": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|ActivityDepositUpdateCmd|ActivityDepositUpdateCmd|
|&emsp;&emsp;activityDesc|活动说明||false|string||
|&emsp;&emsp;activityName|活动名称||false|string||
|&emsp;&emsp;depositAmount|充值金额||false|integer(int64)||
|&emsp;&emsp;endDate|结束日期||false|string(date)||
|&emsp;&emsp;gameTypeList|参与活动的游戏类型||false|array|integer|
|&emsp;&emsp;giftAmount|赠送金额||false|integer(int64)||
|&emsp;&emsp;giftMaxAmount|最大赠送金额||false|integer(int64)||
|&emsp;&emsp;giftRate|赠送比例||false|number||
|&emsp;&emsp;giftType|赠送类型 0：固定金额；1：充值比率||false|integer(int32)||
|&emsp;&emsp;id|活动ID||false|integer(int64)||
|&emsp;&emsp;level|玩家等级||false|integer(int32)||
|&emsp;&emsp;levelList|玩家等级||false|array|integer|
|&emsp;&emsp;multipleNum|稽核倍数||false|integer(int32)||
|&emsp;&emsp;paymentIdList|参数活动的支付通道||false|array|integer|
|&emsp;&emsp;paymentModeList|参与活动的支付产品||false|array|integer|
|&emsp;&emsp;specified|指定金额赠送配置;格式：[{"key":100,"value":0.224,"multiple":1}]||false|string||
|&emsp;&emsp;startDate|开始日期||false|string(date)||
|&emsp;&emsp;targetType|目标类型；1：全部用户；2：用户等级||false|integer(int32)||
|&emsp;&emsp;tickets|票券||false|array|ActivityTicketDataCmd|
|&emsp;&emsp;&emsp;&emsp;ticketId|票券Id||false|integer||
|&emsp;&emsp;&emsp;&emsp;ticketNum|票券||false|integer||
|&emsp;&emsp;times|允许参与次数；1：首充；3：二冲；5：每日首充 6支付产品||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 更新充值活动 显示-隐藏


**接口地址**:`/activity,/activity/activity/deposit/updateDisplay/{id}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>更新充值活动 显示/隐藏</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id|id|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


# 运营端-充值活动相关接口(内部调用接口)


## 根据支付商户ID查询关联的活动ID


**接口地址**:`/activity,/activity/activity/remote/deposit/queryActivity/{paymentId}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>根据支付商户ID查询关联的活动ID</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|paymentId|paymentId|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«long»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [],
	"isSuccess": true,
	"message": ""
}
```


## 查询开启的支付活动信息


**接口地址**:`/activity,/activity/activity/remote/deposit/queryActivityDepositOpenList`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询开启的支付活动信息</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«ActivityDepositOpenDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|ActivityDepositOpenDTO|
|&emsp;&emsp;activityDepostName||string||
|&emsp;&emsp;activityDepostType||integer(int32)||
|&emsp;&emsp;activityName||string||
|&emsp;&emsp;channelModeId||string||
|&emsp;&emsp;channelModeNames||string||
|&emsp;&emsp;depositAmount||integer(int64)||
|&emsp;&emsp;display||boolean||
|&emsp;&emsp;expiredTime||string(date-time)||
|&emsp;&emsp;gameTypeNames||string||
|&emsp;&emsp;gameTypes||string||
|&emsp;&emsp;giftAmount||integer(int64)||
|&emsp;&emsp;giftMaxAmount||integer(int64)||
|&emsp;&emsp;giftRate||number||
|&emsp;&emsp;giftType||integer(int32)||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;levels||string||
|&emsp;&emsp;levelsNames||string||
|&emsp;&emsp;multipleNum||integer(int32)||
|&emsp;&emsp;paymentModes||string||
|&emsp;&emsp;specified||string||
|&emsp;&emsp;startTime||string(date-time)||
|&emsp;&emsp;targetType||integer(int32)||
|&emsp;&emsp;times||integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"activityDepostName": "",
			"activityDepostType": 0,
			"activityName": "",
			"channelModeId": "",
			"channelModeNames": "",
			"depositAmount": 0,
			"display": true,
			"expiredTime": "",
			"gameTypeNames": "",
			"gameTypes": "",
			"giftAmount": 0,
			"giftMaxAmount": 0,
			"giftRate": 0,
			"giftType": 0,
			"id": 0,
			"levels": "",
			"levelsNames": "",
			"multipleNum": 0,
			"paymentModes": "",
			"specified": "",
			"startTime": "",
			"targetType": 0,
			"times": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 更新支付活动支付通道配置


**接口地址**:`/activity,/activity/activity/remote/deposit/updatePaymentDepositConfig`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>新支付活动支付通道配置</p>



**请求示例**:


```javascript
{
  "activityIds": [],
  "paymentId": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|ActivityDepositPaymentUpdateCmd|ActivityDepositPaymentUpdateCmd|
|&emsp;&emsp;activityIds|活动配置Id||false|array|integer|
|&emsp;&emsp;paymentId|支付商户Id||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


# 返水活动配置


## 添加活动配置


**接口地址**:`/activity,/activity/activity/rebate/config/add`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>添加活动配置</p>



**请求示例**:


```javascript
{
  "configName": "",
  "multipleNum": 0,
  "rebateMaxLimit": 0,
  "rebateMinLimit": 0,
  "rebateRatioList": [
    {
      "gamePlatformId": 0,
      "gamePlatformNo": "",
      "gameTypeId": 0,
      "gameTypeNo": "",
      "rebateRatio": 0
    }
  ],
  "rebateTiming": "",
  "rebateType": 0,
  "status": 0,
  "validBetLimit": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|RebateConfigAddCmd|RebateConfigAddCmd|
|&emsp;&emsp;configName|活动设置名称||false|string||
|&emsp;&emsp;multipleNum|稽核倍数||false|number||
|&emsp;&emsp;rebateMaxLimit|单日返水发放最高上限||false|integer(int64)||
|&emsp;&emsp;rebateMinLimit|单日返水发放最低下限||false|integer(int64)||
|&emsp;&emsp;rebateRatioList|返水比例数据||false|array|RebateConfigAddSubCmd|
|&emsp;&emsp;&emsp;&emsp;gamePlatformId|游戏厂商ID||false|integer||
|&emsp;&emsp;&emsp;&emsp;gamePlatformNo|游戏厂商编码||false|string||
|&emsp;&emsp;&emsp;&emsp;gameTypeId|游戏类别ID||false|integer||
|&emsp;&emsp;&emsp;&emsp;gameTypeNo|游戏类别编码||false|string||
|&emsp;&emsp;&emsp;&emsp;rebateRatio|返水比例||false|number||
|&emsp;&emsp;rebateTiming|定时发放时间（时:分）||false|string||
|&emsp;&emsp;rebateType|发放方式（1：批次发放，2：实时发放）||false|integer(int32)||
|&emsp;&emsp;status|活动开关（1：开启，2：关闭）||false|integer(int32)||
|&emsp;&emsp;validBetLimit|最低有效投注打码量限制||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 根据活动配置ID查询活动配置


**接口地址**:`/activity,/activity/activity/rebate/config/info/{id}`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>根据活动配置ID查询活动配置</p>



**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|id|id|path|true|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«RebateConfigInfoDTO»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||RebateConfigInfoDTO|RebateConfigInfoDTO|
|&emsp;&emsp;configName|活动设置名称|string||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;multipleNum|稽核倍数|number||
|&emsp;&emsp;rebateMaxLimit|单日返水发放最高上限|integer(int64)||
|&emsp;&emsp;rebateMinLimit|单日返水发放最低下限|integer(int64)||
|&emsp;&emsp;rebateRatioList|返水比例数据|array|RebateConfigInfoSubDTO|
|&emsp;&emsp;&emsp;&emsp;gamePlatformId|游戏厂商ID|integer||
|&emsp;&emsp;&emsp;&emsp;gamePlatformNo|游戏厂商编码|string||
|&emsp;&emsp;&emsp;&emsp;gameTypeId|游戏类别ID|integer||
|&emsp;&emsp;&emsp;&emsp;gameTypeNo|游戏类别编码|string||
|&emsp;&emsp;&emsp;&emsp;id||integer||
|&emsp;&emsp;&emsp;&emsp;rebateRatio|返水比例|number||
|&emsp;&emsp;rebateTiming|定时发放时间（时:分）|string||
|&emsp;&emsp;rebateType|发放方式（1：批次发放，2：实时发放）|integer(int32)||
|&emsp;&emsp;status|活动开关（1：开启，2：关闭）|integer(int32)||
|&emsp;&emsp;validBetLimit|最低有效投注打码量限制|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"configName": "",
		"id": 0,
		"multipleNum": 0,
		"rebateMaxLimit": 0,
		"rebateMinLimit": 0,
		"rebateRatioList": [
			{
				"gamePlatformId": 0,
				"gamePlatformNo": "",
				"gameTypeId": 0,
				"gameTypeNo": "",
				"id": 0,
				"rebateRatio": 0
			}
		],
		"rebateTiming": "",
		"rebateType": 0,
		"status": 0,
		"validBetLimit": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 查询所有活动配置信息列表


**接口地址**:`/activity,/activity/activity/rebate/config/list`


**请求方式**:`GET`


**请求数据类型**:`application/x-www-form-urlencoded`


**响应数据类型**:`*/*`


**接口描述**:<p>查询所有活动配置信息列表</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«List«RebateConfigListDTO»»|
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|RebateConfigListDTO|
|&emsp;&emsp;configName|活动配置名称|string||
|&emsp;&emsp;id||integer(int64)||
|&emsp;&emsp;memberNums|参与返水用户总数|integer(int64)||
|&emsp;&emsp;rebateType|发放方式（1：批次发放，2：实时发放）|integer(int32)||
|&emsp;&emsp;status|活动开关（1：开启，2：关闭）|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"configName": "",
			"id": 0,
			"memberNums": 0,
			"rebateType": 0,
			"status": 0
		}
	],
	"isSuccess": true,
	"message": ""
}
```


## 根据活动配置ID和返水方式查询配置信息


**接口地址**:`/activity,/activity/activity/rebate/config/type/info`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>根据活动配置ID和返水方式查询配置信息</p>



**请求示例**:


```javascript
{
  "id": 0,
  "rebateType": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RebateConfigQuery|RebateConfigQuery|
|&emsp;&emsp;id|||false|integer(int64)||
|&emsp;&emsp;rebateType|发放方式（1：批次发放，2：实时发放）||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«RebateConfigTypeInfoDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||RebateConfigTypeInfoDTO|RebateConfigTypeInfoDTO|
|&emsp;&emsp;configName|活动配置名称|string||
|&emsp;&emsp;multipleNum|稽核倍数|integer(int32)||
|&emsp;&emsp;rebateMaxLimit|单日返水发放最高上限|integer(int64)||
|&emsp;&emsp;rebateMinLimit|单日返水发放最低下限|integer(int64)||
|&emsp;&emsp;rebateTiming|定时发放时间（时:分）|string||
|&emsp;&emsp;status|活动开关（1：开启，2：关闭）|integer(int32)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"configName": "",
		"multipleNum": 0,
		"rebateMaxLimit": 0,
		"rebateMinLimit": 0,
		"rebateTiming": "",
		"status": 0
	},
	"isSuccess": true,
	"message": ""
}
```


## 修改活动配置


**接口地址**:`/activity,/activity/activity/rebate/config/update`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>修改活动配置</p>



**请求示例**:


```javascript
{
  "configName": "",
  "id": 0,
  "multipleNum": 0,
  "rebateMaxLimit": 0,
  "rebateMinLimit": 0,
  "rebateRatioList": [
    {
      "gamePlatformId": 0,
      "gamePlatformNo": "",
      "gameTypeId": 0,
      "gameTypeNo": "",
      "id": 0,
      "rebateRatio": 0
    }
  ],
  "rebateTiming": "",
  "rebateType": 0,
  "status": 0,
  "validBetLimit": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|cmd|cmd|body|true|RebateConfigUpdateCmd|RebateConfigUpdateCmd|
|&emsp;&emsp;configName|活动设置名称||false|string||
|&emsp;&emsp;id|||false|integer(int64)||
|&emsp;&emsp;multipleNum|稽核倍数||false|number||
|&emsp;&emsp;rebateMaxLimit|单日返水发放最高上限||false|integer(int64)||
|&emsp;&emsp;rebateMinLimit|单日返水发放最低下限||false|integer(int64)||
|&emsp;&emsp;rebateRatioList|返水比例数据||false|array|RebateConfigUpdateSubCmd|
|&emsp;&emsp;&emsp;&emsp;gamePlatformId|游戏厂商ID||false|integer||
|&emsp;&emsp;&emsp;&emsp;gamePlatformNo|游戏厂商编码||false|string||
|&emsp;&emsp;&emsp;&emsp;gameTypeId|游戏类别ID||false|integer||
|&emsp;&emsp;&emsp;&emsp;gameTypeNo|游戏类别编码||false|string||
|&emsp;&emsp;&emsp;&emsp;id|||false|integer||
|&emsp;&emsp;&emsp;&emsp;rebateRatio|返水比例||false|number||
|&emsp;&emsp;rebateTiming|定时发放时间（时:分）||false|string||
|&emsp;&emsp;rebateType|发放方式（1：批次发放，2：实时发放）||false|integer(int32)||
|&emsp;&emsp;status|活动开关（1：开启，2：关闭）||false|integer(int32)||
|&emsp;&emsp;validBetLimit|最低有效投注打码量限制||false|integer(int64)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«boolean»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||boolean||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": true,
	"isSuccess": true,
	"message": ""
}
```


## 查询活动返水发放记录


**接口地址**:`/activity,/activity/activity/rebate/page`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询活动返水发放记录</p>



**请求示例**:


```javascript
{
  "account": "",
  "agentNo": "",
  "current": 0,
  "endTime": "2023-09-30 23:59:59",
  "rebateStatus": 0,
  "size": 0,
  "startTime": "2023-09-01 00:00:00",
  "timeType": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RebatePageQuery|RebatePageQuery|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;agentNo|代理商编码||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||false|string(date-time)||
|&emsp;&emsp;rebateStatus|状态||false|integer(int32)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||false|string(date-time)||
|&emsp;&emsp;timeType|时间类型 ： 1-投注时间，2-发奖时间||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|PageResponse«RebatePageDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||array|RebatePageDTO|
|&emsp;&emsp;account|会员账号|string||
|&emsp;&emsp;agentNo|代理商编码|string||
|&emsp;&emsp;betAmount|投注金额|integer(int64)||
|&emsp;&emsp;betDate|投注日期|integer(int64)||
|&emsp;&emsp;configName|活动设置名称|string||
|&emsp;&emsp;id|ID|integer(int64)||
|&emsp;&emsp;rebateAmt|发放金额|integer(int64)||
|&emsp;&emsp;rebateMaxLimit|当日上限|integer(int64)||
|&emsp;&emsp;rebateMinLimit|最低返水限额|integer(int64)||
|&emsp;&emsp;rebateNums|发放人数|integer(int64)||
|&emsp;&emsp;rebateStatus|状态 1：待结算，2：已领取，3：未达标，4：结算中|integer(int32)||
|&emsp;&emsp;rebateTime|发放日期|integer(int64)||
|empty||boolean||
|message||string||
|notEmpty||boolean||
|pageIndex||integer(int64)|integer(int64)|
|pageSize||integer(int64)|integer(int64)|
|totalCount||integer(int64)|integer(int64)|
|totalPages||integer(int64)|integer(int64)|


**响应示例**:
```javascript
{
	"code": 0,
	"data": [
		{
			"account": "",
			"agentNo": "",
			"betAmount": 0,
			"betDate": 0,
			"configName": "",
			"id": 0,
			"rebateAmt": 0,
			"rebateMaxLimit": 0,
			"rebateMinLimit": 0,
			"rebateNums": 0,
			"rebateStatus": 0,
			"rebateTime": 0
		}
	],
	"empty": true,
	"message": "",
	"notEmpty": true,
	"pageIndex": 0,
	"pageSize": 0,
	"totalCount": 0,
	"totalPages": 0
}
```


## 查询活动返水发放合计


**接口地址**:`/activity,/activity/activity/rebate/sum`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>查询活动返水发放合计</p>



**请求示例**:


```javascript
{
  "account": "",
  "agentNo": "",
  "current": 0,
  "endTime": "2023-09-30 23:59:59",
  "rebateStatus": 0,
  "size": 0,
  "startTime": "2023-09-01 00:00:00",
  "timeType": 0
}
```


**请求参数**:


| 参数名称 | 参数说明 | 请求类型    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
|query|query|body|true|RebatePageQuery|RebatePageQuery|
|&emsp;&emsp;account|会员账号||false|string||
|&emsp;&emsp;agentNo|代理商编码||false|string||
|&emsp;&emsp;current|||false|integer(int64)||
|&emsp;&emsp;endTime|结束时间||false|string(date-time)||
|&emsp;&emsp;rebateStatus|状态||false|integer(int32)||
|&emsp;&emsp;size|||false|integer(int64)||
|&emsp;&emsp;startTime|开始时间||false|string(date-time)||
|&emsp;&emsp;timeType|时间类型 ： 1-投注时间，2-发奖时间||false|integer(int32)||


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«RebateSumDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||RebateSumDTO|RebateSumDTO|
|&emsp;&emsp;rebateAmt|发放金额合计|integer(int64)||
|&emsp;&emsp;rebateNums|发放人数合计|integer(int64)||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"rebateAmt": 0,
		"rebateNums": 0
	},
	"isSuccess": true,
	"message": ""
}
```


# 首页活动-H5接口


## 首页获取奖励信息


**接口地址**:`/activity,/activity/activity/wap/reward/main/query`


**请求方式**:`POST`


**请求数据类型**:`application/json`


**响应数据类型**:`*/*`


**接口描述**:<p>首页获取奖励信息-ph/v2.2.4</p>



**请求参数**:


暂无


**响应状态**:


| 状态码 | 说明 | schema |
| -------- | -------- | ----- | 
|200|OK|SingleResponse«CustomerRewardMainInfoWapDTO»|
|201|Created||
|401|Unauthorized||
|403|Forbidden||
|404|Not Found||


**响应参数**:


| 参数名称 | 参数说明 | 类型 | schema |
| -------- | -------- | ----- |----- | 
|code||integer(int32)|integer(int32)|
|data||CustomerRewardMainInfoWapDTO|CustomerRewardMainInfoWapDTO|
|&emsp;&emsp;agentRankBonusWapDTO|邀请排行版奖励|AgentRankBonusWapDTO|AgentRankBonusWapDTO|
|&emsp;&emsp;&emsp;&emsp;bonus|领取金额|integer||
|&emsp;&emsp;&emsp;&emsp;id|领取记录Id|integer||
|&emsp;&emsp;&emsp;&emsp;status|领取状态|integer||
|&emsp;&emsp;chargeCumulative|日累计充值奖励|UserChargeCumulativeWapDTO|UserChargeCumulativeWapDTO|
|&emsp;&emsp;&emsp;&emsp;id|领取记录Id|integer||
|&emsp;&emsp;&emsp;&emsp;obtainingStatus|领取状态|integer||
|&emsp;&emsp;&emsp;&emsp;rewardAmount|领取金额|integer||
|&emsp;&emsp;experienceBonusWapDTO|体验金|ExperienceBonusWapDTO|ExperienceBonusWapDTO|
|&emsp;&emsp;&emsp;&emsp;bonus|领取金额|integer||
|&emsp;&emsp;&emsp;&emsp;status|领取状态 0 不可领取 1 待领取, 2 已领取|integer||
|&emsp;&emsp;registerReward|注册奖励|UserCheckRegisterRewardWapDTO|UserCheckRegisterRewardWapDTO|
|&emsp;&emsp;&emsp;&emsp;checkStatus|领取状态 -1不可领取  0 未领取  1已领取 2已确认 5当次不可领取|integer||
|&emsp;&emsp;&emsp;&emsp;rewardAmount|领取金额|integer||
|&emsp;&emsp;&emsp;&emsp;rewardDay|领取日期|integer||
|&emsp;&emsp;verifyBonusRewardDTO|验证手机号奖励|VerifyPhoneBonusRewardDTO|VerifyPhoneBonusRewardDTO|
|&emsp;&emsp;&emsp;&emsp;bonus|奖励金额|integer||
|&emsp;&emsp;&emsp;&emsp;bonusStatus|奖励状态 -1 未验证 0待领取 |integer||
|&emsp;&emsp;vipDailySalary|Vip日工资|VipDailySalaryMainInfoWapDTO|VipDailySalaryMainInfoWapDTO|
|&emsp;&emsp;&emsp;&emsp;id|领取Id|integer||
|&emsp;&emsp;&emsp;&emsp;receiveStatus|领取状态  1可以领取 其它不可领取|integer||
|&emsp;&emsp;&emsp;&emsp;salary|昨日工资|integer||
|isSuccess||boolean||
|message||string||


**响应示例**:
```javascript
{
	"code": 0,
	"data": {
		"agentRankBonusWapDTO": {
			"bonus": 0,
			"id": 0,
			"status": 0
		},
		"chargeCumulative": {
			"id": 0,
			"obtainingStatus": 0,
			"rewardAmount": 0
		},
		"experienceBonusWapDTO": {
			"bonus": 0,
			"status": 0
		},
		"registerReward": {
			"checkStatus": 0,
			"rewardAmount": 0,
			"rewardDay": 0
		},
		"verifyBonusRewardDTO": {
			"bonus": 0,
			"bonusStatus": 0
		},
		"vipDailySalary": {
			"id": 0,
			"receiveStatus": 0,
			"salary": 0
		}
	},
	"isSuccess": true,
	"message": ""
}
```