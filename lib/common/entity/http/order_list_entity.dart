import 'package:flutterpeanut/common/entity/order_entity.dart';
import 'package:flutterpeanut/generated/json/base/json_convert_content.dart';

/**
 * http订单列表实体类
 */
class OrderListEntity with JsonConvert<OrderListEntity> {
	bool success;
	String message;
	List<OrderEntity> data;
}

