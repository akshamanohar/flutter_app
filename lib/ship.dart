// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Post> postFromMap(String str) => List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToMap(List<Post> data) => json.encode(List<dynamic>.from(data.map((x) => x.toString())));


class Post {
  Post({
    this.count,
    this.inquiries,
  });

  int? count;
  List<Inquiry>? inquiries;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        count: json["count"] == null ? null : json["count"],
        inquiries: json["inquiries"] == null
            ? null
            : List<Inquiry>.from(
                json["inquiries"].map((x) => Inquiry.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count == null ? null : count,
        "inquiries": inquiries == null
            ? null
            : List<dynamic>.from(inquiries!.map((x) => x.toJson())),
      };


}

class Inquiry {
  Inquiry({
    this.currentStatus,
    this.referenceNumber,
    this.erpData,
    this.isBooked,
    this.shipmentId,
    this.inquiryFeedback,
    this.salesCoordinator,
    this.salesUser,
    this.shipperUser,
    this.pricingUser,
    this.rfqData,
    this.inquiryTrigger,
    this.quoteId,
    this.quoteNumber,
    this.shipmentNumber,
    this.isDeleted,
    this.deletedBy,
    this.deletedAt,
    this.id,
    this.inquiryNumber,
    this.searchId,
    this.searchData,
    this.user,
    this.inquirySource,
    this.inquiryRaisedBy,
    this.activity,
    this.status,
    this.inquiryExpiryDate,
    this.createdAt,
    this.updateAt,
    this.v,
    this.additionalCharges,
  });

  CurrentStatus? currentStatus;
  dynamic referenceNumber;
  dynamic erpData;
  bool? isBooked;
  dynamic shipmentId;
  dynamic inquiryFeedback;
  dynamic salesCoordinator;
  SalesUser? salesUser;
  ShipperUser? shipperUser;
  dynamic pricingUser;
  dynamic rfqData;
  InquiryTrigger? inquiryTrigger;
  String? quoteId;
  String? quoteNumber;
  dynamic shipmentNumber;
  bool? isDeleted;
  dynamic deletedBy;
  dynamic deletedAt;
  String? id;
  String? inquiryNumber;
  String? searchId;
  SearchData? searchData;
  User? user;
  InquirySource? inquirySource;
  InquiryRaisedBy? inquiryRaisedBy;
  String? activity;
  String? status;
  DateTime? inquiryExpiryDate;
  DateTime? createdAt;
  DateTime? updateAt;
  int? v;
  AdditionalCharges? additionalCharges;

  factory Inquiry.fromJson(Map<String, dynamic> json) => Inquiry(
        currentStatus: json["current_status"] == null
            ? null
            : CurrentStatus.fromJson(json["current_status"]),
        referenceNumber: json["reference_number"],
        erpData: json["erp_data"],
        isBooked: json["is_booked"] == null ? null : json["is_booked"],
        shipmentId: json["shipment_id"],
        inquiryFeedback: json["inquiry_feedback"],
        salesCoordinator: json["sales_coordinator"],
        salesUser: json["sales_user"] == null
            ? null
            : SalesUser.fromJson(json["sales_user"]),
        shipperUser: json["shipper_user"] == null
            ? null
            : ShipperUser.fromJson(json["shipper_user"]),
        pricingUser: json["pricing_user"],
        rfqData: json["rfq_data"],
        inquiryTrigger: json["inquiry_trigger"] == null
            ? null
            : inquiryTriggerValues.map[json["inquiry_trigger"]],
        quoteId: json["quote_id"] == null ? null : json["quote_id"],
        quoteNumber: json["quote_number"] == null ? null : json["quote_number"],
        shipmentNumber: json["shipment_number"],
        isDeleted: json["is_deleted"] == null ? null : json["is_deleted"],
        deletedBy: json["deleted_by"],
        deletedAt: json["deleted_at"],
        id: json["_id"] == null ? null : json["_id"],
        inquiryNumber:
            json["inquiry_number"] == null ? null : json["inquiry_number"],
        searchId: json["search_id"] == null ? null : json["search_id"],
        searchData: json["search_data"] == null
            ? null
            : SearchData.fromJson(json["search_data"]),
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        inquirySource: json["inquiry_source"] == null
            ? null
            : inquirySourceValues.map[json["inquiry_source"]],
        inquiryRaisedBy: json["inquiry_raised_by"] == null
            ? null
            : inquiryRaisedByValues.map[json["inquiry_raised_by"]],
        activity: json["activity"] == null ? null : json["activity"],
        status: json["status"] == null ? null : json["status"],
        inquiryExpiryDate: json["inquiry_expiry_date"] == null
            ? null
            : DateTime.parse(json["inquiry_expiry_date"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updateAt: json["update_at"] == null
            ? null
            : DateTime.parse(json["update_at"]),
        v: json["__v"] == null ? null : json["__v"],
        additionalCharges: json["additional_charges"] == null
            ? null
            : AdditionalCharges.fromJson(json["additional_charges"]),
      );

  Map<String, dynamic> toJson() => {
        "current_status": currentStatus == null ? null : currentStatus!.toJson(),
        "reference_number": referenceNumber,
        "erp_data": erpData,
        "is_booked": isBooked == null ? null : isBooked,
        "shipment_id": shipmentId,
        "inquiry_feedback": inquiryFeedback,
        "sales_coordinator": salesCoordinator,
        "sales_user": salesUser == null ? null : salesUser!.toJson(),
        "shipper_user": shipperUser == null ? null : shipperUser!.toJson(),
        "pricing_user": pricingUser,
        "rfq_data": rfqData,
        "inquiry_trigger": inquiryTrigger == null
            ? null
            : inquiryTriggerValues.reverse[inquiryTrigger],
        "quote_id": quoteId == null ? null : quoteId,
        "quote_number": quoteNumber == null ? null : quoteNumber,
        "shipment_number": shipmentNumber,
        "is_deleted": isDeleted == null ? null : isDeleted,
        "deleted_by": deletedBy,
        "deleted_at": deletedAt,
        "_id": id == null ? null : id,
        "inquiry_number": inquiryNumber == null ? null : inquiryNumber,
        "search_id": searchId == null ? null : searchId,
        "search_data": searchData == null ? null : searchData!.toJson(),
        "user": user == null ? null : user!.toJson(),
        "inquiry_source": inquirySource == null
            ? null
            : inquirySourceValues.reverse[inquirySource],
        "inquiry_raised_by": inquiryRaisedBy == null
            ? null
            : inquiryRaisedByValues.reverse[inquiryRaisedBy],
        "activity": activity == null ? null : activity,
        "status": status == null ? null : status,
        "inquiry_expiry_date": inquiryExpiryDate == null
            ? null
            : inquiryExpiryDate!.toIso8601String(),
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "update_at": updateAt == null ? null : updateAt!.toIso8601String(),
        "__v": v == null ? null : v,
        "additional_charges":
            additionalCharges == null ? null : additionalCharges!.toJson(),
      };
}

class AdditionalCharges {
  AdditionalCharges({
    this.selected,
    this.available,
  });

  List<dynamic>? selected;
  List<dynamic>? available;

  factory AdditionalCharges.fromJson(Map<String, dynamic> json) =>
      AdditionalCharges(
        selected: json["selected"] == null
            ? null
            : List<dynamic>.from(json["selected"].map((x) => x)),
        available: json["available"] == null
            ? null
            : List<dynamic>.from(json["available"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "selected": selected == null
            ? null
            : List<dynamic>.from(selected!.map((x) => x)),
        "available": available == null
            ? null
            : List<dynamic>.from(available!.map((x) => x)),
      };
}

class CurrentStatus {
  CurrentStatus({
    this.description,
    this.comment,
    this.user,
    this.statusAlias,
    this.status,
    this.colorCode,
    this.createdOn,
  });

  dynamic description;
  dynamic comment;
  User? user;
  String? statusAlias;
  String? status;
  String? colorCode;
  DateTime? createdOn;

  factory CurrentStatus.fromJson(Map<String, dynamic> json) => CurrentStatus(
        description: json["description"],
        comment: json["comment"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        statusAlias: json["status_alias"] == null ? null : json["status_alias"],
        status: json["status"] == null ? null : json["status"],
        colorCode: json["color_code"] == null ? null : json["color_code"],
        createdOn: json["created_on"] == null
            ? null
            : DateTime.parse(json["created_on"]),
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "comment": comment,
        "user": user == null ? null : user!.toJson(),
        "status_alias": statusAlias == null ? null : statusAlias,
        "status": status == null ? null : status,
        "color_code": colorCode == null ? null : colorCode,
        "created_on": createdOn == null ? null : createdOn!.toIso8601String(),
      };
}

class User {
  User({
    this.id,
    this.userType,
    this.email,
    this.userMobile,
    this.userMobileCode,
    this.userMobileCountry,
    this.userAlternateNumber,
    this.userFirstName,
    this.userLastName,
    this.userDob,
    this.activeStatus,
    this.createdAt,
    this.userCompanyId,
    this.userCompanyName,
    this.createdBy,
    this.userRegionId,
    this.userBaseCurrency,
    this.userAddress,
    this.isGodUser,
    this.isSuperUser,
    this.profile,
    this.domain,
    this.advancedSearch,
    this.allowPersonalEmail,
    this.personalEmailId,
    this.sendCc,
    this.emailSignature,
    this.emailSignatureRequired,
    this.ccEmail,
    this.roleId,
    this.team,
    this.tags,
    this.locations,
    this.department,
    this.designation,
    this.teamManager,
    this.approvalRequired,
    this.accessKey,
    this.approvalRequiredBy,
    this.otp,
    this.otpExpiry,
    this.isSalesCordinator,
    this.erpData,
    this.isPricingUser,
    this.customerProfileCode,
    this.salesCallCode,
    this.ctcId,
    this.branchId,
    this.salespersonCode,
    this.erpAssignedShipperFetched,
    this.erpAssignedSalesUserFetched,
    this.allowEdit,
    this.autoInquiryFcl,
    this.autoInquiryLcl,
    this.autoInquiryAir,
    this.source,
    this.company,
    this.role,
    this.type,
  });

  String? id;
  String? userType;
  Email? email;
  UserMobile? userMobile;
  UserMobileCo? userMobileCode;
  UserMobileCo? userMobileCountry;
  dynamic userAlternateNumber;
  UserFirstName? userFirstName;
  UserLastName? userLastName;
  dynamic userDob;
  int? activeStatus;
  DateTime? createdAt;
  String? userCompanyId;
  CompanyName? userCompanyName;
  String? createdBy;
  dynamic userRegionId;
  ECurrency? userBaseCurrency;
  dynamic userAddress;
  int? isGodUser;
  int? isSuperUser;
  dynamic profile;
  CompanyDomain? domain;
  int? advancedSearch;
  int? allowPersonalEmail;
  String? personalEmailId;
  int? sendCc;
  String? emailSignature;
  int? emailSignatureRequired;
  List<CcEmail>? ccEmail;
  String? roleId;
  dynamic team;
  dynamic tags;
  dynamic locations;
  Department? department;
  Designation? designation;
  int? teamManager;
  int? approvalRequired;
  dynamic accessKey;
  dynamic approvalRequiredBy;
  int? otp;
  dynamic otpExpiry;
  int? isSalesCordinator;
  dynamic erpData;
  int? isPricingUser;
  String? customerProfileCode;
  String? salesCallCode;
  String? ctcId;
  dynamic branchId;
  String? salespersonCode;
  int? erpAssignedShipperFetched;
  int? erpAssignedSalesUserFetched;
  int? allowEdit;
  int? autoInquiryFcl;
  int? autoInquiryLcl;
  int? autoInquiryAir;
  UserSource? source;
  Company? company;
  Role? role;
  TypeClass? type;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"] == null ? null : json["id"],
        userType: json["user_type"] == null ? null : json["user_type"],
        email: json["email"] == null ? null : emailValues.map[json["email"]],
        userMobile: json["user_mobile"] == null
            ? null
            : userMobileValues.map[json["user_mobile"]],
        userMobileCode: json["user_mobile_code"] == null
            ? null
            : userMobileCoValues.map[json["user_mobile_code"]],
        userMobileCountry: json["user_mobile_country"] == null
            ? null
            : userMobileCoValues.map[json["user_mobile_country"]],
        userAlternateNumber: json["user_alternate_number"],
        userFirstName: json["user_first_name"] == null
            ? null
            : userFirstNameValues.map[json["user_first_name"]],
        userLastName: json["user_last_name"] == null
            ? null
            : userLastNameValues.map[json["user_last_name"]],
        userDob: json["user_dob"],
        activeStatus:
            json["active_status"] == null ? null : json["active_status"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        userCompanyId:
            json["user_company_id"] == null ? null : json["user_company_id"],
        userCompanyName: json["user_company_name"] == null
            ? null
            : companyNameValues.map[json["user_company_name"]],
        createdBy: json["created_by"] == null ? null : json["created_by"],
        userRegionId: json["user_region_id"],
        userBaseCurrency: json["user_base_currency"] == null
            ? null
            : eCurrencyValues.map[json["user_base_currency"]],
        userAddress: json["user_address"],
        isGodUser: json["is_god_user"] == null ? null : json["is_god_user"],
        isSuperUser:
            json["is_super_user"] == null ? null : json["is_super_user"],
        profile: json["profile"],
        domain: json["domain"] == null
            ? null
            : companyDomainValues.map[json["domain"]],
        advancedSearch:
            json["advanced_search"] == null ? null : json["advanced_search"],
        allowPersonalEmail: json["allow_personal_email"] == null
            ? null
            : json["allow_personal_email"],
        personalEmailId: json["personal_email_id"] == null
            ? null
            : json["personal_email_id"],
        sendCc: json["send_cc"] == null ? null : json["send_cc"],
        emailSignature:
            json["email_signature"] == null ? null : json["email_signature"],
        emailSignatureRequired: json["email_signature_required"] == null
            ? null
            : json["email_signature_required"],
        ccEmail: json["cc_email"] == null
            ? null
            : List<CcEmail>.from(
                json["cc_email"].map((x) => ccEmailValues.map[x])),
        roleId: json["role_id"] == null ? null : json["role_id"],
        team: json["team"],
        tags: json["tags"],
        locations: json["locations"],
        department: json["department"] == null
            ? null
            : departmentValues.map[json["department"]],
        designation: json["designation"] == null
            ? null
            : designationValues.map[json["designation"]],
        teamManager: json["team_manager"] == null ? null : json["team_manager"],
        approvalRequired: json["approval_required"] == null
            ? null
            : json["approval_required"],
        accessKey: json["access_key"],
        approvalRequiredBy: json["approval_required_by"],
        otp: json["otp"] == null ? null : json["otp"],
        otpExpiry: json["otp_expiry"],
        isSalesCordinator: json["is_sales_cordinator"] == null
            ? null
            : json["is_sales_cordinator"],
        erpData: json["erp_data"],
        isPricingUser:
            json["is_pricing_user"] == null ? null : json["is_pricing_user"],
        customerProfileCode: json["customer_profile_code"] == null
            ? null
            : json["customer_profile_code"],
        salesCallCode:
            json["sales_call_code"] == null ? null : json["sales_call_code"],
        ctcId: json["ctc_id"] == null ? null : json["ctc_id"],
        branchId: json["branch_id"],
        salespersonCode:
            json["salesperson_code"] == null ? null : json["salesperson_code"],
        erpAssignedShipperFetched: json["erp_assigned_shipper_fetched"] == null
            ? null
            : json["erp_assigned_shipper_fetched"],
        erpAssignedSalesUserFetched:
            json["erp_assigned_sales_user_fetched"] == null
                ? null
                : json["erp_assigned_sales_user_fetched"],
        allowEdit: json["allow_edit"] == null ? null : json["allow_edit"],
        autoInquiryFcl:
            json["auto_inquiry_fcl"] == null ? null : json["auto_inquiry_fcl"],
        autoInquiryLcl:
            json["auto_inquiry_lcl"] == null ? null : json["auto_inquiry_lcl"],
        autoInquiryAir:
            json["auto_inquiry_air"] == null ? null : json["auto_inquiry_air"],
        source: json["source"] == null
            ? null
            : userSourceValues.map[json["source"]],
        company:
            json["company"] == null ? null : Company.fromJson(json["company"]),
        role: json["role"] == null ? null : Role.fromJson(json["role"]),
        type: json["type"] == null ? null : TypeClass.fromJson(json["type"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "user_type": userType == null ? null : userType,
        "email": email == null ? null : emailValues.reverse[email],
        "user_mobile":
            userMobile == null ? null : userMobileValues.reverse[userMobile],
        "user_mobile_code": userMobileCode == null
            ? null
            : userMobileCoValues.reverse[userMobileCode],
        "user_mobile_country": userMobileCountry == null
            ? null
            : userMobileCoValues.reverse[userMobileCountry],
        "user_alternate_number": userAlternateNumber,
        "user_first_name": userFirstName == null
            ? null
            : userFirstNameValues.reverse[userFirstName],
        "user_last_name": userLastName == null
            ? null
            : userLastNameValues.reverse[userLastName],
        "user_dob": userDob,
        "active_status": activeStatus == null ? null : activeStatus,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "user_company_id": userCompanyId == null ? null : userCompanyId,
        "user_company_name": userCompanyName == null
            ? null
            : companyNameValues.reverse[userCompanyName],
        "created_by": createdBy == null ? null : createdBy,
        "user_region_id": userRegionId,
        "user_base_currency": userBaseCurrency == null
            ? null
            : eCurrencyValues.reverse[userBaseCurrency],
        "user_address": userAddress,
        "is_god_user": isGodUser == null ? null : isGodUser,
        "is_super_user": isSuperUser == null ? null : isSuperUser,
        "profile": profile,
        "domain": domain == null ? null : companyDomainValues.reverse[domain],
        "advanced_search": advancedSearch == null ? null : advancedSearch,
        "allow_personal_email":
            allowPersonalEmail == null ? null : allowPersonalEmail,
        "personal_email_id": personalEmailId == null ? null : personalEmailId,
        "send_cc": sendCc == null ? null : sendCc,
        "email_signature": emailSignature == null ? null : emailSignature,
        "email_signature_required":
            emailSignatureRequired == null ? null : emailSignatureRequired,
        "cc_email": ccEmail == null
            ? null
            : List<dynamic>.from(ccEmail!.map((x) => ccEmailValues.reverse[x])),
        "role_id": roleId == null ? null : roleId,
        "team": team,
        "tags": tags,
        "locations": locations,
        "department":
            department == null ? null : departmentValues.reverse[department],
        "designation":
            designation == null ? null : designationValues.reverse[designation],
        "team_manager": teamManager == null ? null : teamManager,
        "approval_required": approvalRequired == null ? null : approvalRequired,
        "access_key": accessKey,
        "approval_required_by": approvalRequiredBy,
        "otp": otp == null ? null : otp,
        "otp_expiry": otpExpiry,
        "is_sales_cordinator":
            isSalesCordinator == null ? null : isSalesCordinator,
        "erp_data": erpData,
        "is_pricing_user": isPricingUser == null ? null : isPricingUser,
        "customer_profile_code":
            customerProfileCode == null ? null : customerProfileCode,
        "sales_call_code": salesCallCode == null ? null : salesCallCode,
        "ctc_id": ctcId == null ? null : ctcId,
        "branch_id": branchId,
        "salesperson_code": salespersonCode == null ? null : salespersonCode,
        "erp_assigned_shipper_fetched": erpAssignedShipperFetched == null
            ? null
            : erpAssignedShipperFetched,
        "erp_assigned_sales_user_fetched": erpAssignedSalesUserFetched == null
            ? null
            : erpAssignedSalesUserFetched,
        "allow_edit": allowEdit == null ? null : allowEdit,
        "auto_inquiry_fcl": autoInquiryFcl == null ? null : autoInquiryFcl,
        "auto_inquiry_lcl": autoInquiryLcl == null ? null : autoInquiryLcl,
        "auto_inquiry_air": autoInquiryAir == null ? null : autoInquiryAir,
        "source": source == null ? null : userSourceValues.reverse[source],
        "company": company == null ? null : company!.toJson(),
        "role": role == null ? null : role!.toJson(),
        "type": type == null ? null : type!.toJson(),
      };
}

enum CcEmail { FWDADMN_TEST_COM, GOPI_TEST_COM, SANMUGAVEL_GMAIL_COM }

final ccEmailValues = EnumValues({
  "fwdadmn@test.com": CcEmail.FWDADMN_TEST_COM,
  "Gopi@test.com": CcEmail.GOPI_TEST_COM,
  "sanmugavel@gmail.com": CcEmail.SANMUGAVEL_GMAIL_COM
});

class Company {
  Company({
    this.id,
    this.companyName,
    this.companyAddress,
    this.companyLogo,
    this.originalLogo,
    this.createdBy,
    this.createdAt,
    this.companyConstitution,
    this.companyEmail,
    this.companyPhoneNumber,
    this.state,
    this.country,
    this.postalCode,
    this.dateOfEstablishment,
    this.numberOfEmployees,
    this.companyTurnover,
    this.type,
    this.vendorId,
    this.domain,
    this.initialShipQuoteNumbers,
    this.iataCommission,
    this.incentive,
    this.masterRateText,
    this.masterRibbonUrl,
    this.iecNumber,
    this.iecVerificationStatus,
    this.source,
    this.companyPhoneCode,
    this.companyPhoneCountry,
    this.customerProfileCode,
    this.createdByCompany,
    this.entityType,
    this.checkFeatureQuota,
    this.compnayTurnover,
    this.iataCommision,
    this.userCount,
    this.updatedAt,
    this.deletedAt,
  });

  String? id;
  CompanyName? companyName;
  String? companyAddress;
  String? companyLogo;
  String? originalLogo;
  String? createdBy;
  DateTime? createdAt;
  CompanyConstitution? companyConstitution;
  CompanyEmail? companyEmail;
  String? companyPhoneNumber;
  State? state;
  CompanyCountry? country;
  String? postalCode;
  DateTime? dateOfEstablishment;
  String? numberOfEmployees;
  dynamic companyTurnover;
  CreatedForEnum? type;
  String? vendorId;
  CompanyDomain? domain;
  InitialShipQuoteNumbers? initialShipQuoteNumbers;
  int? iataCommission;
  dynamic incentive;
  MasterRateText? masterRateText;
  String? masterRibbonUrl;
  dynamic iecNumber;
  int? iecVerificationStatus;
  CompanySource? source;
  String? companyPhoneCode;
  CompanyPhoneCountry? companyPhoneCountry;
  dynamic customerProfileCode;
  String? createdByCompany;
  EntityType? entityType;
  dynamic checkFeatureQuota;
  dynamic compnayTurnover;
  dynamic iataCommision;
  int? userCount;
  DateTime? updatedAt;
  dynamic deletedAt;

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        id: json["id"] == null ? null : json["id"],
        companyName: json["company_name"] == null
            ? null
            : companyNameValues.map[json["company_name"]],
        companyAddress:
            json["company_address"] == null ? null : json["company_address"],
        companyLogo: json["company_logo"] == null ? null : json["company_logo"],
        originalLogo:
            json["original_logo"] == null ? null : json["original_logo"],
        createdBy: json["created_by"] == null ? null : json["created_by"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        companyConstitution: json["company_constitution"] == null
            ? null
            : companyConstitutionValues.map[json["company_constitution"]],
        companyEmail: json["company_email"] == null
            ? null
            : companyEmailValues.map[json["company_email"]],
        companyPhoneNumber: json["company_phone_number"] == null
            ? null
            : json["company_phone_number"],
        state: json["state"] == null ? null : stateValues.map[json["state"]],
        country: json["country"] == null
            ? null
            : companyCountryValues.map[json["country"]],
        postalCode: json["postal_code"] == null ? null : json["postal_code"],
        dateOfEstablishment: json["date_of_establishment"] == null
            ? null
            : DateTime.parse(json["date_of_establishment"]),
        numberOfEmployees: json["number_of_employees"] == null
            ? null
            : json["number_of_employees"],
        companyTurnover: json["company_turnover"],
        type: json["type"] == null
            ? null
            : createdForEnumValues.map[json["type"]],
        vendorId: json["vendor_id"] == null ? null : json["vendor_id"],
        domain: json["domain"] == null
            ? null
            : companyDomainValues.map[json["domain"]],
        initialShipQuoteNumbers: json["initial_ship_quote_numbers"] == null
            ? null
            : initialShipQuoteNumbersValues
                .map[json["initial_ship_quote_numbers"]],
        iataCommission:
            json["iata_commission"] == null ? null : json["iata_commission"],
        incentive: json["incentive"],
        masterRateText: json["master_rate_text"] == null
            ? null
            : masterRateTextValues.map[json["master_rate_text"]],
        masterRibbonUrl: json["master_ribbon_url"] == null
            ? null
            : json["master_ribbon_url"],
        iecNumber: json["iec_number"],
        iecVerificationStatus: json["iec_verification_status"] == null
            ? null
            : json["iec_verification_status"],
        source: json["source"] == null
            ? null
            : companySourceValues.map[json["source"]],
        companyPhoneCode: json["company_phone_code"] == null
            ? null
            : json["company_phone_code"],
        companyPhoneCountry: json["company_phone_country"] == null
            ? null
            : companyPhoneCountryValues.map[json["company_phone_country"]],
        customerProfileCode: json["customer_profile_code"],
        createdByCompany: json["created_by_company"] == null
            ? null
            : json["created_by_company"],
        entityType: json["entity_type"] == null
            ? null
            : entityTypeValues.map[json["entity_type"]],
        checkFeatureQuota: json["check_feature_quota"],
        compnayTurnover: json["compnay_turnover"],
        iataCommision: json["iata_commision"],
        userCount: json["user_count"] == null ? null : json["user_count"],
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "company_name":
            companyName == null ? null : companyNameValues.reverse[companyName],
        "company_address": companyAddress == null ? null : companyAddress,
        "company_logo": companyLogo == null ? null : companyLogo,
        "original_logo": originalLogo == null ? null : originalLogo,
        "created_by": createdBy == null ? null : createdBy,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "company_constitution": companyConstitution == null
            ? null
            : companyConstitutionValues.reverse[companyConstitution],
        "company_email": companyEmail == null
            ? null
            : companyEmailValues.reverse[companyEmail],
        "company_phone_number":
            companyPhoneNumber == null ? null : companyPhoneNumber,
        "state": state == null ? null : stateValues.reverse[state],
        "country":
            country == null ? null : companyCountryValues.reverse[country],
        "postal_code": postalCode == null ? null : postalCode,
        "date_of_establishment": dateOfEstablishment == null
            ? null
            : "${dateOfEstablishment!.year.toString().padLeft(4, '0')}-${dateOfEstablishment!.month.toString().padLeft(2, '0')}-${dateOfEstablishment!.day.toString().padLeft(2, '0')}",
        "number_of_employees":
            numberOfEmployees == null ? null : numberOfEmployees,
        "company_turnover": companyTurnover,
        "type": type == null ? null : createdForEnumValues.reverse[type],
        "vendor_id": vendorId == null ? null : vendorId,
        "domain": domain == null ? null : companyDomainValues.reverse[domain],
        "initial_ship_quote_numbers": initialShipQuoteNumbers == null
            ? null
            : initialShipQuoteNumbersValues.reverse[initialShipQuoteNumbers],
        "iata_commission": iataCommission == null ? null : iataCommission,
        "incentive": incentive,
        "master_rate_text": masterRateText == null
            ? null
            : masterRateTextValues.reverse[masterRateText],
        "master_ribbon_url": masterRibbonUrl == null ? null : masterRibbonUrl,
        "iec_number": iecNumber,
        "iec_verification_status":
            iecVerificationStatus == null ? null : iecVerificationStatus,
        "source": source == null ? null : companySourceValues.reverse[source],
        "company_phone_code":
            companyPhoneCode == null ? null : companyPhoneCode,
        "company_phone_country": companyPhoneCountry == null
            ? null
            : companyPhoneCountryValues.reverse[companyPhoneCountry],
        "customer_profile_code": customerProfileCode,
        "created_by_company":
            createdByCompany == null ? null : createdByCompany,
        "entity_type":
            entityType == null ? null : entityTypeValues.reverse[entityType],
        "check_feature_quota": checkFeatureQuota,
        "compnay_turnover": compnayTurnover,
        "iata_commision": iataCommision,
        "user_count": userCount == null ? null : userCount,
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "deleted_at": deletedAt,
      };
}

enum CompanyConstitution { PUBLIC_LTD }

final companyConstitutionValues =
    EnumValues({"public_ltd": CompanyConstitution.PUBLIC_LTD});

enum CompanyEmail { FWDADMN01_GMAIL_CO_IN }

final companyEmailValues =
    EnumValues({"fwdadmn01@gmail.co.in": CompanyEmail.FWDADMN01_GMAIL_CO_IN});

enum CompanyName { FREIGHTIFY_BRO_PVT_LTD_233, BEAM_BEAMAS }

final companyNameValues = EnumValues({
  "Beam Beamas": CompanyName.BEAM_BEAMAS,
  "Freightify Bro Pvt.Ltd &#233;": CompanyName.FREIGHTIFY_BRO_PVT_LTD_233
});

enum CompanyPhoneCountry { CA, EMPTY }

final companyPhoneCountryValues =
    EnumValues({"CA": CompanyPhoneCountry.CA, "": CompanyPhoneCountry.EMPTY});

enum CompanyCountry { JAPAN }

final companyCountryValues = EnumValues({"Japan": CompanyCountry.JAPAN});

enum CompanyDomain { FWDA_STAGINGSHIP_FREIGHTBRO_COM }

final companyDomainValues = EnumValues({
  "fwda.stagingship.freightbro.com":
      CompanyDomain.FWDA_STAGINGSHIP_FREIGHTBRO_COM
});

enum EntityType { SHIPPER }

final entityTypeValues = EnumValues({"shipper": EntityType.SHIPPER});

enum InitialShipQuoteNumbers { FB }

final initialShipQuoteNumbersValues =
    EnumValues({"FB": InitialShipQuoteNumbers.FB});

enum MasterRateText { FWD_MASTER }

final masterRateTextValues =
    EnumValues({"FWD MASTER": MasterRateText.FWD_MASTER});

enum CompanySource { PORTAL, PLATFORM }

final companySourceValues = EnumValues(
    {"PLATFORM": CompanySource.PLATFORM, "PORTAL": CompanySource.PORTAL});

enum State { BENGALURU }

final stateValues = EnumValues({"Bengaluru": State.BENGALURU});

enum CreatedForEnum { FORWARDER, SHIPPER }

final createdForEnumValues = EnumValues(
    {"FORWARDER": CreatedForEnum.FORWARDER, "SHIPPER": CreatedForEnum.SHIPPER});

enum Department { THE_5_D833_FC8_C487_E94077997_E09 }

final departmentValues = EnumValues(
    {"5d833fc8c487e94077997e09": Department.THE_5_D833_FC8_C487_E94077997_E09});

enum Designation { THE_5_D834550_C487_E94077997_E5_A }

final designationValues = EnumValues({
  "5d834550c487e94077997e5a": Designation.THE_5_D834550_C487_E94077997_E5_A
});

enum Email {
  FWDADMN01_GMAIL_COM,
  GOPINATH_KUMAR_FREIGHTBRO_COM,
  PRAKASHKUMAR_FREIGHTIFY_COM
}

final emailValues = EnumValues({
  "fwdadmn01@gmail.com": Email.FWDADMN01_GMAIL_COM,
  "gopinath.kumar@freightbro.com": Email.GOPINATH_KUMAR_FREIGHTBRO_COM,
  "prakashkumar@freightify.com": Email.PRAKASHKUMAR_FREIGHTIFY_COM
});

class Role {
  Role({
    this.id,
    this.name,
    this.description,
    this.domain,
    this.type,
    this.createdFor,
    this.isSuperRole,
    this.createdAt,
  });

  String? id;
  Name? name;
  dynamic description;
  RoleDomain? domain;
  PurpleType? type;
  CreatedForEnum? createdFor;
  int? isSuperRole;
  DateTime? createdAt;

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : nameValues.map[json["name"]],
        description: json["description"],
        domain: json["domain"] == null
            ? null
            : roleDomainValues.map[json["domain"]],
        type: json["type"] == null ? null : purpleTypeValues.map[json["type"]],
        createdFor: json["created_for"] == null
            ? null
            : createdForEnumValues.map[json["created_for"]],
        isSuperRole:
            json["is_super_role"] == null ? null : json["is_super_role"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : nameValues.reverse[name],
        "description": description,
        "domain": domain == null ? null : roleDomainValues.reverse[domain],
        "type": type == null ? null : purpleTypeValues.reverse[type],
        "created_for": createdFor == null
            ? null
            : createdForEnumValues.reverse[createdFor],
        "is_super_role": isSuperRole == null ? null : isSuperRole,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
      };
}

enum RoleDomain { STAGINGSHIP_FREIGHTBRO_COM }

final roleDomainValues = EnumValues(
    {"stagingship.freightbro.com": RoleDomain.STAGINGSHIP_FREIGHTBRO_COM});

enum Name { ADMIN }

final nameValues = EnumValues({"ADMIN": Name.ADMIN});

enum PurpleType { GLOBAL }

final purpleTypeValues = EnumValues({"GLOBAL": PurpleType.GLOBAL});

enum UserSource { API }

final userSourceValues = EnumValues({"API": UserSource.API});

class TypeClass {
  TypeClass({
    this.id,
    this.userTypeCode,
    this.userTypeName,
    this.userCategory,
  });

  String? id;
  String? userTypeCode;
  Name? userTypeName;
  CreatedForEnum? userCategory;

  factory TypeClass.fromJson(Map<String, dynamic> json) => TypeClass(
        id: json["id"] == null ? null : json["id"],
        userTypeCode:
            json["user_type_code"] == null ? null : json["user_type_code"],
        userTypeName: json["user_type_name"] == null
            ? null
            : nameValues.map[json["user_type_name"]],
        userCategory: json["user_category"] == null
            ? null
            : createdForEnumValues.map[json["user_category"]],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "user_type_code": userTypeCode == null ? null : userTypeCode,
        "user_type_name":
            userTypeName == null ? null : nameValues.reverse[userTypeName],
        "user_category": userCategory == null
            ? null
            : createdForEnumValues.reverse[userCategory],
      };
}

enum ECurrency { INR, USD }

final eCurrencyValues =
    EnumValues({"INR": ECurrency.INR, "USD": ECurrency.USD});

enum UserFirstName { PRODUCT_TEAM, DELHIVERY_ADMI_241, PRAKASH }

final userFirstNameValues = EnumValues({
  "DELHIVERY admi&#241;": UserFirstName.DELHIVERY_ADMI_241,
  "Prakash": UserFirstName.PRAKASH,
  "Product Team": UserFirstName.PRODUCT_TEAM
});

enum UserLastName { SWAMI_NATHAN, DA_233_MON, KUMAR }

final userLastNameValues = EnumValues({
  "da&#233;mon": UserLastName.DA_233_MON,
  "Kumar": UserLastName.KUMAR,
  "Swami Nathan": UserLastName.SWAMI_NATHAN
});

enum UserMobile {
  THE_019812333312,
  THE_9445272_U187_TR623_T7_Y8_EU9327_T,
  THE_09507831754
}

final userMobileValues = EnumValues({
  "+019812333312": UserMobile.THE_019812333312,
  "09507831754": UserMobile.THE_09507831754,
  "9445272u187tr623t7y8eu9327t":
      UserMobile.THE_9445272_U187_TR623_T7_Y8_EU9327_T
});

enum UserMobileCo { NULL, EMPTY }

final userMobileCoValues =
    EnumValues({"": UserMobileCo.EMPTY, "null": UserMobileCo.NULL});

enum InquiryRaisedBy { SALES_USER }

final inquiryRaisedByValues =
    EnumValues({"SALES_USER": InquiryRaisedBy.SALES_USER});

enum InquirySource { SEARCH }

final inquirySourceValues = EnumValues({"SEARCH": InquirySource.SEARCH});

enum InquiryTrigger { WITH_RATES, NO_RATES }

final inquiryTriggerValues = EnumValues({
  "NO_RATES": InquiryTrigger.NO_RATES,
  "WITH_RATES": InquiryTrigger.WITH_RATES
});

class SalesUser {
  SalesUser({
    this.id,
    this.userType,
    this.email,
    this.userMobile,
    this.userMobileCode,
    this.userMobileCountry,
    this.userAlternateNumber,
    this.userFirstName,
    this.userLastName,
    this.userDob,
    this.activeStatus,
    this.createdAt,
    this.userCompanyId,
    this.userCompanyName,
    this.createdBy,
    this.userRegionId,
    this.userBaseCurrency,
    this.userAddress,
    this.isGodUser,
    this.isSuperUser,
    this.profile,
    this.domain,
    this.advancedSearch,
    this.allowPersonalEmail,
    this.personalEmailId,
    this.sendCc,
    this.emailSignature,
    this.emailSignatureRequired,
    this.ccEmail,
    this.roleId,
    this.team,
    this.tags,
    this.locations,
    this.department,
    this.designation,
    this.teamManager,
    this.approvalRequired,
    this.accessKey,
    this.approvalRequiredBy,
    this.otp,
    this.otpExpiry,
    this.isSalesCordinator,
    this.erpData,
    this.isPricingUser,
    this.customerProfileCode,
    this.salesCallCode,
    this.ctcId,
    this.branchId,
    this.salespersonCode,
    this.erpAssignedShipperFetched,
    this.erpAssignedSalesUserFetched,
    this.allowEdit,
    this.autoInquiryFcl,
    this.autoInquiryLcl,
    this.autoInquiryAir,
    this.source,
    this.company,
    this.role,
    this.type,
    this.solutionType,
    this.mailgunDomain,
  });

  String? id;
  String? userType;
  Email? email;
  UserMobile? userMobile;
  UserMobileCo? userMobileCode;
  UserMobileCo? userMobileCountry;
  dynamic userAlternateNumber;
  UserFirstName? userFirstName;
  UserLastName? userLastName;
  dynamic userDob;
  int? activeStatus;
  DateTime? createdAt;
  String? userCompanyId;
  CompanyName? userCompanyName;
  String? createdBy;
  dynamic userRegionId;
  ECurrency? userBaseCurrency;
  dynamic userAddress;
  int? isGodUser;
  int? isSuperUser;
  dynamic profile;
  CompanyDomain? domain;
  int? advancedSearch;
  int? allowPersonalEmail;
  String? personalEmailId;
  int? sendCc;
  String? emailSignature;
  int? emailSignatureRequired;
  List<CcEmail>? ccEmail;
  String? roleId;
  dynamic team;
  dynamic tags;
  dynamic locations;
  Department? department;
  Designation? designation;
  int? teamManager;
  int? approvalRequired;
  dynamic accessKey;
  dynamic approvalRequiredBy;
  int? otp;
  dynamic otpExpiry;
  int? isSalesCordinator;
  dynamic erpData;
  int? isPricingUser;
  String? customerProfileCode;
  String? salesCallCode;
  String? ctcId;
  dynamic branchId;
  String? salespersonCode;
  int? erpAssignedShipperFetched;
  int? erpAssignedSalesUserFetched;
  int? allowEdit;
  int? autoInquiryFcl;
  int? autoInquiryLcl;
  int? autoInquiryAir;
  UserSource? source;
  Company? company;
  Role? role;
  TypeClass? type;
  SolutionType? solutionType;
  MailgunDomain? mailgunDomain;

  factory SalesUser.fromJson(Map<String, dynamic> json) => SalesUser(
        id: json["id"] == null ? null : json["id"],
        userType: json["user_type"] == null ? null : json["user_type"],
        email: json["email"] == null ? null : emailValues.map[json["email"]],
        userMobile: json["user_mobile"] == null
            ? null
            : userMobileValues.map[json["user_mobile"]],
        userMobileCode: json["user_mobile_code"] == null
            ? null
            : userMobileCoValues.map[json["user_mobile_code"]],
        userMobileCountry: json["user_mobile_country"] == null
            ? null
            : userMobileCoValues.map[json["user_mobile_country"]],
        userAlternateNumber: json["user_alternate_number"],
        userFirstName: json["user_first_name"] == null
            ? null
            : userFirstNameValues.map[json["user_first_name"]],
        userLastName: json["user_last_name"] == null
            ? null
            : userLastNameValues.map[json["user_last_name"]],
        userDob: json["user_dob"],
        activeStatus:
            json["active_status"] == null ? null : json["active_status"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        userCompanyId:
            json["user_company_id"] == null ? null : json["user_company_id"],
        userCompanyName: json["user_company_name"] == null
            ? null
            : companyNameValues.map[json["user_company_name"]],
        createdBy: json["created_by"] == null ? null : json["created_by"],
        userRegionId: json["user_region_id"],
        userBaseCurrency: json["user_base_currency"] == null
            ? null
            : eCurrencyValues.map[json["user_base_currency"]],
        userAddress: json["user_address"],
        isGodUser: json["is_god_user"] == null ? null : json["is_god_user"],
        isSuperUser:
            json["is_super_user"] == null ? null : json["is_super_user"],
        profile: json["profile"],
        domain: json["domain"] == null
            ? null
            : companyDomainValues.map[json["domain"]],
        advancedSearch:
            json["advanced_search"] == null ? null : json["advanced_search"],
        allowPersonalEmail: json["allow_personal_email"] == null
            ? null
            : json["allow_personal_email"],
        personalEmailId: json["personal_email_id"] == null
            ? null
            : json["personal_email_id"],
        sendCc: json["send_cc"] == null ? null : json["send_cc"],
        emailSignature:
            json["email_signature"] == null ? null : json["email_signature"],
        emailSignatureRequired: json["email_signature_required"] == null
            ? null
            : json["email_signature_required"],
        ccEmail: json["cc_email"] == null
            ? null
            : List<CcEmail>.from(
                json["cc_email"].map((x) => ccEmailValues.map[x])),
        roleId: json["role_id"] == null ? null : json["role_id"],
        team: json["team"],
        tags: json["tags"],
        locations: json["locations"],
        department: json["department"] == null
            ? null
            : departmentValues.map[json["department"]],
        designation: json["designation"] == null
            ? null
            : designationValues.map[json["designation"]],
        teamManager: json["team_manager"] == null ? null : json["team_manager"],
        approvalRequired: json["approval_required"] == null
            ? null
            : json["approval_required"],
        accessKey: json["access_key"],
        approvalRequiredBy: json["approval_required_by"],
        otp: json["otp"] == null ? null : json["otp"],
        otpExpiry: json["otp_expiry"],
        isSalesCordinator: json["is_sales_cordinator"] == null
            ? null
            : json["is_sales_cordinator"],
        erpData: json["erp_data"],
        isPricingUser:
            json["is_pricing_user"] == null ? null : json["is_pricing_user"],
        customerProfileCode: json["customer_profile_code"] == null
            ? null
            : json["customer_profile_code"],
        salesCallCode:
            json["sales_call_code"] == null ? null : json["sales_call_code"],
        ctcId: json["ctc_id"] == null ? null : json["ctc_id"],
        branchId: json["branch_id"],
        salespersonCode:
            json["salesperson_code"] == null ? null : json["salesperson_code"],
        erpAssignedShipperFetched: json["erp_assigned_shipper_fetched"] == null
            ? null
            : json["erp_assigned_shipper_fetched"],
        erpAssignedSalesUserFetched:
            json["erp_assigned_sales_user_fetched"] == null
                ? null
                : json["erp_assigned_sales_user_fetched"],
        allowEdit: json["allow_edit"] == null ? null : json["allow_edit"],
        autoInquiryFcl:
            json["auto_inquiry_fcl"] == null ? null : json["auto_inquiry_fcl"],
        autoInquiryLcl:
            json["auto_inquiry_lcl"] == null ? null : json["auto_inquiry_lcl"],
        autoInquiryAir:
            json["auto_inquiry_air"] == null ? null : json["auto_inquiry_air"],
        source: json["source"] == null
            ? null
            : userSourceValues.map[json["source"]],
        company:
            json["company"] == null ? null : Company.fromJson(json["company"]),
        role: json["role"] == null ? null : Role.fromJson(json["role"]),
        type: json["type"] == null ? null : TypeClass.fromJson(json["type"]),
        solutionType: json["solution_type"] == null
            ? null
            : solutionTypeValues.map[json["solution_type"]],
        mailgunDomain: json["mailgun_domain"] == null
            ? null
            : mailgunDomainValues.map[json["mailgun_domain"]],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "user_type": userType == null ? null : userType,
        "email": email == null ? null : emailValues.reverse[email],
        "user_mobile":
            userMobile == null ? null : userMobileValues.reverse[userMobile],
        "user_mobile_code": userMobileCode == null
            ? null
            : userMobileCoValues.reverse[userMobileCode],
        "user_mobile_country": userMobileCountry == null
            ? null
            : userMobileCoValues.reverse[userMobileCountry],
        "user_alternate_number": userAlternateNumber,
        "user_first_name": userFirstName == null
            ? null
            : userFirstNameValues.reverse[userFirstName],
        "user_last_name": userLastName == null
            ? null
            : userLastNameValues.reverse[userLastName],
        "user_dob": userDob,
        "active_status": activeStatus == null ? null : activeStatus,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "user_company_id": userCompanyId == null ? null : userCompanyId,
        "user_company_name": userCompanyName == null
            ? null
            : companyNameValues.reverse[userCompanyName],
        "created_by": createdBy == null ? null : createdBy,
        "user_region_id": userRegionId,
        "user_base_currency": userBaseCurrency == null
            ? null
            : eCurrencyValues.reverse[userBaseCurrency],
        "user_address": userAddress,
        "is_god_user": isGodUser == null ? null : isGodUser,
        "is_super_user": isSuperUser == null ? null : isSuperUser,
        "profile": profile,
        "domain": domain == null ? null : companyDomainValues.reverse[domain],
        "advanced_search": advancedSearch == null ? null : advancedSearch,
        "allow_personal_email":
            allowPersonalEmail == null ? null : allowPersonalEmail,
        "personal_email_id": personalEmailId == null ? null : personalEmailId,
        "send_cc": sendCc == null ? null : sendCc,
        "email_signature": emailSignature == null ? null : emailSignature,
        "email_signature_required":
            emailSignatureRequired == null ? null : emailSignatureRequired,
        "cc_email": ccEmail == null
            ? null
            : List<dynamic>.from(ccEmail!.map((x) => ccEmailValues.reverse[x])),
        "role_id": roleId == null ? null : roleId,
        "team": team,
        "tags": tags,
        "locations": locations,
        "department":
            department == null ? null : departmentValues.reverse[department],
        "designation":
            designation == null ? null : designationValues.reverse[designation],
        "team_manager": teamManager == null ? null : teamManager,
        "approval_required": approvalRequired == null ? null : approvalRequired,
        "access_key": accessKey,
        "approval_required_by": approvalRequiredBy,
        "otp": otp == null ? null : otp,
        "otp_expiry": otpExpiry,
        "is_sales_cordinator":
            isSalesCordinator == null ? null : isSalesCordinator,
        "erp_data": erpData,
        "is_pricing_user": isPricingUser == null ? null : isPricingUser,
        "customer_profile_code":
            customerProfileCode == null ? null : customerProfileCode,
        "sales_call_code": salesCallCode == null ? null : salesCallCode,
        "ctc_id": ctcId == null ? null : ctcId,
        "branch_id": branchId,
        "salesperson_code": salespersonCode == null ? null : salespersonCode,
        "erp_assigned_shipper_fetched": erpAssignedShipperFetched == null
            ? null
            : erpAssignedShipperFetched,
        "erp_assigned_sales_user_fetched": erpAssignedSalesUserFetched == null
            ? null
            : erpAssignedSalesUserFetched,
        "allow_edit": allowEdit == null ? null : allowEdit,
        "auto_inquiry_fcl": autoInquiryFcl == null ? null : autoInquiryFcl,
        "auto_inquiry_lcl": autoInquiryLcl == null ? null : autoInquiryLcl,
        "auto_inquiry_air": autoInquiryAir == null ? null : autoInquiryAir,
        "source": source == null ? null : userSourceValues.reverse[source],
        "company": company == null ? null : company!.toJson(),
        "role": role == null ? null : role!.toJson(),
        "type": type == null ? null : type!.toJson(),
        "solution_type": solutionType == null
            ? null
            : solutionTypeValues.reverse[solutionType],
        "mailgun_domain": mailgunDomain == null
            ? null
            : mailgunDomainValues.reverse[mailgunDomain],
      };
}

enum MailgunDomain { FREIGHTBRO_CO_IN }

final mailgunDomainValues =
    EnumValues({"freightbro.co.in": MailgunDomain.FREIGHTBRO_CO_IN});

enum SolutionType { WLS }

final solutionTypeValues = EnumValues({"WLS": SolutionType.WLS});

class SearchData {
  SearchData({
    this.mode,
    this.pickup,
    this.delivery,
    this.originPort,
    this.destinationPort,
    this.originLocation,
    this.destinationLocation,
    this.originCharges,
    this.originCustoms,
    this.destinationCharges,
    this.destinationCustoms,
    this.incoTerm,
    this.loadData,
    this.pickupPortDistence,
    this.deliveryPortDistence,
    this.hazardousMaterial,
    this.shipmentInsurance,
    this.commodity,
    this.searchName,
    this.cargoReadyDate,
    this.fetchNetworkRates,
    this.fetchNearbyPortData,
    this.destinationDelivery,
    this.insuranceLegCost,
    this.insuranceCurrency,
    this.stuffing,
    this.shipperUser,
    this.salesUser,
    this.searchType,
    this.pickupSelected,
    this.deliverySelected,
    this.nearbyLimit,
    this.nearbyPorts,
    this.nearbyPortsDestination,
    this.shipperUserId,
    this.user,
    this.customs,
    this.originInputText,
    this.destinationInputText,
    this.userNearbyOrigin,
    this.userNearbyDestination,
    this.loadDetails,
    this.impoExpo,
    this.weightSlab,
    this.carrierPreference,
    this.detention,
    this.imcoCode,
    this.hsCode,
    this.indicativeRates,
    this.exemptedSubVendorIds,
    this.sendRateOptionsWithPartialTransportRates,
    this.status,
  });

  Mode? mode;
  dynamic pickup;
  dynamic delivery;
  DestinationLocation? originPort;
  DestinationLocation? destinationPort;
  DestinationLocation? originLocation;
  DestinationLocation? destinationLocation;
  bool? originCharges;
  bool? originCustoms;
  bool? destinationCharges;
  bool? destinationCustoms;
  dynamic incoTerm;
  LoadData? loadData;
  PortDistence? pickupPortDistence;
  PortDistence? deliveryPortDistence;
  bool? hazardousMaterial;
  bool? shipmentInsurance;
  dynamic commodity;
  SearchName? searchName;
  DateTime? cargoReadyDate;
  bool? fetchNetworkRates;
  bool? fetchNearbyPortData;
  dynamic destinationDelivery;
  dynamic insuranceLegCost;
  ECurrency? insuranceCurrency;
  Stuffing? stuffing;
  dynamic shipperUser;
  SalesUser? salesUser;
  SearchType? searchType;
  bool? pickupSelected;
  bool? deliverySelected;
  int? nearbyLimit;
  List<DestinationLocation>? nearbyPorts;
  List<DestinationLocation>? nearbyPortsDestination;
  String? shipperUserId;
  User? user;
  bool? customs;
  dynamic originInputText;
  dynamic destinationInputText;
  List<DestinationLocation>? userNearbyOrigin;
  List<DestinationLocation>? userNearbyDestination;
  List<dynamic>? loadDetails;
  dynamic impoExpo;
  dynamic weightSlab;
  List<dynamic>? carrierPreference;
  int? detention;
  dynamic imcoCode;
  dynamic hsCode;
  dynamic indicativeRates;
  Map<String, bool>? exemptedSubVendorIds;
  bool? sendRateOptionsWithPartialTransportRates;
  String? status;

  factory SearchData.fromJson(Map<String, dynamic> json) => SearchData(
        mode: json["mode"] == null ? null : modeValues.map[json["mode"]],
        pickup: json["pickup"],
        delivery: json["delivery"],
        originPort: json["origin_port"] == null
            ? null
            : DestinationLocation.fromJson(json["origin_port"]),
        destinationPort: json["destination_port"] == null
            ? null
            : DestinationLocation.fromJson(json["destination_port"]),
        originLocation: json["origin_location"] == null
            ? null
            : DestinationLocation.fromJson(json["origin_location"]),
        destinationLocation: json["destination_location"] == null
            ? null
            : DestinationLocation.fromJson(json["destination_location"]),
        originCharges:
            json["origin_charges"] == null ? null : json["origin_charges"],
        originCustoms:
            json["origin_customs"] == null ? null : json["origin_customs"],
        destinationCharges: json["destination_charges"] == null
            ? null
            : json["destination_charges"],
        destinationCustoms: json["destination_customs"] == null
            ? null
            : json["destination_customs"],
        incoTerm: json["inco_term"],
        loadData: json["load_data"] == null
            ? null
            : LoadData.fromJson(json["load_data"]),
        pickupPortDistence: json["pickup_port_distence"] == null
            ? null
            : PortDistence.fromJson(json["pickup_port_distence"]),
        deliveryPortDistence: json["delivery_port_distence"] == null
            ? null
            : PortDistence.fromJson(json["delivery_port_distence"]),
        hazardousMaterial: json["hazardous_material"] == null
            ? null
            : json["hazardous_material"],
        shipmentInsurance: json["shipment_insurance"] == null
            ? null
            : json["shipment_insurance"],
        commodity: json["commodity"],
        searchName: json["search_name"] == null
            ? null
            : searchNameValues.map[json["search_name"]],
        cargoReadyDate: json["cargo_ready_date"] == null
            ? null
            : DateTime.parse(json["cargo_ready_date"]),
        fetchNetworkRates: json["fetch_network_rates"] == null
            ? null
            : json["fetch_network_rates"],
        fetchNearbyPortData: json["fetch_nearby_port_data"] == null
            ? null
            : json["fetch_nearby_port_data"],
        destinationDelivery: json["destination_delivery"],
        insuranceLegCost: json["insurance_leg_cost"],
        insuranceCurrency: json["insurance_currency"] == null
            ? null
            : eCurrencyValues.map[json["insurance_currency"]],
        stuffing: json["stuffing"] == null
            ? null
            : stuffingValues.map[json["stuffing"]],
        shipperUser: json["shipper_user"],
        salesUser: json["sales_user"] == null
            ? null
            : SalesUser.fromJson(json["sales_user"]),
        searchType: json["search_type"] == null
            ? null
            : searchTypeValues.map[json["search_type"]],
        pickupSelected:
            json["pickup_selected"] == null ? null : json["pickup_selected"],
        deliverySelected: json["delivery_selected"] == null
            ? null
            : json["delivery_selected"],
        nearbyLimit: json["nearby_limit"] == null ? null : json["nearby_limit"],
        nearbyPorts: json["nearby_ports"] == null
            ? null
            : List<DestinationLocation>.from(json["nearby_ports"]
                .map((x) => DestinationLocation.fromJson(x))),
        nearbyPortsDestination: json["nearby_ports_destination"] == null
            ? null
            : List<DestinationLocation>.from(json["nearby_ports_destination"]
                .map((x) => DestinationLocation.fromJson(x))),
        shipperUserId:
            json["shipper_user_id"] == null ? null : json["shipper_user_id"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        customs: json["customs"] == null ? null : json["customs"],
        originInputText: json["origin_input_text"],
        destinationInputText: json["destination_input_text"],
        userNearbyOrigin: json["user_nearby_origin"] == null
            ? null
            : List<DestinationLocation>.from(json["user_nearby_origin"]
                .map((x) => DestinationLocation.fromJson(x))),
        userNearbyDestination: json["user_nearby_destination"] == null
            ? null
            : List<DestinationLocation>.from(json["user_nearby_destination"]
                .map((x) => DestinationLocation.fromJson(x))),
        loadDetails: json["load_details"] == null
            ? null
            : List<dynamic>.from(json["load_details"].map((x) => x)),
        impoExpo: json["impo_expo"],
        weightSlab: json["weight_slab"],
        carrierPreference: json["carrier_preference"] == null
            ? null
            : List<dynamic>.from(json["carrier_preference"].map((x) => x)),
        detention: json["detention"] == null ? null : json["detention"],
        imcoCode: json["imco_code"],
        hsCode: json["hs_code"],
        indicativeRates: json["indicative_rates"],
        exemptedSubVendorIds: json["exempted_sub_vendor_ids"] == null
            ? null
            : Map.from(json["exempted_sub_vendor_ids"])
                .map((k, v) => MapEntry<String, bool>(k, v)),
        sendRateOptionsWithPartialTransportRates:
            json["send_rate_options_with_partial_transport_rates"] == null
                ? null
                : json["send_rate_options_with_partial_transport_rates"],
        status: json["status"] == null ? null : json["status"],
      );

  Map<String, dynamic> toJson() => {
        "mode": mode == null ? null : modeValues.reverse[mode],
        "pickup": pickup,
        "delivery": delivery,
        "origin_port": originPort == null ? null : originPort!.toJson(),
        "destination_port":
            destinationPort == null ? null : destinationPort!.toJson(),
        "origin_location":
            originLocation == null ? null : originLocation!.toJson(),
        "destination_location":
            destinationLocation == null ? null : destinationLocation!.toJson(),
        "origin_charges": originCharges == null ? null : originCharges,
        "origin_customs": originCustoms == null ? null : originCustoms,
        "destination_charges":
            destinationCharges == null ? null : destinationCharges,
        "destination_customs":
            destinationCustoms == null ? null : destinationCustoms,
        "inco_term": incoTerm,
        "load_data": loadData == null ? null : loadData!.toJson(),
        "pickup_port_distence":
            pickupPortDistence == null ? null : pickupPortDistence!.toJson(),
        "delivery_port_distence":
            deliveryPortDistence == null ? null : deliveryPortDistence!.toJson(),
        "hazardous_material":
            hazardousMaterial == null ? null : hazardousMaterial,
        "shipment_insurance":
            shipmentInsurance == null ? null : shipmentInsurance,
        "commodity": commodity,
        "search_name":
            searchName == null ? null : searchNameValues.reverse[searchName],
        "cargo_ready_date": cargoReadyDate == null
            ? null
            : "${cargoReadyDate!.year.toString().padLeft(4, '0')}-${cargoReadyDate!.month.toString().padLeft(2, '0')}-${cargoReadyDate!.day.toString().padLeft(2, '0')}",
        "fetch_network_rates":
            fetchNetworkRates == null ? null : fetchNetworkRates,
        "fetch_nearby_port_data":
            fetchNearbyPortData == null ? null : fetchNearbyPortData,
        "destination_delivery": destinationDelivery,
        "insurance_leg_cost": insuranceLegCost,
        "insurance_currency": insuranceCurrency == null
            ? null
            : eCurrencyValues.reverse[insuranceCurrency],
        "stuffing": stuffing == null ? null : stuffingValues.reverse[stuffing],
        "shipper_user": shipperUser,
        "sales_user": salesUser == null ? null : salesUser!.toJson(),
        "search_type":
            searchType == null ? null : searchTypeValues.reverse[searchType],
        "pickup_selected": pickupSelected == null ? null : pickupSelected,
        "delivery_selected": deliverySelected == null ? null : deliverySelected,
        "nearby_limit": nearbyLimit == null ? null : nearbyLimit,
        "nearby_ports": nearbyPorts == null
            ? null
            : List<dynamic>.from(nearbyPorts!.map((x) => x.toJson())),
        "nearby_ports_destination": nearbyPortsDestination == null
            ? null
            : List<dynamic>.from(nearbyPortsDestination!.map((x) => x.toJson())),
        "shipper_user_id": shipperUserId == null ? null : shipperUserId,
        "user": user == null ? null : user!.toJson(),
        "customs": customs == null ? null : customs,
        "origin_input_text": originInputText,
        "destination_input_text": destinationInputText,
        "user_nearby_origin": userNearbyOrigin == null
            ? null
            : List<dynamic>.from(userNearbyOrigin!.map((x) => x.toJson())),
        "user_nearby_destination": userNearbyDestination == null
            ? null
            : List<dynamic>.from(userNearbyDestination!.map((x) => x.toJson())),
        "load_details": loadDetails == null
            ? null
            : List<dynamic>.from(loadDetails!.map((x) => x)),
        "impo_expo": impoExpo,
        "weight_slab": weightSlab,
        "carrier_preference": carrierPreference == null
            ? null
            : List<dynamic>.from(carrierPreference!.map((x) => x)),
        "detention": detention == null ? null : detention,
        "imco_code": imcoCode,
        "hs_code": hsCode,
        "indicative_rates": indicativeRates,
        "exempted_sub_vendor_ids": exemptedSubVendorIds == null
            ? null
            : Map.from(exemptedSubVendorIds!)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "send_rate_options_with_partial_transport_rates":
            sendRateOptionsWithPartialTransportRates == null
                ? null
                : sendRateOptionsWithPartialTransportRates,
        "status": status == null ? null : status,
      };
}

class PortDistence {
  PortDistence({
    this.distence,
    this.unit,
  });

  int? distence;
  Unit? unit;

  factory PortDistence.fromJson(Map<String, dynamic> json) => PortDistence(
        distence: json["distence"] == null ? null : json["distence"],
        unit: json["unit"] == null ? null : unitValues.map[json["unit"]],
      );

  Map<String, dynamic> toJson() => {
        "distence": distence == null ? null : distence,
        "unit": unit == null ? null : unitValues.reverse[unit],
      };
}

enum Unit { KM }

final unitValues = EnumValues({"KM": Unit.KM});

class DestinationLocation {
  DestinationLocation({
    this.id,
    this.globalPortCode,
    this.portCode,
    this.portname,
    this.city,
    this.lat,
    this.long,
    this.region,
    this.location,
    this.pinCode,
    this.isIcdPort,
    this.isMajorPort,
    this.portId,
    this.state,
    this.vendorId,
    this.legCode,
    this.geoLocation,
    this.priceAvailable,
    this.priceCurrency,
    this.price,
    this.batchcode,
    this.portcodePortname,
    this.mode,
    this.countryCode,
    this.locationString,
    this.locationType,
    this.countrySortCode,
    this.placeType,
    this.createdAt,
    this.modifiedAt,
    this.v,
    this.locationLowercase,
    this.regionCode,
    this.country,
    this.nearbyPorts,
    this.nearbyPortsManual,
    this.referenceId,
    this.source,
    this.isDeleted,
    this.locationAlias,
    this.locationStringUi,
    this.pinCodeUi,
    this.nearbySeaports,
    this.nearbyAirports,
    this.nearbyZipcodes,
    this.isPrimary,
    this.deletedAt,
  });

  String? id;
  String? globalPortCode;
  String? portCode;
  String? portname;
  String? city;
  double? lat;
  double? long;
  Region? region;
  String? location;
  dynamic pinCode;
  int? isIcdPort;
  int? isMajorPort;
  int? portId;
  dynamic state;
  dynamic vendorId;
  dynamic legCode;
  GeoLocation? geoLocation;
  bool? priceAvailable;
  dynamic priceCurrency;
  int? price;
  List<dynamic>? batchcode;
  String? portcodePortname;
  Mode? mode;
  CountryCode? countryCode;
  String? locationString;
  dynamic locationType;
  CountryCode? countrySortCode;
  PlaceType? placeType;
  DateTime? createdAt;
  DateTime? modifiedAt;
  int? v;
  String? locationLowercase;
  RegionCode? regionCode;
  DestinationLocationCountry? country;
  List<dynamic>? nearbyPorts;
  List<String>? nearbyPortsManual;
  dynamic referenceId;
  dynamic source;
  bool? isDeleted;
  List<dynamic>? locationAlias;
  String? locationStringUi;
  dynamic pinCodeUi;
  List<dynamic>? nearbySeaports;
  List<dynamic>? nearbyAirports;
  List<dynamic>? nearbyZipcodes;
  bool? isPrimary;
  dynamic deletedAt;

  factory DestinationLocation.fromJson(Map<String, dynamic> json) =>
      DestinationLocation(
        id: json["_id"] == null ? null : json["_id"],
        globalPortCode:
            json["global_port_code"] == null ? null : json["global_port_code"],
        portCode: json["port_code"] == null ? null : json["port_code"],
        portname: json["portname"] == null ? null : json["portname"],
        city: json["city"] == null ? null : json["city"],
        lat: json["lat"] == null ? null : json["lat"].toDouble(),
        long: json["long"] == null ? null : json["long"].toDouble(),
        region:
            json["region"] == null ? null : regionValues.map[json["region"]],
        location: json["location"] == null ? null : json["location"],
        pinCode: json["pin_code"],
        isIcdPort: json["is_icd_port"] == null ? null : json["is_icd_port"],
        isMajorPort:
            json["is_major_port"] == null ? null : json["is_major_port"],
        portId: json["port_id"] == null ? null : json["port_id"],
        state: json["state"],
        vendorId: json["vendor_id"],
        legCode: json["leg_code"],
        geoLocation: json["geo_location"] == null
            ? null
            : GeoLocation.fromJson(json["geo_location"]),
        priceAvailable:
            json["price_available"] == null ? null : json["price_available"],
        priceCurrency: json["price_currency"],
        price: json["price"] == null ? null : json["price"],
        batchcode: json["batchcode"] == null
            ? null
            : List<dynamic>.from(json["batchcode"].map((x) => x)),
        portcodePortname: json["portcode_portname"] == null
            ? null
            : json["portcode_portname"],
        mode: json["mode"] == null ? null : modeValues.map[json["mode"]],
        countryCode: json["country_code"] == null
            ? null
            : countryCodeValues.map[json["country_code"]],
        locationString:
            json["location_string"] == null ? null : json["location_string"],
        locationType: json["location_type"],
        countrySortCode: json["country_sort_code"] == null
            ? null
            : countryCodeValues.map[json["country_sort_code"]],
        placeType: json["place_type"] == null
            ? null
            : placeTypeValues.map[json["place_type"]],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        modifiedAt: json["modified_at"] == null
            ? null
            : DateTime.parse(json["modified_at"]),
        v: json["__v"] == null ? null : json["__v"],
        locationLowercase: json["location_lowercase"] == null
            ? null
            : json["location_lowercase"],
        regionCode: json["region_code"] == null
            ? null
            : regionCodeValues.map[json["region_code"]],
        country: json["country"] == null
            ? null
            : destinationLocationCountryValues.map[json["country"]],
        nearbyPorts: json["nearby_ports"] == null
            ? null
            : List<dynamic>.from(json["nearby_ports"].map((x) => x)),
        nearbyPortsManual: json["nearby_ports_manual"] == null
            ? null
            : List<String>.from(json["nearby_ports_manual"].map((x) => x)),
        referenceId: json["reference_id"],
        source: json["source"],
        isDeleted: json["is_deleted"] == null ? null : json["is_deleted"],
        locationAlias: json["location_alias"] == null
            ? null
            : List<dynamic>.from(json["location_alias"].map((x) => x)),
        locationStringUi: json["location_string_ui"] == null
            ? null
            : json["location_string_ui"],
        pinCodeUi: json["pin_code_ui"],
        nearbySeaports: json["nearby_seaports"] == null
            ? null
            : List<dynamic>.from(json["nearby_seaports"].map((x) => x)),
        nearbyAirports: json["nearby_airports"] == null
            ? null
            : List<dynamic>.from(json["nearby_airports"].map((x) => x)),
        nearbyZipcodes: json["nearby_zipcodes"] == null
            ? null
            : List<dynamic>.from(json["nearby_zipcodes"].map((x) => x)),
        isPrimary: json["is_primary"] == null ? null : json["is_primary"],
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id == null ? null : id,
        "global_port_code": globalPortCode == null ? null : globalPortCode,
        "port_code": portCode == null ? null : portCode,
        "portname": portname == null ? null : portname,
        "city": city == null ? null : city,
        "lat": lat == null ? null : lat,
        "long": long == null ? null : long,
        "region": region == null ? null : regionValues.reverse[region],
        "location": location == null ? null : location,
        "pin_code": pinCode,
        "is_icd_port": isIcdPort == null ? null : isIcdPort,
        "is_major_port": isMajorPort == null ? null : isMajorPort,
        "port_id": portId == null ? null : portId,
        "state": state,
        "vendor_id": vendorId,
        "leg_code": legCode,
        "geo_location": geoLocation == null ? null : geoLocation!.toJson(),
        "price_available": priceAvailable == null ? null : priceAvailable,
        "price_currency": priceCurrency,
        "price": price == null ? null : price,
        "batchcode": batchcode == null
            ? null
            : List<dynamic>.from(batchcode!.map((x) => x)),
        "portcode_portname": portcodePortname == null ? null : portcodePortname,
        "mode": mode == null ? null : modeValues.reverse[mode],
        "country_code":
            countryCode == null ? null : countryCodeValues.reverse[countryCode],
        "location_string": locationString == null ? null : locationString,
        "location_type": locationType,
        "country_sort_code": countrySortCode == null
            ? null
            : countryCodeValues.reverse[countrySortCode],
        "place_type":
            placeType == null ? null : placeTypeValues.reverse[placeType],
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "modified_at": modifiedAt == null ? null : modifiedAt!.toIso8601String(),
        "__v": v == null ? null : v,
        "location_lowercase":
            locationLowercase == null ? null : locationLowercase,
        "region_code":
            regionCode == null ? null : regionCodeValues.reverse[regionCode],
        "country": country == null
            ? null
            : destinationLocationCountryValues.reverse[country],
        "nearby_ports": nearbyPorts == null
            ? null
            : List<dynamic>.from(nearbyPorts!.map((x) => x)),
        "nearby_ports_manual": nearbyPortsManual == null
            ? null
            : List<dynamic>.from(nearbyPortsManual!.map((x) => x)),
        "reference_id": referenceId,
        "source": source,
        "is_deleted": isDeleted == null ? null : isDeleted,
        "location_alias": locationAlias == null
            ? null
            : List<dynamic>.from(locationAlias!.map((x) => x)),
        "location_string_ui":
            locationStringUi == null ? null : locationStringUi,
        "pin_code_ui": pinCodeUi,
        "nearby_seaports": nearbySeaports == null
            ? null
            : List<dynamic>.from(nearbySeaports!.map((x) => x)),
        "nearby_airports": nearbyAirports == null
            ? null
            : List<dynamic>.from(nearbyAirports!.map((x) => x)),
        "nearby_zipcodes": nearbyZipcodes == null
            ? null
            : List<dynamic>.from(nearbyZipcodes!.map((x) => x)),
        "is_primary": isPrimary == null ? null : isPrimary,
        "deleted_at": deletedAt,
      };
}

enum DestinationLocationCountry { ITALY, GERMANY, CHINA, CANADA }

final destinationLocationCountryValues = EnumValues({
  "Canada": DestinationLocationCountry.CANADA,
  "China": DestinationLocationCountry.CHINA,
  "Germany": DestinationLocationCountry.GERMANY,
  "Italy": DestinationLocationCountry.ITALY
});

enum CountryCode { IT, DE, CN, CA }

final countryCodeValues = EnumValues({
  "CA": CountryCode.CA,
  "CN": CountryCode.CN,
  "DE": CountryCode.DE,
  "IT": CountryCode.IT
});

class GeoLocation {
  GeoLocation({
    this.type,
    this.coordinates,
  });

  GeoLocationType? type;
  List<double>? coordinates;

  factory GeoLocation.fromJson(Map<String, dynamic> json) => GeoLocation(
        type: json["type"] == null
            ? null
            : geoLocationTypeValues.map[json["type"]],
        coordinates: json["coordinates"] == null
            ? null
            : List<double>.from(json["coordinates"].map((x) => x.toDouble())),
      );

  Map<String, dynamic> toJson() => {
        "type": type == null ? null : geoLocationTypeValues.reverse[type],
        "coordinates": coordinates == null
            ? null
            : List<dynamic>.from(coordinates!.map((x) => x)),
      };
}

enum GeoLocationType { POINT }

final geoLocationTypeValues = EnumValues({"Point": GeoLocationType.POINT});

enum Mode { AIR, SEA_FCL, SEA_LCL }

final modeValues = EnumValues(
    {"AIR": Mode.AIR, "SEA-FCL": Mode.SEA_FCL, "SEA-LCL": Mode.SEA_LCL});

enum PlaceType { AIRPORT, PORT }

final placeTypeValues =
    EnumValues({"Airport": PlaceType.AIRPORT, "Port": PlaceType.PORT});

enum Region { EUROPE, ASIA, NORTH_AMERICA }

final regionValues = EnumValues({
  "Asia": Region.ASIA,
  "Europe": Region.EUROPE,
  "North America": Region.NORTH_AMERICA
});

enum RegionCode { EUROPE, ASIA, NORTH_AMERICA }

final regionCodeValues = EnumValues({
  "ASIA": RegionCode.ASIA,
  "EUROPE": RegionCode.EUROPE,
  "NORTH_AMERICA": RegionCode.NORTH_AMERICA
});

class LoadData {
  LoadData({
    this.loadDetailsValue,
    this.loadType,
    this.loadMeta,
    this.ltlLoadDetails,
  });

  List<LoadDetailsValue>? loadDetailsValue;
  LoadType? loadType;
  LoadMeta? loadMeta;
  dynamic? ltlLoadDetails;

  factory LoadData.fromJson(Map<String, dynamic> json) => LoadData(
        loadDetailsValue: json["load_details_value"] == null
            ? null
            : List<LoadDetailsValue>.from(json["load_details_value"]
                .map((x) => LoadDetailsValue.fromJson(x))),
        loadType: json["load_type"] == null
            ? null
            : loadTypeValues.map[json["load_type"]],
        loadMeta: json["load_meta"] == null
            ? null
            : LoadMeta.fromJson(json["load_meta"]),
        ltlLoadDetails: json["ltl_load_details"],
      );

  Map<String, dynamic> toJson() => {
        "load_details_value": loadDetailsValue == null
            ? null
            : List<dynamic>.from(loadDetailsValue!.map((x) => x.toJson())),
        "load_type": loadType == null ? null : loadTypeValues.reverse[loadType],
        "load_meta": loadMeta == null ? null : loadMeta!.toJson(),
        "ltl_load_details": ltlLoadDetails,
      };
}

class LoadDetailsValue {
  LoadDetailsValue({
    this.qty,
    this.length,
    this.breadth,
    this.height,
    this.weight,
    this.volume,
    this.loadMetrics,
    this.blQty,
    this.sblQty,
    this.type,
  });

  int? qty;
  int? length;
  int? breadth;
  int? height;
  int? weight;
  int? volume;
  List<LoadMetric>? loadMetrics;
  int? blQty;
  int? sblQty;
  String? type;

  factory LoadDetailsValue.fromJson(Map<String, dynamic> json) =>
      LoadDetailsValue(
        qty: json["qty"] == null ? null : json["qty"],
        length: json["length"] == null ? null : json["length"],
        breadth: json["breadth"] == null ? null : json["breadth"],
        height: json["height"] == null ? null : json["height"],
        weight: json["weight"] == null ? null : json["weight"],
        volume: json["volume"] == null ? null : json["volume"],
        loadMetrics: json["load_metrics"] == null
            ? null
            : List<LoadMetric>.from(
                json["load_metrics"].map((x) => LoadMetric.fromJson(x))),
        blQty: json["bl_qty"] == null ? null : json["bl_qty"],
        sblQty: json["sbl_qty"] == null ? null : json["sbl_qty"],
        type: json["type"] == null ? null : json["type"],
      );

  Map<String, dynamic> toJson() => {
        "qty": qty == null ? null : qty,
        "length": length == null ? null : length,
        "breadth": breadth == null ? null : breadth,
        "height": height == null ? null : height,
        "weight": weight == null ? null : weight,
        "volume": volume == null ? null : volume,
        "load_metrics": loadMetrics == null
            ? null
            : List<dynamic>.from(loadMetrics!.map((x) => x.toJson())),
        "bl_qty": blQty == null ? null : blQty,
        "sbl_qty": sblQty == null ? null : sblQty,
        "type": type == null ? null : type,
      };
}

class LoadMetric {
  LoadMetric({
    this.weightQty,
    this.weightUnit,
    this.volumeQty,
    this.volumeUnit,
  });

  int? weightQty;
  WeightUnit? weightUnit;
  int? volumeQty;
  VolumeUnit? volumeUnit;

  factory LoadMetric.fromJson(Map<String, dynamic> json) => LoadMetric(
        weightQty: json["weight_qty"] == null ? null : json["weight_qty"],
        weightUnit: json["weight_unit"] == null
            ? null
            : weightUnitValues.map[json["weight_unit"]],
        volumeQty: json["volume_qty"] == null ? null : json["volume_qty"],
        volumeUnit: json["volume_unit"] == null
            ? null
            : volumeUnitValues.map[json["volume_unit"]],
      );

  Map<String, dynamic> toJson() => {
        "weight_qty": weightQty == null ? null : weightQty,
        "weight_unit":
            weightUnit == null ? null : weightUnitValues.reverse[weightUnit],
        "volume_qty": volumeQty == null ? null : volumeQty,
        "volume_unit":
            volumeUnit == null ? null : volumeUnitValues.reverse[volumeUnit],
      };
}

enum VolumeUnit { CBM }

final volumeUnitValues = EnumValues({"CBM": VolumeUnit.CBM});

enum WeightUnit { K_GS }

final weightUnitValues = EnumValues({"KGs": WeightUnit.K_GS});

class LoadMeta {
  LoadMeta({
    this.grossWeight,
    this.volumetricWeight,
    this.chargeableWeight,
    this.totalQty,
    this.totalBl,
    this.totalSbl,
    this.volumeUnit,
    this.inputWeightUnit,
    this.calculatedWeightUnit,
    this.dimensionUnit,
    this.totalWeight,
    this.totalVolume,
  });

  int? grossWeight;
  double? volumetricWeight;
  double? chargeableWeight;
  int? totalQty;
  int? totalBl;
  int? totalSbl;
  String? volumeUnit;
  WeightUnit? inputWeightUnit;
  String? calculatedWeightUnit;
  String? dimensionUnit;
  int? totalWeight;
  int? totalVolume;

  factory LoadMeta.fromJson(Map<String, dynamic> json) => LoadMeta(
        grossWeight: json["gross_weight"] == null ? null : json["gross_weight"],
        volumetricWeight: json["volumetric_weight"] == null
            ? null
            : json["volumetric_weight"].toDouble(),
        chargeableWeight: json["chargeable_weight"] == null
            ? null
            : json["chargeable_weight"].toDouble(),
        totalQty: json["total_qty"] == null ? null : json["total_qty"],
        totalBl: json["total_bl"] == null ? null : json["total_bl"],
        totalSbl: json["total_sbl"] == null ? null : json["total_sbl"],
        volumeUnit: json["volume_unit"] == null ? null : json["volume_unit"],
        inputWeightUnit: json["input_weight_unit"] == null
            ? null
            : weightUnitValues.map[json["input_weight_unit"]],
        calculatedWeightUnit: json["calculated_weight_unit"] == null
            ? null
            : json["calculated_weight_unit"],
        dimensionUnit:
            json["dimension_unit"] == null ? null : json["dimension_unit"],
        totalWeight: json["total_weight"] == null ? null : json["total_weight"],
        totalVolume: json["total_volume"] == null ? null : json["total_volume"],
      );

  Map<String, dynamic> toJson() => {
        "gross_weight": grossWeight == null ? null : grossWeight,
        "volumetric_weight": volumetricWeight == null ? null : volumetricWeight,
        "chargeable_weight": chargeableWeight == null ? null : chargeableWeight,
        "total_qty": totalQty == null ? null : totalQty,
        "total_bl": totalBl == null ? null : totalBl,
        "total_sbl": totalSbl == null ? null : totalSbl,
        "volume_unit": volumeUnit == null ? null : volumeUnit,
        "input_weight_unit": inputWeightUnit == null
            ? null
            : weightUnitValues.reverse[inputWeightUnit],
        "calculated_weight_unit":
            calculatedWeightUnit == null ? null : calculatedWeightUnit,
        "dimension_unit": dimensionUnit == null ? null : dimensionUnit,
        "total_weight": totalWeight == null ? null : totalWeight,
        "total_volume": totalVolume == null ? null : totalVolume,
      };
}

enum LoadType { TOTAL_SHIPMENT, CONTAINER }

final loadTypeValues = EnumValues({
  "container": LoadType.CONTAINER,
  "total_shipment": LoadType.TOTAL_SHIPMENT
});

enum SearchName {
  MLB_TO_MCT_8_NOV_2022,
  CNNBO_TO_ITGOA_3_NOV_2022,
  USCHI_TO_AUBNE_2_NOV_2022
}

final searchNameValues = EnumValues({
  "CNNBO, to ITGOA / 3 Nov 2022": SearchName.CNNBO_TO_ITGOA_3_NOV_2022,
  "MLB to MCT / 8 Nov 2022": SearchName.MLB_TO_MCT_8_NOV_2022,
  "USCHI to AUBNE / 2 Nov 2022": SearchName.USCHI_TO_AUBNE_2_NOV_2022
});

enum SearchType { P2_P }

final searchTypeValues = EnumValues({"P2P": SearchType.P2_P});

enum Stuffing { F }

final stuffingValues = EnumValues({"F": Stuffing.F});

class ShipperUser {
  ShipperUser({
    this.id,
    this.userType,
    this.email,
    this.userMobile,
    this.userMobileCode,
    this.userMobileCountry,
    this.userAlternateNumber,
    this.userFirstName,
    this.userLastName,
    this.userDob,
    this.activeStatus,
    this.createdAt,
    this.userCompanyId,
    this.userCompanyName,
    this.createdBy,
    this.userRegionId,
    this.userBaseCurrency,
    this.userAddress,
    this.isGodUser,
    this.isSuperUser,
    this.profile,
    this.domain,
    this.advancedSearch,
    this.allowPersonalEmail,
    this.personalEmailId,
    this.sendCc,
    this.emailSignature,
    this.emailSignatureRequired,
    this.ccEmail,
    this.roleId,
    this.team,
    this.tags,
    this.locations,
    this.department,
    this.designation,
    this.teamManager,
    this.approvalRequired,
    this.accessKey,
    this.approvalRequiredBy,
    this.otp,
    this.otpExpiry,
    this.isSalesCordinator,
    this.erpData,
    this.isPricingUser,
    this.customerProfileCode,
    this.salesCallCode,
    this.ctcId,
    this.branchId,
    this.salespersonCode,
    this.erpAssignedShipperFetched,
    this.erpAssignedSalesUserFetched,
    this.allowEdit,
    this.autoInquiryFcl,
    this.autoInquiryLcl,
    this.autoInquiryAir,
    this.source,
    this.solutionType,
    this.company,
  });

  String? id;
  String? userType;
  String? email;
  dynamic userMobile;
  dynamic userMobileCode;
  dynamic userMobileCountry;
  dynamic userAlternateNumber;
  String? userFirstName;
  String? userLastName;
  dynamic userDob;
  int? activeStatus;
  DateTime? createdAt;
  String? userCompanyId;
  CompanyName? userCompanyName;
  String? createdBy;
  dynamic userRegionId;
  ECurrency? userBaseCurrency;
  dynamic userAddress;
  int? isGodUser;
  int? isSuperUser;
  dynamic profile;
  CompanyDomain? domain;
  int? advancedSearch;
  int? allowPersonalEmail;
  dynamic personalEmailId;
  int? sendCc;
  dynamic emailSignature;
  int? emailSignatureRequired;
  dynamic ccEmail;
  String? roleId;
  dynamic team;
  dynamic tags;
  dynamic locations;
  dynamic department;
  dynamic designation;
  int? teamManager;
  int? approvalRequired;
  dynamic accessKey;
  dynamic approvalRequiredBy;
  dynamic otp;
  dynamic otpExpiry;
  int? isSalesCordinator;
  dynamic erpData;
  int? isPricingUser;
  dynamic customerProfileCode;
  dynamic salesCallCode;
  dynamic ctcId;
  dynamic branchId;
  dynamic salespersonCode;
  int? erpAssignedShipperFetched;
  int? erpAssignedSalesUserFetched;
  int? allowEdit;
  int? autoInquiryFcl;
  int? autoInquiryLcl;
  int? autoInquiryAir;
  String? source;
  SolutionType? solutionType;
  Company? company;

  factory ShipperUser.fromJson(Map<String, dynamic> json) => ShipperUser(
        id: json["id"] == null ? null : json["id"],
        userType: json["user_type"] == null ? null : json["user_type"],
        email: json["email"] == null ? null : json["email"],
        userMobile: json["user_mobile"],
        userMobileCode: json["user_mobile_code"],
        userMobileCountry: json["user_mobile_country"],
        userAlternateNumber: json["user_alternate_number"],
        userFirstName:
            json["user_first_name"] == null ? null : json["user_first_name"],
        userLastName:
            json["user_last_name"] == null ? null : json["user_last_name"],
        userDob: json["user_dob"],
        activeStatus:
            json["active_status"] == null ? null : json["active_status"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        userCompanyId:
            json["user_company_id"] == null ? null : json["user_company_id"],
        userCompanyName: json["user_company_name"] == null
            ? null
            : companyNameValues.map[json["user_company_name"]],
        createdBy: json["created_by"] == null ? null : json["created_by"],
        userRegionId: json["user_region_id"],
        userBaseCurrency: json["user_base_currency"] == null
            ? null
            : eCurrencyValues.map[json["user_base_currency"]],
        userAddress: json["user_address"],
        isGodUser: json["is_god_user"] == null ? null : json["is_god_user"],
        isSuperUser:
            json["is_super_user"] == null ? null : json["is_super_user"],
        profile: json["profile"],
        domain: json["domain"] == null
            ? null
            : companyDomainValues.map[json["domain"]],
        advancedSearch:
            json["advanced_search"] == null ? null : json["advanced_search"],
        allowPersonalEmail: json["allow_personal_email"] == null
            ? null
            : json["allow_personal_email"],
        personalEmailId: json["personal_email_id"],
        sendCc: json["send_cc"] == null ? null : json["send_cc"],
        emailSignature: json["email_signature"],
        emailSignatureRequired: json["email_signature_required"] == null
            ? null
            : json["email_signature_required"],
        ccEmail: json["cc_email"],
        roleId: json["role_id"] == null ? null : json["role_id"],
        team: json["team"],
        tags: json["tags"],
        locations: json["locations"],
        department: json["department"],
        designation: json["designation"],
        teamManager: json["team_manager"] == null ? null : json["team_manager"],
        approvalRequired: json["approval_required"] == null
            ? null
            : json["approval_required"],
        accessKey: json["access_key"],
        approvalRequiredBy: json["approval_required_by"],
        otp: json["otp"],
        otpExpiry: json["otp_expiry"],
        isSalesCordinator: json["is_sales_cordinator"] == null
            ? null
            : json["is_sales_cordinator"],
        erpData: json["erp_data"],
        isPricingUser:
            json["is_pricing_user"] == null ? null : json["is_pricing_user"],
        customerProfileCode: json["customer_profile_code"],
        salesCallCode: json["sales_call_code"],
        ctcId: json["ctc_id"],
        branchId: json["branch_id"],
        salespersonCode: json["salesperson_code"],
        erpAssignedShipperFetched: json["erp_assigned_shipper_fetched"] == null
            ? null
            : json["erp_assigned_shipper_fetched"],
        erpAssignedSalesUserFetched:
            json["erp_assigned_sales_user_fetched"] == null
                ? null
                : json["erp_assigned_sales_user_fetched"],
        allowEdit: json["allow_edit"] == null ? null : json["allow_edit"],
        autoInquiryFcl:
            json["auto_inquiry_fcl"] == null ? null : json["auto_inquiry_fcl"],
        autoInquiryLcl:
            json["auto_inquiry_lcl"] == null ? null : json["auto_inquiry_lcl"],
        autoInquiryAir:
            json["auto_inquiry_air"] == null ? null : json["auto_inquiry_air"],
        source: json["source"] == null ? null : json["source"],
        solutionType: json["solution_type"] == null
            ? null
            : solutionTypeValues.map[json["solution_type"]],
        company:
            json["company"] == null ? null : Company.fromJson(json["company"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "user_type": userType == null ? null : userType,
        "email": email == null ? null : email,
        "user_mobile": userMobile,
        "user_mobile_code": userMobileCode,
        "user_mobile_country": userMobileCountry,
        "user_alternate_number": userAlternateNumber,
        "user_first_name": userFirstName == null ? null : userFirstName,
        "user_last_name": userLastName == null ? null : userLastName,
        "user_dob": userDob,
        "active_status": activeStatus == null ? null : activeStatus,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "user_company_id": userCompanyId == null ? null : userCompanyId,
        "user_company_name": userCompanyName == null
            ? null
            : companyNameValues.reverse[userCompanyName],
        "created_by": createdBy == null ? null : createdBy,
        "user_region_id": userRegionId,
        "user_base_currency": userBaseCurrency == null
            ? null
            : eCurrencyValues.reverse[userBaseCurrency],
        "user_address": userAddress,
        "is_god_user": isGodUser == null ? null : isGodUser,
        "is_super_user": isSuperUser == null ? null : isSuperUser,
        "profile": profile,
        "domain": domain == null ? null : companyDomainValues.reverse[domain],
        "advanced_search": advancedSearch == null ? null : advancedSearch,
        "allow_personal_email":
            allowPersonalEmail == null ? null : allowPersonalEmail,
        "personal_email_id": personalEmailId,
        "send_cc": sendCc == null ? null : sendCc,
        "email_signature": emailSignature,
        "email_signature_required":
            emailSignatureRequired == null ? null : emailSignatureRequired,
        "cc_email": ccEmail,
        "role_id": roleId == null ? null : roleId,
        "team": team,
        "tags": tags,
        "locations": locations,
        "department": department,
        "designation": designation,
        "team_manager": teamManager == null ? null : teamManager,
        "approval_required": approvalRequired == null ? null : approvalRequired,
        "access_key": accessKey,
        "approval_required_by": approvalRequiredBy,
        "otp": otp,
        "otp_expiry": otpExpiry,
        "is_sales_cordinator":
            isSalesCordinator == null ? null : isSalesCordinator,
        "erp_data": erpData,
        "is_pricing_user": isPricingUser == null ? null : isPricingUser,
        "customer_profile_code": customerProfileCode,
        "sales_call_code": salesCallCode,
        "ctc_id": ctcId,
        "branch_id": branchId,
        "salesperson_code": salespersonCode,
        "erp_assigned_shipper_fetched": erpAssignedShipperFetched == null
            ? null
            : erpAssignedShipperFetched,
        "erp_assigned_sales_user_fetched": erpAssignedSalesUserFetched == null
            ? null
            : erpAssignedSalesUserFetched,
        "allow_edit": allowEdit == null ? null : allowEdit,
        "auto_inquiry_fcl": autoInquiryFcl == null ? null : autoInquiryFcl,
        "auto_inquiry_lcl": autoInquiryLcl == null ? null : autoInquiryLcl,
        "auto_inquiry_air": autoInquiryAir == null ? null : autoInquiryAir,
        "source": source == null ? null : source,
        "solution_type": solutionType == null
            ? null
            : solutionTypeValues.reverse[solutionType],
        "company": company == null ? null : company!.toJson(),
      };
}


class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(Map<String, T> map);

  Map<T, String> get reverse {
    reverseMap == map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }