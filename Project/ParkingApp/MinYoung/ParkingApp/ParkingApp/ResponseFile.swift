//
//  ParkingLot.swift
//  ParkingApp
//
//  Created by 이민영 on 2023/11/23.
//

import Foundation

// MARK: - ParkingLot
struct ParkingLot: Codable {
    let getParkingInfo: GetParkingInfo

    enum CodingKeys: String, CodingKey {
        case getParkingInfo = "GetParkingInfo"
    }
}

// MARK: - GetParkingInfo
struct GetParkingInfo: Codable {
    let listTotalCount: Int?
    let result: Result
    let row: [Row]

    enum CodingKeys: String, CodingKey {
        case listTotalCount = "list_total_count"
        case result = "RESULT"
        case row
    }
}

// MARK: - Result
struct Result: Codable {
    let code, message: String

    enum CodingKeys: String, CodingKey {
        case code = "CODE"
        case message = "MESSAGE"
    }
}

// MARK: - Row
struct Row: Codable {
    let parkingCode, parkingName, addr, parkingType: String?
    let parkingTypeNm, operationRule, operationRuleNm, tel: String?
    let queStatus, queStatusNm: String?
    let capacity, curParking: Int?
    let curParkingTime, payYn, payNm, nightFreeOpen: String?
    let nightFreeOpenNm, weekdayBeginTime, weekdayEndTime, weekendBeginTime: String?
    let weekendEndTime, holidayBeginTime, holidayEndTime, saturdayPayYn: String?
    let saturdayPayNm, holidayPayYn, holidayPayNm, fulltimeMonthly: String?
    let grpParknm: String?
    let rates, timeRate, addRates, addTimeRate: Int?
    let busRates, busTimeRate, busAddRates, busAddTimeRate: Int?
    let dayMaximum: Int?
    let lat, lng: Double?
    let shCo, shLink, shType, shEtc: String?

    enum CodingKeys: String, CodingKey {
        case parkingCode = "PARKING_CODE"
        case parkingName = "PARKING_NAME"
        case addr = "ADDR"
        case parkingType = "PARKING_TYPE"
        case parkingTypeNm = "PARKING_TYPE_NM"
        case operationRule = "OPERATION_RULE"
        case operationRuleNm = "OPERATION_RULE_NM"
        case tel = "TEL"
        case queStatus = "QUE_STATUS"
        case queStatusNm = "QUE_STATUS_NM"
        case capacity = "CAPACITY"
        case curParking = "CUR_PARKING"
        case curParkingTime = "CUR_PARKING_TIME"
        case payYn = "PAY_YN"
        case payNm = "PAY_NM"
        case nightFreeOpen = "NIGHT_FREE_OPEN"
        case nightFreeOpenNm = "NIGHT_FREE_OPEN_NM"
        case weekdayBeginTime = "WEEKDAY_BEGIN_TIME"
        case weekdayEndTime = "WEEKDAY_END_TIME"
        case weekendBeginTime = "WEEKEND_BEGIN_TIME"
        case weekendEndTime = "WEEKEND_END_TIME"
        case holidayBeginTime = "HOLIDAY_BEGIN_TIME"
        case holidayEndTime = "HOLIDAY_END_TIME"
        case saturdayPayYn = "SATURDAY_PAY_YN"
        case saturdayPayNm = "SATURDAY_PAY_NM"
        case holidayPayYn = "HOLIDAY_PAY_YN"
        case holidayPayNm = "HOLIDAY_PAY_NM"
        case fulltimeMonthly = "FULLTIME_MONTHLY"
        case grpParknm = "GRP_PARKNM"
        case rates = "RATES"
        case timeRate = "TIME_RATE"
        case addRates = "ADD_RATES"
        case addTimeRate = "ADD_TIME_RATE"
        case busRates = "BUS_RATES"
        case busTimeRate = "BUS_TIME_RATE"
        case busAddRates = "BUS_ADD_RATES"
        case busAddTimeRate = "BUS_ADD_TIME_RATE"
        case dayMaximum = "DAY_MAXIMUM"
        case lat = "LAT"
        case lng = "LNG"
        case shCo = "SH_CO"
        case shLink = "SH_LINK"
        case shType = "SH_TYPE"
        case shEtc = "SH_ETC"
    }
}
