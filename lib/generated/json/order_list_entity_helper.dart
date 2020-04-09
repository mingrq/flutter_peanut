import 'package:flutterpeanut/common/entity/http/order_list_entity.dart';

orderListEntityFromJson(OrderListEntity data, Map<String, dynamic> json) {
	if (json['success'] != null) {
		data.success = json['success'];
	}
	if (json['message'] != null) {
		data.message = json['message']?.toString();
	}
	if (json['data'] != null) {
		data.data = new List<OrderListData>();
		(json['data'] as List).forEach((v) {
			data.data.add(new OrderListData().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> orderListEntityToJson(OrderListEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['success'] = entity.success;
	data['message'] = entity.message;
	if (entity.data != null) {
		data['data'] =  entity.data.map((v) => v.toJson()).toList();
	}
	return data;
}

orderListDataFromJson(OrderListData data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toString();
	}
	if (json['orderid'] != null) {
		data.orderid = json['orderid']?.toString();
	}
	if (json['ptitle'] != null) {
		data.ptitle = json['ptitle']?.toString();
	}
	if (json['ocname'] != null) {
		data.ocname = json['ocname']?.toString();
	}
	if (json['ocphone'] != null) {
		data.ocphone = json['ocphone']?.toString();
	}
	if (json['octime'] != null) {
		data.octime = json['octime']?.toString();
	}
	if (json['totalamount'] != null) {
		data.totalamount = json['totalamount']?.toString();
	}
	return data;
}

Map<String, dynamic> orderListDataToJson(OrderListData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['orderid'] = entity.orderid;
	data['ptitle'] = entity.ptitle;
	data['ocname'] = entity.ocname;
	data['ocphone'] = entity.ocphone;
	data['octime'] = entity.octime;
	data['totalamount'] = entity.totalamount;
	return data;
}