class DataModel {
  int? totalDay;
  int? totalDayLeft;
  int? totalDayUsed;
  List<LeaveRequests>? leaveRequests;

  DataModel(
      {this.totalDay,
      this.totalDayLeft,
      this.totalDayUsed,
      this.leaveRequests});

  DataModel.fromJson(Map<String, dynamic> json) {
    totalDay = json['total_day'];
    totalDayLeft = json['total_day_left'];
    totalDayUsed = json['total_day_used'];
    if (json['leave_requests'] != null) {
      leaveRequests = <LeaveRequests>[];
      json['leave_requests'].forEach((v) {
        leaveRequests!.add(LeaveRequests.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['total_day'] = this.totalDay;
    data['total_day_left'] = this.totalDayLeft;
    data['total_day_used'] = this.totalDayUsed;
    if (this.leaveRequests != null) {
      data['leave_requests'] =
          this.leaveRequests!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LeaveRequests {
  String? status;
  List<RequestList>? requestList;

  LeaveRequests({this.status, this.requestList});

  LeaveRequests.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['request_list'] != null) {
      requestList = <RequestList>[];
      json['request_list'].forEach((v) {
        requestList!.add(RequestList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = this.status;
    if (this.requestList != null) {
      data['request_list'] = this.requestList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RequestList {
  String? date;
  String? type;

  RequestList({this.date, this.type});

  RequestList.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['date'] = this.date;
    data['type'] = this.type;
    return data;
  }
}
