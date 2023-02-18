// To parse this JSON data, do
//
//     final candidature = candidatureFromJson(jsonString);

import 'dart:convert';

List<Candidature> candidatureFromJson(String str) => List<Candidature>.from(json.decode(str).map((x) => Candidature.fromJson(x)));

String candidatureToJson(List<Candidature> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Candidature {
    Candidature({
        required this.module,
        this.emailFieldsNoPropagateInActioncomm,
        this.entity,
        required this.ref,
        required this.fkRecruitmentjobposition,
        required this.description,
        this.notePublic,
        this.notePrivate,
        required this.dateCreation,
        required this.tms,
        required this.fkUserCreat,
        this.fkUserModif,
        required this.lastname,
        required this.firstname,
        required this.email,
        required this.phone,
        required this.dateBirth,
        this.emailMsgid,
        this.remunerationRequested,
        this.remunerationProposed,
        this.fkRecruitmentOrigin,
        this.importKey,
        this.modelPdf,
        required this.status,
        required this.id,
        required this.validateFieldsErrors,
        required this.arrayOptions,
        this.arrayLanguages,
        this.contactsIds,
        this.linkedObjects,
        this.linkedObjectsIds,
        required this.linkedObjectsFullLoaded,
        this.fkProject,
        this.fkProjet,
        this.contactId,
        this.user,
        this.origin,
        this.originId,
        this.refExt,
        this.statut,
        this.countryId,
        this.countryCode,
        this.stateId,
        this.regionId,
        this.barcodeType,
        this.barcodeTypeCoder,
        this.modeReglementId,
        this.condReglementId,
        this.demandReasonId,
        this.transportModeId,
        this.shippingMethodId,
        this.lastMainDoc,
        this.fkBank,
        this.fkAccount,
        this.totalHt,
        this.totalTva,
        this.totalLocaltax1,
        this.totalLocaltax2,
        this.totalTtc,
        this.lines,
        this.name,
        this.civilityId,
        this.dateValidation,
        this.dateModification,
        this.dateCloture,
        this.userAuthor,
        this.userCreation,
        this.userCreationId,
        this.userValid,
        this.userValidation,
        this.userValidationId,
        this.userClosingId,
        this.userModification,
        this.userModificationId,
        required this.specimen,
    });

    String module;
    dynamic emailFieldsNoPropagateInActioncomm;
    dynamic entity;
    String ref;
    int fkRecruitmentjobposition;
    String description;
    dynamic notePublic;
    dynamic notePrivate;
    int dateCreation;
    int tms;
    int fkUserCreat;
    dynamic fkUserModif;
    String lastname;
    String firstname;
    String email;
    String phone;
    int dateBirth;
    dynamic emailMsgid;
    dynamic remunerationRequested;
    dynamic remunerationProposed;
    dynamic fkRecruitmentOrigin;
    dynamic importKey;
    dynamic modelPdf;
    int status;
    int id;
    List<dynamic> validateFieldsErrors;
    List<dynamic> arrayOptions;
    dynamic arrayLanguages;
    dynamic contactsIds;
    dynamic linkedObjects;
    dynamic linkedObjectsIds;
    List<dynamic> linkedObjectsFullLoaded;
    dynamic fkProject;
    dynamic fkProjet;
    dynamic contactId;
    dynamic user;
    dynamic origin;
    dynamic originId;
    dynamic refExt;
    dynamic statut;
    dynamic countryId;
    dynamic countryCode;
    dynamic stateId;
    dynamic regionId;
    dynamic barcodeType;
    dynamic barcodeTypeCoder;
    dynamic modeReglementId;
    dynamic condReglementId;
    dynamic demandReasonId;
    dynamic transportModeId;
    dynamic shippingMethodId;
    dynamic lastMainDoc;
    dynamic fkBank;
    dynamic fkAccount;
    dynamic totalHt;
    dynamic totalTva;
    dynamic totalLocaltax1;
    dynamic totalLocaltax2;
    dynamic totalTtc;
    dynamic lines;
    dynamic name;
    dynamic civilityId;
    dynamic dateValidation;
    dynamic dateModification;
    dynamic dateCloture;
    dynamic userAuthor;
    dynamic userCreation;
    dynamic userCreationId;
    dynamic userValid;
    dynamic userValidation;
    dynamic userValidationId;
    dynamic userClosingId;
    dynamic userModification;
    dynamic userModificationId;
    int specimen;

    factory Candidature.fromJson(Map<String, dynamic> json) => Candidature(
        module: json["module"],
        emailFieldsNoPropagateInActioncomm: json["email_fields_no_propagate_in_actioncomm"],
        entity: json["entity"],
        ref: json["ref"],
        fkRecruitmentjobposition: json["fk_recruitmentjobposition"],
        description: json["description"],
        notePublic: json["note_public"],
        notePrivate: json["note_private"],
        dateCreation: json["date_creation"],
        tms: json["tms"],
        fkUserCreat: json["fk_user_creat"],
        fkUserModif: json["fk_user_modif"],
        lastname: json["lastname"],
        firstname: json["firstname"],
        email: json["email"],
        phone: json["phone"],
        dateBirth: json["date_birth"],
        emailMsgid: json["email_msgid"],
        remunerationRequested: json["remuneration_requested"],
        remunerationProposed: json["remuneration_proposed"],
        fkRecruitmentOrigin: json["fk_recruitment_origin"],
        importKey: json["import_key"],
        modelPdf: json["model_pdf"],
        status: json["status"],
        id: json["id"],
        validateFieldsErrors: List<dynamic>.from(json["validateFieldsErrors"].map((x) => x)),
        arrayOptions: List<dynamic>.from(json["array_options"].map((x) => x)),
        arrayLanguages: json["array_languages"],
        contactsIds: json["contacts_ids"],
        linkedObjects: json["linked_objects"],
        linkedObjectsIds: json["linkedObjectsIds"],
        linkedObjectsFullLoaded: List<dynamic>.from(json["linkedObjectsFullLoaded"].map((x) => x)),
        fkProject: json["fk_project"],
        fkProjet: json["fk_projet"],
        contactId: json["contact_id"],
        user: json["user"],
        origin: json["origin"],
        originId: json["origin_id"],
        refExt: json["ref_ext"],
        statut: json["statut"],
        countryId: json["country_id"],
        countryCode: json["country_code"],
        stateId: json["state_id"],
        regionId: json["region_id"],
        barcodeType: json["barcode_type"],
        barcodeTypeCoder: json["barcode_type_coder"],
        modeReglementId: json["mode_reglement_id"],
        condReglementId: json["cond_reglement_id"],
        demandReasonId: json["demand_reason_id"],
        transportModeId: json["transport_mode_id"],
        shippingMethodId: json["shipping_method_id"],
        lastMainDoc: json["last_main_doc"],
        fkBank: json["fk_bank"],
        fkAccount: json["fk_account"],
        totalHt: json["total_ht"],
        totalTva: json["total_tva"],
        totalLocaltax1: json["total_localtax1"],
        totalLocaltax2: json["total_localtax2"],
        totalTtc: json["total_ttc"],
        lines: json["lines"],
        name: json["name"],
        civilityId: json["civility_id"],
        dateValidation: json["date_validation"],
        dateModification: json["date_modification"],
        dateCloture: json["date_cloture"],
        userAuthor: json["user_author"],
        userCreation: json["user_creation"],
        userCreationId: json["user_creation_id"],
        userValid: json["user_valid"],
        userValidation: json["user_validation"],
        userValidationId: json["user_validation_id"],
        userClosingId: json["user_closing_id"],
        userModification: json["user_modification"],
        userModificationId: json["user_modification_id"],
        specimen: json["specimen"],
    );

    Map<String, dynamic> toJson() => {
        "module": module,
        "email_fields_no_propagate_in_actioncomm": emailFieldsNoPropagateInActioncomm,
        "entity": entity,
        "ref": ref,
        "fk_recruitmentjobposition": fkRecruitmentjobposition,
        "description": description,
        "note_public": notePublic,
        "note_private": notePrivate,
        "date_creation": dateCreation,
        "tms": tms,
        "fk_user_creat": fkUserCreat,
        "fk_user_modif": fkUserModif,
        "lastname": lastname,
        "firstname": firstname,
        "email": email,
        "phone": phone,
        "date_birth": dateBirth,
        "email_msgid": emailMsgid,
        "remuneration_requested": remunerationRequested,
        "remuneration_proposed": remunerationProposed,
        "fk_recruitment_origin": fkRecruitmentOrigin,
        "import_key": importKey,
        "model_pdf": modelPdf,
        "status": status,
        "id": id,
        "validateFieldsErrors": List<dynamic>.from(validateFieldsErrors.map((x) => x)),
        "array_options": List<dynamic>.from(arrayOptions.map((x) => x)),
        "array_languages": arrayLanguages,
        "contacts_ids": contactsIds,
        "linked_objects": linkedObjects,
        "linkedObjectsIds": linkedObjectsIds,
        "linkedObjectsFullLoaded": List<dynamic>.from(linkedObjectsFullLoaded.map((x) => x)),
        "fk_project": fkProject,
        "fk_projet": fkProjet,
        "contact_id": contactId,
        "user": user,
        "origin": origin,
        "origin_id": originId,
        "ref_ext": refExt,
        "statut": statut,
        "country_id": countryId,
        "country_code": countryCode,
        "state_id": stateId,
        "region_id": regionId,
        "barcode_type": barcodeType,
        "barcode_type_coder": barcodeTypeCoder,
        "mode_reglement_id": modeReglementId,
        "cond_reglement_id": condReglementId,
        "demand_reason_id": demandReasonId,
        "transport_mode_id": transportModeId,
        "shipping_method_id": shippingMethodId,
        "last_main_doc": lastMainDoc,
        "fk_bank": fkBank,
        "fk_account": fkAccount,
        "total_ht": totalHt,
        "total_tva": totalTva,
        "total_localtax1": totalLocaltax1,
        "total_localtax2": totalLocaltax2,
        "total_ttc": totalTtc,
        "lines": lines,
        "name": name,
        "civility_id": civilityId,
        "date_validation": dateValidation,
        "date_modification": dateModification,
        "date_cloture": dateCloture,
        "user_author": userAuthor,
        "user_creation": userCreation,
        "user_creation_id": userCreationId,
        "user_valid": userValid,
        "user_validation": userValidation,
        "user_validation_id": userValidationId,
        "user_closing_id": userClosingId,
        "user_modification": userModification,
        "user_modification_id": userModificationId,
        "specimen": specimen,
    };
}
