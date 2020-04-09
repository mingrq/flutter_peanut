import 'package:flutterpeanut/common/entity/order_entity.dart';

orderEntityFromJson(OrderEntity data, Map<String, dynamic> json) {
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

Map<String, dynamic> orderEntityToJson(OrderEntity entity) {
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