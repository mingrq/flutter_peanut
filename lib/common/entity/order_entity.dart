import 'package:flutterpeanut/generated/json/base/json_convert_content.dart';

/**
 * 订单实体类
 */
class OrderEntity with JsonConvert<OrderEntity> {
	String id;
	String orderid;
	String ptitle;
	String ocname;
	String ocphone;
	String octime;
	String totalamount;
}
