// To parse this JSON data, do
//
//     final poste = posteFromJson(jsonString);

import 'dart:convert';

List<Poste> posteFromJson(String str) => List<Poste>.from(json.decode(str).map((x) => Poste.fromJson(x)));

String posteToJson(List<Poste> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Poste {
    Poste({
        required this.module,
        required this.ref,
        this.entity,
        required this.label,
        required this.qty,
        this.fkSoc,
        this.fkProject,
        required this.fkUserRecruiter,
        required this.emailRecruiter,
        required this.remunerationSuggested,
        this.fkUserSupervisor,
        this.fkEstablishment,
        required this.datePlanned,
        required this.description,
        this.notePublic,
        this.notePrivate,
        required this.dateCreation,
        required this.tms,
        required this.fkUserCreat,
        this.fkUserModif,
        this.lastMainDoc,
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
        this.fkBank,
        this.fkAccount,
        this.totalHt,
        this.totalTva,
        this.totalLocaltax1,
        this.totalLocaltax2,
        this.totalTtc,
        this.lines,
        this.name,
        this.lastname,
        this.firstname,
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
    String ref;
    dynamic entity;
    String label;
    int qty;
    dynamic fkSoc;
    dynamic fkProject;
    int fkUserRecruiter;
    String emailRecruiter;
    String remunerationSuggested;
    int? fkUserSupervisor;
    dynamic fkEstablishment;
    dynamic datePlanned;
    String description;
    dynamic notePublic;
    dynamic notePrivate;
    int dateCreation;
    int tms;
    int fkUserCreat;
    dynamic fkUserModif;
    dynamic lastMainDoc;
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
    dynamic fkBank;
    dynamic fkAccount;
    dynamic totalHt;
    dynamic totalTva;
    dynamic totalLocaltax1;
    dynamic totalLocaltax2;
    dynamic totalTtc;
    dynamic lines;
    dynamic name;
    dynamic lastname;
    dynamic firstname;
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

    factory Poste.fromJson(Map<String, dynamic> json) => Poste(
        module: json["module"],
        ref: json["ref"],
        entity: json["entity"],
        label: json["label"],
        qty: json["qty"],
        fkSoc: json["fk_soc"],
        fkProject: json["fk_project"],
        fkUserRecruiter: json["fk_user_recruiter"],
        emailRecruiter: json["email_recruiter"],
        remunerationSuggested: json["remuneration_suggested"],
        fkUserSupervisor: json["fk_user_supervisor"],
        fkEstablishment: json["fk_establishment"],
        datePlanned: json["date_planned"],
        description: json["description"],
        notePublic: json["note_public"],
        notePrivate: json["note_private"],
        dateCreation: json["date_creation"],
        tms: json["tms"],
        fkUserCreat: json["fk_user_creat"],
        fkUserModif: json["fk_user_modif"],
        lastMainDoc: json["last_main_doc"],
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
        fkBank: json["fk_bank"],
        fkAccount: json["fk_account"],
        totalHt: json["total_ht"],
        totalTva: json["total_tva"],
        totalLocaltax1: json["total_localtax1"],
        totalLocaltax2: json["total_localtax2"],
        totalTtc: json["total_ttc"],
        lines: json["lines"],
        name: json["name"],
        lastname: json["lastname"],
        firstname: json["firstname"],
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
        "ref": ref,
        "entity": entity,
        "label": label,
        "qty": qty,
        "fk_soc": fkSoc,
        "fk_project": fkProject,
        "fk_user_recruiter": fkUserRecruiter,
        "email_recruiter": emailRecruiter,
        "remuneration_suggested": remunerationSuggested,
        "fk_user_supervisor": fkUserSupervisor,
        "fk_establishment": fkEstablishment,
        "date_planned": datePlanned,
        "description": description,
        "note_public": notePublic,
        "note_private": notePrivate,
        "date_creation": dateCreation,
        "tms": tms,
        "fk_user_creat": fkUserCreat,
        "fk_user_modif": fkUserModif,
        "last_main_doc": lastMainDoc,
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
        "fk_bank": fkBank,
        "fk_account": fkAccount,
        "total_ht": totalHt,
        "total_tva": totalTva,
        "total_localtax1": totalLocaltax1,
        "total_localtax2": totalLocaltax2,
        "total_ttc": totalTtc,
        "lines": lines,
        "name": name,
        "lastname": lastname,
        "firstname": firstname,
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
