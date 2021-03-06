package idnet.common;

class InitParameters
{

	public var appId:String;

#if js
	public function new(
		appId:String,
		status:Bool,
		responseType:String,
		redirectUri:String,
		channelUrl:String = null,
		meta:Dynamic = null
	)
	{
		this.appId = appId;
		this.status = status;
		this.responseType = responseType;
		this.redirectUri = redirectUri;
		this.channelUrl = channelUrl;
		this.meta = meta;
	}
	public var status:Bool;
	public var responseType:String;
	public var redirectUri:String;
	public var channelUrl:String;
	public var meta:Dynamic;
	
	public function serialize():Dynamic
	{
		var serialized:Dynamic = 
		{
			appId: appId,
			status: status,
			responseType: responseType,
			redirectUri: redirectUri,
		}
		
		if (channelUrl != null) serialized.channelUrl = channelUrl;
		if (meta != null) serialized.meta = meta;
		
		return serialized;
	}
	
#elseif flash
	
	public function new(
		stageRef:openfl.display.Stage,
		appId:String,
		appSecret:String,
		debug:Bool,
		preload:Bool
	) 
	{
		this.stageRef = stageRef;
		this.appId = appId;
		this.appSecret = appSecret;
		this.debug = debug;
		this.preload = preload;
	}
	public var stageRef:openfl.display.Stage;
	public var appSecret:String;
	public var debug:Bool;
	public var preload:Bool;
#end
}