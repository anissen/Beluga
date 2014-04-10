package beluga.module.notification.model;

/**
 * ...
 * @author Guillaume Gomez
 */

import sys.db.Object;
import sys.db.Types;
import beluga.module.account.model.User;

@:table("beluga_notif_notification")
@:id(id)
class NotificationModel extends Object {
	public var id : SId;
	public var title : STinyText;
	public var text : STinyText;
	public var user_id : SInt;
	public var hasBeenRead : SBool;
	@:relation(user_id) public var user : User;
}