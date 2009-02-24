package com.croqodile{
    import com.croqodile.IslandReplica;
    import com.croqodile.IslandObject;
    import com.croqodile.Message;
    import com.croqodile.serialization.json.JSON;
    import flash.events.*;
    import flash.utils.ByteArray;
    
    public class ExternalIslandMessage extends ExternalMessage{

		protected var _targetGuid:int;
		protected var _args:Array;
		protected var _msg:String;

		public function ExternalIslandMessage(timestamp:Number, content:ByteArray):void{
			super(timestamp);
		}

// 		override public function execute(island:IslandReplica):void{
// 			var target:IslandObject = IslandObject(island.islandObjectByGuid(_targetGuid));
// 			target[_msg].apply(target, _args);
// 		}
		
		override public function toString():String{
			return "ExternalIslandMessage(" + [_timestamp,
				_targetGuid,
				_msg,
				_args].join(",") + 
			")";
		}
    }
    
}


