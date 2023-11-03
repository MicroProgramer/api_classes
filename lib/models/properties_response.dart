/// YApi QuickType插件生成，具体参考文档:https://plugins.jetbrains.com/plugin/18847-yapi-quicktype/documentation

import 'dart:convert';

PropertiesResponse propertiesResponseFromJson(String str) => PropertiesResponse.fromJson(json.decode(str));

String propertiesResponseToJson(PropertiesResponse data) => json.encode(data.toJson());

class PropertiesResponse {
    PropertiesResponse({
        required this.data,
    });

    Data data;

    factory PropertiesResponse.fromJson(Map<dynamic, dynamic> json) => PropertiesResponse(
        data: Data.fromJson(json["data"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "data": data.toJson(),
    };
}

class Data {
    Data({
        required this.propertySearch,
    });

    PropertySearch propertySearch;

    factory Data.fromJson(Map<dynamic, dynamic> json) => Data(
        propertySearch: PropertySearch.fromJson(json["propertySearch"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "propertySearch": propertySearch.toJson(),
    };
}

class PropertySearch {
    PropertySearch({
        required this.summary,
        required this.searchCriteria,
        required this.typename,
        required this.shoppingContext,
        required this.universalSortAndFilter,
        required this.propertySearchListings,
        required this.clickstream,
        required this.map,
        required this.filterMetadata,
        required this.properties,
    });

    Summary summary;
    SearchCriteria searchCriteria;
    String typename;
    Clickstream shoppingContext;
    UniversalSortAndFilter universalSortAndFilter;
    List<Property> propertySearchListings;
    Clickstream clickstream;
    Clickstream map;
    FilterMetadata filterMetadata;
    List<Property> properties;

    factory PropertySearch.fromJson(Map<dynamic, dynamic> json) => PropertySearch(
        summary: Summary.fromJson(json["summary"]),
        searchCriteria: SearchCriteria.fromJson(json["searchCriteria"]),
        typename: json["__typename"],
        shoppingContext: Clickstream.fromJson(json["shoppingContext"]),
        universalSortAndFilter: UniversalSortAndFilter.fromJson(json["universalSortAndFilter"]),
        propertySearchListings: List<Property>.from(json["propertySearchListings"].map((x) => Property.fromJson(x))),
        clickstream: Clickstream.fromJson(json["clickstream"]),
        map: Clickstream.fromJson(json["map"]),
        filterMetadata: FilterMetadata.fromJson(json["filterMetadata"]),
        properties: List<Property>.from(json["properties"].map((x) => Property.fromJson(x))),
    );

    Map<dynamic, dynamic> toJson() => {
        "summary": summary.toJson(),
        "searchCriteria": searchCriteria.toJson(),
        "__typename": typename,
        "shoppingContext": shoppingContext.toJson(),
        "universalSortAndFilter": universalSortAndFilter.toJson(),
        "propertySearchListings": List<dynamic>.from(propertySearchListings.map((x) => x.toJson())),
        "clickstream": clickstream.toJson(),
        "map": map.toJson(),
        "filterMetadata": filterMetadata.toJson(),
        "properties": List<dynamic>.from(properties.map((x) => x.toJson())),
    };
}

class Clickstream {
    Clickstream({
        required this.typename,
    });

    String typename;

    factory Clickstream.fromJson(Map<dynamic, dynamic> json) => Clickstream(
        typename: json["__typename"],
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": typename,
    };
}

class FilterMetadata {
    FilterMetadata({
        required this.amenities,
        required this.neighborhoods,
        required this.typename,
        required this.priceRange,
    });

    List<Amenity> amenities;
    List<NeighborhoodElement> neighborhoods;
    String typename;
    PriceRange priceRange;

    factory FilterMetadata.fromJson(Map<dynamic, dynamic> json) => FilterMetadata(
        amenities: List<Amenity>.from(json["amenities"].map((x) => Amenity.fromJson(x))),
        neighborhoods: List<NeighborhoodElement>.from(json["neighborhoods"].map((x) => NeighborhoodElement.fromJson(x))),
        typename: json["__typename"],
        priceRange: PriceRange.fromJson(json["priceRange"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "amenities": List<dynamic>.from(amenities.map((x) => x.toJson())),
        "neighborhoods": List<dynamic>.from(neighborhoods.map((x) => x.toJson())),
        "__typename": typename,
        "priceRange": priceRange.toJson(),
    };
}

class Amenity {
    Amenity({
        required this.typename,
        required this.id,
    });

    String typename;
    int id;

    factory Amenity.fromJson(Map<dynamic, dynamic> json) => Amenity(
        typename: json["__typename"],
        id: json["id"],
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": typename,
        "id": id,
    };
}

class NeighborhoodElement {
    NeighborhoodElement({
        required this.regionId,
        required this.typename,
        required this.name,
    });

    String regionId;
    NeighborhoodTypename typename;
    String name;

    factory NeighborhoodElement.fromJson(Map<dynamic, dynamic> json) => NeighborhoodElement(
        regionId: json["regionId"],
        typename: neighborhoodTypenameValues.map[json["__typename"]]!,
        name: json["name"],
    );

    Map<dynamic, dynamic> toJson() => {
        "regionId": regionId,
        "__typename": neighborhoodTypenameValues.reverse[typename],
        "name": name,
    };
}

enum NeighborhoodTypename { NEIGHBORHOOD }

final neighborhoodTypenameValues = EnumValues({
    "Neighborhood": NeighborhoodTypename.NEIGHBORHOOD
});

class PriceRange {
    PriceRange({
        required this.min,
        required this.max,
        required this.typename,
        this.id,
    });

    double min;
    double max;
    String typename;
    String? id;

    factory PriceRange.fromJson(Map<dynamic, dynamic> json) => PriceRange(
        min: json["min"]?.toDouble(),
        max: json["max"]?.toDouble(),
        typename: json["__typename"],
        id: json["id"],
    );

    Map<dynamic, dynamic> toJson() => {
        "min": min,
        "max": max,
        "__typename": typename,
        "id": id,
    };
}

class Property {
    Property({
        this.propertyImage,
        this.offerSummary,
        this.priceAfterLoyaltyPointsApplied,
        this.offerBadge,
        required this.typename,
        this.saveTripItem,
        this.availability,
        this.destinationInfo,
        this.propertyFees,
        this.priceMetadata,
        this.reviews,
        this.regionId,
        this.mapMarker,
        this.price,
        this.name,
        this.id,
        this.featuredMessages,
        this.neighborhood,
    });

    PropertyImage? propertyImage;
    OfferSummary? offerSummary;
    PriceAfterLoyaltyPointsApplied? priceAfterLoyaltyPointsApplied;
    OfferBadge? offerBadge;
    String typename;
    SaveTripItem? saveTripItem;
    Availability? availability;
    DestinationInfo? destinationInfo;
    List<dynamic>? propertyFees;
    PriceMetadata? priceMetadata;
    Reviews? reviews;
    String? regionId;
    MapMarker? mapMarker;
    PropertyPrice? price;
    String? name;
    String? id;
    List<dynamic>? featuredMessages;
    PropertyNeighborhood? neighborhood;

    factory Property.fromJson(Map<dynamic, dynamic> json) => Property(
        propertyImage: json["propertyImage"] == null ? null : PropertyImage.fromJson(json["propertyImage"]),
        offerSummary: json["offerSummary"] == null ? null : OfferSummary.fromJson(json["offerSummary"]),
        priceAfterLoyaltyPointsApplied: json["priceAfterLoyaltyPointsApplied"] == null ? null : PriceAfterLoyaltyPointsApplied.fromJson(json["priceAfterLoyaltyPointsApplied"]),
        offerBadge: json["offerBadge"] == null ? null : OfferBadge.fromJson(json["offerBadge"]),
        typename: json["__typename"],
        saveTripItem: json["saveTripItem"] == null ? null : SaveTripItem.fromJson(json["saveTripItem"]),
        availability: json["availability"] == null ? null : Availability.fromJson(json["availability"]),
        destinationInfo: json["destinationInfo"] == null ? null : DestinationInfo.fromJson(json["destinationInfo"]),
        propertyFees: json["propertyFees"] == null ? [] : List<dynamic>.from(json["propertyFees"]!.map((x) => x)),
        priceMetadata: json["priceMetadata"] == null ? null : PriceMetadata.fromJson(json["priceMetadata"]),
        reviews: json["reviews"] == null ? null : Reviews.fromJson(json["reviews"]),
        regionId: json["regionId"],
        mapMarker: json["mapMarker"] == null ? null : MapMarker.fromJson(json["mapMarker"]),
        price: json["price"] == null ? null : PropertyPrice.fromJson(json["price"]),
        name: json["name"],
        id: json["id"],
        featuredMessages: json["featuredMessages"] == null ? [] : List<dynamic>.from(json["featuredMessages"]!.map((x) => x)),
        neighborhood: json["neighborhood"] == null ? null : PropertyNeighborhood.fromJson(json["neighborhood"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "propertyImage": propertyImage?.toJson(),
        "offerSummary": offerSummary?.toJson(),
        "priceAfterLoyaltyPointsApplied": priceAfterLoyaltyPointsApplied?.toJson(),
        "offerBadge": offerBadge?.toJson(),
        "__typename": typename,
        "saveTripItem": saveTripItem?.toJson(),
        "availability": availability?.toJson(),
        "destinationInfo": destinationInfo?.toJson(),
        "propertyFees": propertyFees == null ? [] : List<dynamic>.from(propertyFees!.map((x) => x)),
        "priceMetadata": priceMetadata?.toJson(),
        "reviews": reviews?.toJson(),
        "regionId": regionId,
        "mapMarker": mapMarker?.toJson(),
        "price": price?.toJson(),
        "name": name,
        "id": id,
        "featuredMessages": featuredMessages == null ? [] : List<dynamic>.from(featuredMessages!.map((x) => x)),
        "neighborhood": neighborhood?.toJson(),
    };
}

class Availability {
    Availability({
        required this.minRoomsLeft,
        required this.typename,
        required this.available,
    });

    int minRoomsLeft;
    String typename;
    bool available;

    factory Availability.fromJson(Map<dynamic, dynamic> json) => Availability(
        minRoomsLeft: json["minRoomsLeft"],
        typename: json["__typename"],
        available: json["available"],
    );

    Map<dynamic, dynamic> toJson() => {
        "minRoomsLeft": minRoomsLeft,
        "__typename": typename,
        "available": available,
    };
}

class DestinationInfo {
    DestinationInfo({
        this.distanceFromMessaging,
        required this.regionId,
        required this.typename,
        required this.distanceFromDestination,
    });

    String? distanceFromMessaging;
    String regionId;
    String typename;
    DistanceFromDestination distanceFromDestination;

    factory DestinationInfo.fromJson(Map<dynamic, dynamic> json) => DestinationInfo(
        distanceFromMessaging: json["distanceFromMessaging"],
        regionId: json["regionId"],
        typename: json["__typename"],
        distanceFromDestination: DistanceFromDestination.fromJson(json["distanceFromDestination"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "distanceFromMessaging": distanceFromMessaging,
        "regionId": regionId,
        "__typename": typename,
        "distanceFromDestination": distanceFromDestination.toJson(),
    };
}

class DistanceFromDestination {
    DistanceFromDestination({
        required this.unit,
        required this.typename,
        required this.value,
    });

    String unit;
    String typename;
    double value;

    factory DistanceFromDestination.fromJson(Map<dynamic, dynamic> json) => DistanceFromDestination(
        unit: json["unit"],
        typename: json["__typename"],
        value: json["value"]?.toDouble(),
    );

    Map<dynamic, dynamic> toJson() => {
        "unit": unit,
        "__typename": typename,
        "value": value,
    };
}

class MapMarker {
    MapMarker({
        required this.latLong,
        required this.typename,
        required this.label,
    });

    LatLong latLong;
    String typename;
    LabelEnum label;

    factory MapMarker.fromJson(Map<dynamic, dynamic> json) => MapMarker(
        latLong: LatLong.fromJson(json["latLong"]),
        typename: json["__typename"],
        label: labelEnumValues.map[json["label"]]!,
    );

    Map<dynamic, dynamic> toJson() => {
        "latLong": latLong.toJson(),
        "__typename": typename,
        "label": labelEnumValues.reverse[label],
    };
}

enum LabelEnum { THE_106, THE_111, THE_117, THE_123 }

final labelEnumValues = EnumValues({
    "\u0024106": LabelEnum.THE_106,
    "\u0024111": LabelEnum.THE_111,
    "\u0024117": LabelEnum.THE_117,
    "\u0024123": LabelEnum.THE_123
});

class LatLong {
    LatLong({
        required this.typename,
        required this.latitude,
        required this.longitude,
    });

    String typename;
    double latitude;
    double longitude;

    factory LatLong.fromJson(Map<dynamic, dynamic> json) => LatLong(
        typename: json["__typename"],
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": typename,
        "latitude": latitude,
        "longitude": longitude,
    };
}

class PropertyNeighborhood {
    PropertyNeighborhood({
        required this.typename,
        required this.name,
    });

    String typename;
    String name;

    factory PropertyNeighborhood.fromJson(Map<dynamic, dynamic> json) => PropertyNeighborhood(
        typename: json["__typename"],
        name: json["name"],
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": typename,
        "name": name,
    };
}

class OfferBadge {
    OfferBadge({
        required this.secondary,
        required this.typename,
        required this.primary,
    });

    Ary secondary;
    String typename;
    Ary primary;

    factory OfferBadge.fromJson(Map<dynamic, dynamic> json) => OfferBadge(
        secondary: Ary.fromJson(json["secondary"]),
        typename: json["__typename"],
        primary: Ary.fromJson(json["primary"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "secondary": secondary.toJson(),
        "__typename": typename,
        "primary": primary.toJson(),
    };
}

class Ary {
    Ary({
        required this.iconTemp,
        required this.themeTemp,
        required this.typename,
        required this.text,
    });

    Icon iconTemp;
    String themeTemp;
    String typename;
    String text;

    factory Ary.fromJson(Map<dynamic, dynamic> json) => Ary(
        iconTemp: Icon.fromJson(json["icon_temp"]),
        themeTemp: json["theme_temp"],
        typename: json["__typename"],
        text: json["text"],
    );

    Map<dynamic, dynamic> toJson() => {
        "icon_temp": iconTemp.toJson(),
        "theme_temp": themeTemp,
        "__typename": typename,
        "text": text,
    };
}

class Icon {
    Icon({
        required this.typename,
        required this.description,
        required this.id,
        this.token,
    });

    IconTypename typename;
    Description description;
    String id;
    String? token;

    factory Icon.fromJson(Map<dynamic, dynamic> json) => Icon(
        typename: iconTypenameValues.map[json["__typename"]]!,
        description: descriptionValues.map[json["description"]]!,
        id: json["id"],
        token: json["token"],
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": iconTypenameValues.reverse[typename],
        "description": descriptionValues.reverse[description],
        "id": id,
        "token": token,
    };
}

enum Description { SMARTPHONE, MOD, MAGNIFYING_GLASS, EMPTY, STAR, REVEALS_SORT_AND_FILTER_WINDOW }

final descriptionValues = EnumValues({
    "": Description.EMPTY,
    "magnifying glass": Description.MAGNIFYING_GLASS,
    "mod": Description.MOD,
    "reveals sort and filter window": Description.REVEALS_SORT_AND_FILTER_WINDOW,
    "smartphone": Description.SMARTPHONE,
    "star": Description.STAR
});

enum IconTypename { ICON }

final iconTypenameValues = EnumValues({
    "Icon": IconTypename.ICON
});

class OfferSummary {
    OfferSummary({
        required this.typename,
        required this.messages,
        required this.attributes,
    });

    String typename;
    List<dynamic> messages;
    List<dynamic> attributes;

    factory OfferSummary.fromJson(Map<dynamic, dynamic> json) => OfferSummary(
        typename: json["__typename"],
        messages: List<dynamic>.from(json["messages"].map((x) => x)),
        attributes: List<dynamic>.from(json["attributes"].map((x) => x)),
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": typename,
        "messages": List<dynamic>.from(messages.map((x) => x)),
        "attributes": List<dynamic>.from(attributes.map((x) => x)),
    };
}

class PropertyPrice {
    PropertyPrice({
        required this.strikeOut,
        required this.priceMessages,
        required this.displayMessages,
        required this.strikeOutType,
        required this.typename,
        required this.options,
        required this.lead,
    });

    Lead strikeOut;
    List<PriceMessage> priceMessages;
    List<DisplayMessage> displayMessages;
    String strikeOutType;
    String typename;
    List<PriceOption> options;
    Lead lead;

    factory PropertyPrice.fromJson(Map<dynamic, dynamic> json) => PropertyPrice(
        strikeOut: Lead.fromJson(json["strikeOut"]),
        priceMessages: List<PriceMessage>.from(json["priceMessages"].map((x) => PriceMessage.fromJson(x))),
        displayMessages: List<DisplayMessage>.from(json["displayMessages"].map((x) => DisplayMessage.fromJson(x))),
        strikeOutType: json["strikeOutType"],
        typename: json["__typename"],
        options: List<PriceOption>.from(json["options"].map((x) => PriceOption.fromJson(x))),
        lead: Lead.fromJson(json["lead"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "strikeOut": strikeOut.toJson(),
        "priceMessages": List<dynamic>.from(priceMessages.map((x) => x.toJson())),
        "displayMessages": List<dynamic>.from(displayMessages.map((x) => x.toJson())),
        "strikeOutType": strikeOutType,
        "__typename": typename,
        "options": List<dynamic>.from(options.map((x) => x.toJson())),
        "lead": lead.toJson(),
    };
}

class DisplayMessage {
    DisplayMessage({
        required this.lineItems,
        required this.typename,
    });

    List<LineItem> lineItems;
    DisplayMessageTypename typename;

    factory DisplayMessage.fromJson(Map<dynamic, dynamic> json) => DisplayMessage(
        lineItems: List<LineItem>.from(json["lineItems"].map((x) => LineItem.fromJson(x))),
        typename: displayMessageTypenameValues.map[json["__typename"]]!,
    );

    Map<dynamic, dynamic> toJson() => {
        "lineItems": List<dynamic>.from(lineItems.map((x) => x.toJson())),
        "__typename": displayMessageTypenameValues.reverse[typename],
    };
}

class LineItem {
    LineItem({
        this.role,
        this.price,
        required this.typename,
        this.disclaimer,
        this.value,
    });

    String? role;
    LineItemPrice? price;
    LineItemTypename typename;
    Disclaimer? disclaimer;
    String? value;

    factory LineItem.fromJson(Map<dynamic, dynamic> json) => LineItem(
        role: json["role"],
        price: json["price"] == null ? null : LineItemPrice.fromJson(json["price"]),
        typename: lineItemTypenameValues.map[json["__typename"]]!,
        disclaimer: json["disclaimer"] == null ? null : Disclaimer.fromJson(json["disclaimer"]),
        value: json["value"],
    );

    Map<dynamic, dynamic> toJson() => {
        "role": role,
        "price": price?.toJson(),
        "__typename": lineItemTypenameValues.reverse[typename],
        "disclaimer": disclaimer?.toJson(),
        "value": value,
    };
}

class Disclaimer {
    Disclaimer({
        required this.typename,
        required this.content,
    });

    String typename;
    List<String> content;

    factory Disclaimer.fromJson(Map<dynamic, dynamic> json) => Disclaimer(
        typename: json["__typename"],
        content: List<String>.from(json["content"].map((x) => x)),
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": typename,
        "content": List<dynamic>.from(content.map((x) => x)),
    };
}

class LineItemPrice {
    LineItemPrice({
        required this.formatted,
        required this.typename,
        required this.accessibilityLabel,
    });

    LabelEnum formatted;
    String typename;
    String accessibilityLabel;

    factory LineItemPrice.fromJson(Map<dynamic, dynamic> json) => LineItemPrice(
        formatted: labelEnumValues.map[json["formatted"]]!,
        typename: json["__typename"],
        accessibilityLabel: json["accessibilityLabel"],
    );

    Map<dynamic, dynamic> toJson() => {
        "formatted": labelEnumValues.reverse[formatted],
        "__typename": typename,
        "accessibilityLabel": accessibilityLabel,
    };
}

enum LineItemTypename { DISPLAY_PRICE, LODGING_ENRICHED_MESSAGE }

final lineItemTypenameValues = EnumValues({
    "DisplayPrice": LineItemTypename.DISPLAY_PRICE,
    "LodgingEnrichedMessage": LineItemTypename.LODGING_ENRICHED_MESSAGE
});

enum DisplayMessageTypename { PRICE_DISPLAY_MESSAGE }

final displayMessageTypenameValues = EnumValues({
    "PriceDisplayMessage": DisplayMessageTypename.PRICE_DISPLAY_MESSAGE
});

class Lead {
    Lead({
        required this.amount,
        required this.formatted,
        required this.typename,
        this.currencyInfo,
    });

    double amount;
    LabelEnum formatted;
    LeadTypename typename;
    CurrencyInfo? currencyInfo;

    factory Lead.fromJson(Map<dynamic, dynamic> json) => Lead(
        amount: json["amount"]?.toDouble(),
        formatted: labelEnumValues.map[json["formatted"]]!,
        typename: leadTypenameValues.map[json["__typename"]]!,
        currencyInfo: json["currencyInfo"] == null ? null : CurrencyInfo.fromJson(json["currencyInfo"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "amount": amount,
        "formatted": labelEnumValues.reverse[formatted],
        "__typename": leadTypenameValues.reverse[typename],
        "currencyInfo": currencyInfo?.toJson(),
    };
}

class CurrencyInfo {
    CurrencyInfo({
        required this.symbol,
        required this.code,
        required this.typename,
    });

    Symbol symbol;
    Code code;
    CurrencyInfoTypename typename;

    factory CurrencyInfo.fromJson(Map<dynamic, dynamic> json) => CurrencyInfo(
        symbol: symbolValues.map[json["symbol"]]!,
        code: codeValues.map[json["code"]]!,
        typename: currencyInfoTypenameValues.map[json["__typename"]]!,
    );

    Map<dynamic, dynamic> toJson() => {
        "symbol": symbolValues.reverse[symbol],
        "code": codeValues.reverse[code],
        "__typename": currencyInfoTypenameValues.reverse[typename],
    };
}

enum Code { USD }

final codeValues = EnumValues({
    "USD": Code.USD
});

enum Symbol { EMPTY }

final symbolValues = EnumValues({
    "\u0024": Symbol.EMPTY
});

enum CurrencyInfoTypename { CURRENCY }

final currencyInfoTypenameValues = EnumValues({
    "Currency": CurrencyInfoTypename.CURRENCY
});

enum LeadTypename { MONEY }

final leadTypenameValues = EnumValues({
    "Money": LeadTypename.MONEY
});

class PriceOption {
    PriceOption({
        required this.strikeOut,
        required this.typename,
        required this.formattedDisplayPrice,
        required this.disclaimer,
    });

    Lead strikeOut;
    String typename;
    LabelEnum formattedDisplayPrice;
    PriceMessage disclaimer;

    factory PriceOption.fromJson(Map<dynamic, dynamic> json) => PriceOption(
        strikeOut: Lead.fromJson(json["strikeOut"]),
        typename: json["__typename"],
        formattedDisplayPrice: labelEnumValues.map[json["formattedDisplayPrice"]]!,
        disclaimer: PriceMessage.fromJson(json["disclaimer"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "strikeOut": strikeOut.toJson(),
        "__typename": typename,
        "formattedDisplayPrice": labelEnumValues.reverse[formattedDisplayPrice],
        "disclaimer": disclaimer.toJson(),
    };
}

class PriceMessage {
    PriceMessage({
        required this.typename,
        required this.value,
    });

    PriceMessageTypename typename;
    String value;

    factory PriceMessage.fromJson(Map<dynamic, dynamic> json) => PriceMessage(
        typename: priceMessageTypenameValues.map[json["__typename"]]!,
        value: json["value"],
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": priceMessageTypenameValues.reverse[typename],
        "value": value,
    };
}

enum PriceMessageTypename { LODGING_PLAIN_MESSAGE, HTTP_URI }

final priceMessageTypenameValues = EnumValues({
    "HttpURI": PriceMessageTypename.HTTP_URI,
    "LodgingPlainMessage": PriceMessageTypename.LODGING_PLAIN_MESSAGE
});

class PriceAfterLoyaltyPointsApplied {
    PriceAfterLoyaltyPointsApplied({
        required this.typename,
        required this.options,
        required this.lead,
    });

    String typename;
    List<PriceOption> options;
    Lead lead;

    factory PriceAfterLoyaltyPointsApplied.fromJson(Map<dynamic, dynamic> json) => PriceAfterLoyaltyPointsApplied(
        typename: json["__typename"],
        options: List<PriceOption>.from(json["options"].map((x) => PriceOption.fromJson(x))),
        lead: Lead.fromJson(json["lead"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": typename,
        "options": List<dynamic>.from(options.map((x) => x.toJson())),
        "lead": lead.toJson(),
    };
}

class PriceMetadata {
    PriceMetadata({
        required this.typename,
        required this.totalDiscountPercentage,
        required this.discountType,
        required this.rateDiscount,
    });

    String typename;
    int totalDiscountPercentage;
    String discountType;
    RateDiscount rateDiscount;

    factory PriceMetadata.fromJson(Map<dynamic, dynamic> json) => PriceMetadata(
        typename: json["__typename"],
        totalDiscountPercentage: json["totalDiscountPercentage"],
        discountType: json["discountType"],
        rateDiscount: RateDiscount.fromJson(json["rateDiscount"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": typename,
        "totalDiscountPercentage": totalDiscountPercentage,
        "discountType": discountType,
        "rateDiscount": rateDiscount.toJson(),
    };
}

class RateDiscount {
    RateDiscount({
        required this.typename,
        required this.description,
    });

    String typename;
    String description;

    factory RateDiscount.fromJson(Map<dynamic, dynamic> json) => RateDiscount(
        typename: json["__typename"],
        description: json["description"],
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": typename,
        "description": description,
    };
}

class PropertyImage {
    PropertyImage({
        required this.image,
        required this.typename,
        required this.alt,
        required this.subjectId,
    });

    Image image;
    String typename;
    String alt;
    int subjectId;

    factory PropertyImage.fromJson(Map<dynamic, dynamic> json) => PropertyImage(
        image: Image.fromJson(json["image"]),
        typename: json["__typename"],
        alt: json["alt"],
        subjectId: json["subjectId"],
    );

    Map<dynamic, dynamic> toJson() => {
        "image": image.toJson(),
        "__typename": typename,
        "alt": alt,
        "subjectId": subjectId,
    };
}

class Image {
    Image({
        required this.typename,
        required this.description,
        required this.url,
    });

    String typename;
    String description;
    String url;

    factory Image.fromJson(Map<dynamic, dynamic> json) => Image(
        typename: json["__typename"],
        description: json["description"],
        url: json["url"],
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": typename,
        "description": description,
        "url": url,
    };
}

class Reviews {
    Reviews({
        required this.score,
        required this.total,
        required this.typename,
    });

    int score;
    int total;
    String typename;

    factory Reviews.fromJson(Map<dynamic, dynamic> json) => Reviews(
        score: json["score"],
        total: json["total"],
        typename: json["__typename"],
    );

    Map<dynamic, dynamic> toJson() => {
        "score": score,
        "total": total,
        "__typename": typename,
    };
}

class SaveTripItem {
    SaveTripItem({
        required this.itemId,
        required this.initialChecked,
        required this.typename,
        required this.save,
        required this.attributes,
        required this.source,
        required this.remove,
    });

    String itemId;
    bool initialChecked;
    String typename;
    Remove save;
    Attributes attributes;
    String source;
    Remove remove;

    factory SaveTripItem.fromJson(Map<dynamic, dynamic> json) => SaveTripItem(
        itemId: json["itemId"],
        initialChecked: json["initialChecked"],
        typename: json["__typename"],
        save: Remove.fromJson(json["save"]),
        attributes: Attributes.fromJson(json["attributes"]),
        source: json["source"],
        remove: Remove.fromJson(json["remove"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "itemId": itemId,
        "initialChecked": initialChecked,
        "__typename": typename,
        "save": save.toJson(),
        "attributes": attributes.toJson(),
        "source": source,
        "remove": remove.toJson(),
    };
}

class Attributes {
    Attributes({
        required this.checkoutDate,
        required this.roomConfiguration,
        required this.regionId,
        required this.typename,
        required this.checkInDate,
    });

    CheckDate checkoutDate;
    List<RoomConfiguration> roomConfiguration;
    String regionId;
    String typename;
    CheckDate checkInDate;

    factory Attributes.fromJson(Map<dynamic, dynamic> json) => Attributes(
        checkoutDate: CheckDate.fromJson(json["checkoutDate"]),
        roomConfiguration: List<RoomConfiguration>.from(json["roomConfiguration"].map((x) => RoomConfiguration.fromJson(x))),
        regionId: json["regionId"],
        typename: json["__typename"],
        checkInDate: CheckDate.fromJson(json["checkInDate"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "checkoutDate": checkoutDate.toJson(),
        "roomConfiguration": List<dynamic>.from(roomConfiguration.map((x) => x.toJson())),
        "regionId": regionId,
        "__typename": typename,
        "checkInDate": checkInDate.toJson(),
    };
}

class CheckDate {
    CheckDate({
        required this.month,
        required this.year,
        required this.typename,
        required this.day,
    });

    int month;
    int year;
    CheckInDateTypename typename;
    int day;

    factory CheckDate.fromJson(Map<dynamic, dynamic> json) => CheckDate(
        month: json["month"],
        year: json["year"],
        typename: checkInDateTypenameValues.map[json["__typename"]]!,
        day: json["day"],
    );

    Map<dynamic, dynamic> toJson() => {
        "month": month,
        "year": year,
        "__typename": checkInDateTypenameValues.reverse[typename],
        "day": day,
    };
}

enum CheckInDateTypename { DATE }

final checkInDateTypenameValues = EnumValues({
    "Date": CheckInDateTypename.DATE
});

class RoomConfiguration {
    RoomConfiguration({
        required this.numberOfAdults,
        required this.typename,
        required this.childAges,
    });

    int numberOfAdults;
    String typename;
    List<int> childAges;

    factory RoomConfiguration.fromJson(Map<dynamic, dynamic> json) => RoomConfiguration(
        numberOfAdults: json["numberOfAdults"],
        typename: json["__typename"],
        childAges: List<int>.from(json["childAges"].map((x) => x)),
    );

    Map<dynamic, dynamic> toJson() => {
        "numberOfAdults": numberOfAdults,
        "__typename": typename,
        "childAges": List<dynamic>.from(childAges.map((x) => x)),
    };
}

class Remove {
    Remove({
        required this.analytics,
        required this.accessibility,
        required this.typename,
        this.actionType,
    });

    Analytics analytics;
    String accessibility;
    String typename;
    String? actionType;

    factory Remove.fromJson(Map<dynamic, dynamic> json) => Remove(
        analytics: Analytics.fromJson(json["analytics"]),
        accessibility: json["accessibility"],
        typename: json["__typename"],
        actionType: json["actionType"],
    );

    Map<dynamic, dynamic> toJson() => {
        "analytics": analytics.toJson(),
        "accessibility": accessibility,
        "__typename": typename,
        "actionType": actionType,
    };
}

class Analytics {
    Analytics({
        required this.referrerId,
        required this.typename,
        required this.linkName,
    });

    String referrerId;
    AnalyticsTypename typename;
    String linkName;

    factory Analytics.fromJson(Map<dynamic, dynamic> json) => Analytics(
        referrerId: json["referrerId"],
        typename: analyticsTypenameValues.map[json["__typename"]]!,
        linkName: json["linkName"],
    );

    Map<dynamic, dynamic> toJson() => {
        "referrerId": referrerId,
        "__typename": analyticsTypenameValues.reverse[typename],
        "linkName": linkName,
    };
}

enum AnalyticsTypename { CLIENT_SIDE_ANALYTICS }

final analyticsTypenameValues = EnumValues({
    "ClientSideAnalytics": AnalyticsTypename.CLIENT_SIDE_ANALYTICS
});

class SearchCriteria {
    SearchCriteria({
        required this.typename,
        required this.resolvedDateRange,
    });

    String typename;
    ResolvedDateRange resolvedDateRange;

    factory SearchCriteria.fromJson(Map<dynamic, dynamic> json) => SearchCriteria(
        typename: json["__typename"],
        resolvedDateRange: ResolvedDateRange.fromJson(json["resolvedDateRange"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": typename,
        "resolvedDateRange": resolvedDateRange.toJson(),
    };
}

class ResolvedDateRange {
    ResolvedDateRange({
        required this.checkOutDate,
        required this.typename,
        required this.checkInDate,
    });

    CheckDate checkOutDate;
    String typename;
    CheckDate checkInDate;

    factory ResolvedDateRange.fromJson(Map<dynamic, dynamic> json) => ResolvedDateRange(
        checkOutDate: CheckDate.fromJson(json["checkOutDate"]),
        typename: json["__typename"],
        checkInDate: CheckDate.fromJson(json["checkInDate"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "checkOutDate": checkOutDate.toJson(),
        "__typename": typename,
        "checkInDate": checkInDate.toJson(),
    };
}

class Summary {
    Summary({
        required this.pricingScheme,
        required this.typename,
        required this.resultsTitleModel,
        required this.matchedPropertiesSize,
        required this.loyaltyInfo,
        required this.resultsSummary,
    });

    PricingScheme pricingScheme;
    String typename;
    ResultsTitleModel resultsTitleModel;
    int matchedPropertiesSize;
    Clickstream loyaltyInfo;
    List<ResultsSummary> resultsSummary;

    factory Summary.fromJson(Map<dynamic, dynamic> json) => Summary(
        pricingScheme: PricingScheme.fromJson(json["pricingScheme"]),
        typename: json["__typename"],
        resultsTitleModel: ResultsTitleModel.fromJson(json["resultsTitleModel"]),
        matchedPropertiesSize: json["matchedPropertiesSize"],
        loyaltyInfo: Clickstream.fromJson(json["loyaltyInfo"]),
        resultsSummary: List<ResultsSummary>.from(json["resultsSummary"].map((x) => ResultsSummary.fromJson(x))),
    );

    Map<dynamic, dynamic> toJson() => {
        "pricingScheme": pricingScheme.toJson(),
        "__typename": typename,
        "resultsTitleModel": resultsTitleModel.toJson(),
        "matchedPropertiesSize": matchedPropertiesSize,
        "loyaltyInfo": loyaltyInfo.toJson(),
        "resultsSummary": List<dynamic>.from(resultsSummary.map((x) => x.toJson())),
    };
}

class PricingScheme {
    PricingScheme({
        required this.typename,
        required this.type,
    });

    String typename;
    String type;

    factory PricingScheme.fromJson(Map<dynamic, dynamic> json) => PricingScheme(
        typename: json["__typename"],
        type: json["type"],
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": typename,
        "type": type,
    };
}

class ResultsSummary {
    ResultsSummary({
        required this.typename,
        this.link,
        this.accessibilityLabel,
        this.value,
    });

    String typename;
    Link? link;
    String? accessibilityLabel;
    String? value;

    factory ResultsSummary.fromJson(Map<dynamic, dynamic> json) => ResultsSummary(
        typename: json["__typename"],
        link: json["link"] == null ? null : Link.fromJson(json["link"]),
        accessibilityLabel: json["accessibilityLabel"],
        value: json["value"],
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": typename,
        "link": link?.toJson(),
        "accessibilityLabel": accessibilityLabel,
        "value": value,
    };
}

class Link {
    Link({
        required this.typename,
        required this.clientSideAnalytics,
        required this.uri,
    });

    String typename;
    Analytics clientSideAnalytics;
    PriceMessage uri;

    factory Link.fromJson(Map<dynamic, dynamic> json) => Link(
        typename: json["__typename"],
        clientSideAnalytics: Analytics.fromJson(json["clientSideAnalytics"]),
        uri: PriceMessage.fromJson(json["uri"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": typename,
        "clientSideAnalytics": clientSideAnalytics.toJson(),
        "uri": uri.toJson(),
    };
}

class ResultsTitleModel {
    ResultsTitleModel({
        required this.typename,
        required this.header,
    });

    String typename;
    String header;

    factory ResultsTitleModel.fromJson(Map<dynamic, dynamic> json) => ResultsTitleModel(
        typename: json["__typename"],
        header: json["header"],
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": typename,
        "header": header,
    };
}

class UniversalSortAndFilter {
    UniversalSortAndFilter({
        required this.toolbar,
        required this.revealAction,
        required this.sortSections,
        required this.typename,
        required this.filterSections,
        required this.applyAction,
    });

    Toolbar toolbar;
    RevealAction revealAction;
    List<SortSection> sortSections;
    String typename;
    List<FilterSection> filterSections;
    ApplyAction applyAction;

    factory UniversalSortAndFilter.fromJson(Map<dynamic, dynamic> json) => UniversalSortAndFilter(
        toolbar: Toolbar.fromJson(json["toolbar"]),
        revealAction: RevealAction.fromJson(json["revealAction"]),
        sortSections: List<SortSection>.from(json["sortSections"].map((x) => SortSection.fromJson(x))),
        typename: json["__typename"],
        filterSections: List<FilterSection>.from(json["filterSections"].map((x) => FilterSection.fromJson(x))),
        applyAction: ApplyAction.fromJson(json["applyAction"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "toolbar": toolbar.toJson(),
        "revealAction": revealAction.toJson(),
        "sortSections": List<dynamic>.from(sortSections.map((x) => x.toJson())),
        "__typename": typename,
        "filterSections": List<dynamic>.from(filterSections.map((x) => x.toJson())),
        "applyAction": applyAction.toJson(),
    };
}

class ApplyAction {
    ApplyAction({
        required this.accessibility,
        required this.typename,
        required this.action,
        required this.disabled,
        required this.primary,
    });

    String accessibility;
    String typename;
    Action action;
    bool disabled;
    String primary;

    factory ApplyAction.fromJson(Map<dynamic, dynamic> json) => ApplyAction(
        accessibility: json["accessibility"],
        typename: json["__typename"],
        action: Action.fromJson(json["action"]),
        disabled: json["disabled"],
        primary: json["primary"],
    );

    Map<dynamic, dynamic> toJson() => {
        "accessibility": accessibility,
        "__typename": typename,
        "action": action.toJson(),
        "disabled": disabled,
        "primary": primary,
    };
}

class Action {
    Action({
        required this.analytics,
        required this.actionType,
        required this.typename,
    });

    Analytics analytics;
    String actionType;
    String typename;

    factory Action.fromJson(Map<dynamic, dynamic> json) => Action(
        analytics: Analytics.fromJson(json["analytics"]),
        actionType: json["actionType"],
        typename: json["__typename"],
    );

    Map<dynamic, dynamic> toJson() => {
        "analytics": analytics.toJson(),
        "actionType": actionType,
        "__typename": typename,
    };
}

class FilterSection {
    FilterSection({
        required this.typename,
        required this.title,
        required this.fields,
    });

    String typename;
    String title;
    List<FilterSectionField> fields;

    factory FilterSection.fromJson(Map<dynamic, dynamic> json) => FilterSection(
        typename: json["__typename"],
        title: json["title"],
        fields: List<FilterSectionField>.from(json["fields"].map((x) => FilterSectionField.fromJson(x))),
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": typename,
        "title": title,
        "fields": List<dynamic>.from(fields.map((x) => x.toJson())),
    };
}

class FilterSectionField {
    FilterSectionField({
        this.typeaheadInfo,
        this.analytics,
        required this.typename,
        this.icon,
        this.action,
        this.id,
        this.placeholder,
        this.multiSelectionOptions,
        this.expando,
        this.primary,
        this.range,
        this.options,
        this.tileMultiSelectionOptions,
    });

    TypeaheadInfo? typeaheadInfo;
    Analytics? analytics;
    String typename;
    Icon? icon;
    Action? action;
    String? id;
    String? placeholder;
    List<DropdownFilterOptionElement>? multiSelectionOptions;
    Expando? expando;
    String? primary;
    Range? range;
    List<DropdownFilterOptionElement>? options;
    List<DropdownFilterOptionElement>? tileMultiSelectionOptions;

    factory FilterSectionField.fromJson(Map<dynamic, dynamic> json) => FilterSectionField(
        typeaheadInfo: json["typeaheadInfo"] == null ? null : TypeaheadInfo.fromJson(json["typeaheadInfo"]),
        analytics: json["analytics"] == null ? null : Analytics.fromJson(json["analytics"]),
        typename: json["__typename"],
        icon: json["icon"] == null ? null : Icon.fromJson(json["icon"]),
        action: json["action"] == null ? null : Action.fromJson(json["action"]),
        id: json["id"],
        placeholder: json["placeholder"],
        multiSelectionOptions: json["multiSelectionOptions"] == null ? [] : List<DropdownFilterOptionElement>.from(json["multiSelectionOptions"]!.map((x) => DropdownFilterOptionElement.fromJson(x))),
        expando: json["expando"] == null ? null : Expando.fromJson(json["expando"]),
        primary: json["primary"],
        range: json["range"] == null ? null : Range.fromJson(json["range"]),
        options: json["options"] == null ? [] : List<DropdownFilterOptionElement>.from(json["options"]!.map((x) => DropdownFilterOptionElement.fromJson(x))),
        tileMultiSelectionOptions: json["tileMultiSelectionOptions"] == null ? [] : List<DropdownFilterOptionElement>.from(json["tileMultiSelectionOptions"]!.map((x) => DropdownFilterOptionElement.fromJson(x))),
    );

    Map<dynamic, dynamic> toJson() => {
        "typeaheadInfo": typeaheadInfo?.toJson(),
        "analytics": analytics?.toJson(),
        "__typename": typename,
        "icon": icon?.toJson(),
        "action": action?.toJson(),
        "id": id,
        "placeholder": placeholder,
        "multiSelectionOptions": multiSelectionOptions == null ? [] : List<dynamic>.from(multiSelectionOptions!.map((x) => x.toJson())),
        "expando": expando?.toJson(),
        "primary": primary,
        "range": range?.toJson(),
        "options": options == null ? [] : List<dynamic>.from(options!.map((x) => x.toJson())),
        "tileMultiSelectionOptions": tileMultiSelectionOptions == null ? [] : List<dynamic>.from(tileMultiSelectionOptions!.map((x) => x.toJson())),
    };
}

class Expando {
    Expando({
        required this.expandLabel,
        required this.typename,
        required this.collapseAnalytics,
        required this.threshold,
        required this.collapseLabel,
        required this.expandAnalytics,
    });

    ExpandLabel expandLabel;
    ExpandoTypename typename;
    Analytics collapseAnalytics;
    int threshold;
    CollapseLabel collapseLabel;
    Analytics expandAnalytics;

    factory Expando.fromJson(Map<dynamic, dynamic> json) => Expando(
        expandLabel: expandLabelValues.map[json["expandLabel"]]!,
        typename: expandoTypenameValues.map[json["__typename"]]!,
        collapseAnalytics: Analytics.fromJson(json["collapseAnalytics"]),
        threshold: json["threshold"],
        collapseLabel: collapseLabelValues.map[json["collapseLabel"]]!,
        expandAnalytics: Analytics.fromJson(json["expandAnalytics"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "expandLabel": expandLabelValues.reverse[expandLabel],
        "__typename": expandoTypenameValues.reverse[typename],
        "collapseAnalytics": collapseAnalytics.toJson(),
        "threshold": threshold,
        "collapseLabel": collapseLabelValues.reverse[collapseLabel],
        "expandAnalytics": expandAnalytics.toJson(),
    };
}

enum CollapseLabel { SEE_LESS }

final collapseLabelValues = EnumValues({
    "See less": CollapseLabel.SEE_LESS
});

enum ExpandLabel { SEE_MORE }

final expandLabelValues = EnumValues({
    "See more": ExpandLabel.SEE_MORE
});

enum ExpandoTypename { SHOPPING_SELECTION_EXPANDO }

final expandoTypenameValues = EnumValues({
    "ShoppingSelectionExpando": ExpandoTypename.SHOPPING_SELECTION_EXPANDO
});

class DropdownFilterOptionElement {
    DropdownFilterOptionElement({
        required this.selectAnalytics,
        required this.typename,
        this.icon,
        required this.analytics,
        required this.optionDefault,
        required this.disabled,
        required this.id,
        required this.value,
        required this.selected,
        required this.primary,
        required this.deselectAnalytics,
        this.description,
    });

    Analytics selectAnalytics;
    DropdownFilterOptionTypename typename;
    Icon? icon;
    Analytics analytics;
    bool optionDefault;
    bool disabled;
    String id;
    String value;
    bool selected;
    String primary;
    Analytics deselectAnalytics;
    String? description;

    factory DropdownFilterOptionElement.fromJson(Map<dynamic, dynamic> json) => DropdownFilterOptionElement(
        selectAnalytics: Analytics.fromJson(json["selectAnalytics"]),
        typename: dropdownFilterOptionTypenameValues.map[json["__typename"]]!,
        icon: json["icon"] == null ? null : Icon.fromJson(json["icon"]),
        analytics: Analytics.fromJson(json["analytics"]),
        optionDefault: json["default"],
        disabled: json["disabled"],
        id: json["id"],
        value: json["value"],
        selected: json["selected"],
        primary: json["primary"],
        deselectAnalytics: Analytics.fromJson(json["deselectAnalytics"]),
        description: json["description"],
    );

    Map<dynamic, dynamic> toJson() => {
        "selectAnalytics": selectAnalytics.toJson(),
        "__typename": dropdownFilterOptionTypenameValues.reverse[typename],
        "icon": icon?.toJson(),
        "analytics": analytics.toJson(),
        "default": optionDefault,
        "disabled": disabled,
        "id": id,
        "value": value,
        "selected": selected,
        "primary": primary,
        "deselectAnalytics": deselectAnalytics.toJson(),
        "description": description,
    };
}

enum DropdownFilterOptionTypename { SHOPPING_SELECTABLE_FILTER_OPTION }

final dropdownFilterOptionTypenameValues = EnumValues({
    "ShoppingSelectableFilterOption": DropdownFilterOptionTypename.SHOPPING_SELECTABLE_FILTER_OPTION
});

class Range {
    Range({
        required this.analytics,
        required this.characteristics,
        required this.typename,
        required this.id,
        required this.selected,
        required this.primary,
    });

    Analytics analytics;
    Characteristics characteristics;
    String typename;
    String id;
    PriceRange selected;
    String primary;

    factory Range.fromJson(Map<dynamic, dynamic> json) => Range(
        analytics: Analytics.fromJson(json["analytics"]),
        characteristics: Characteristics.fromJson(json["characteristics"]),
        typename: json["__typename"],
        id: json["id"],
        selected: PriceRange.fromJson(json["selected"]),
        primary: json["primary"],
    );

    Map<dynamic, dynamic> toJson() => {
        "analytics": analytics.toJson(),
        "characteristics": characteristics.toJson(),
        "__typename": typename,
        "id": id,
        "selected": selected.toJson(),
        "primary": primary,
    };
}

class Characteristics {
    Characteristics({
        required this.min,
        required this.max,
        required this.typename,
        required this.step,
        required this.labels,
    });

    int min;
    int max;
    String typename;
    int step;
    List<LabelElement> labels;

    factory Characteristics.fromJson(Map<dynamic, dynamic> json) => Characteristics(
        min: json["min"],
        max: json["max"],
        typename: json["__typename"],
        step: json["step"],
        labels: List<LabelElement>.from(json["labels"].map((x) => LabelElement.fromJson(x))),
    );

    Map<dynamic, dynamic> toJson() => {
        "min": min,
        "max": max,
        "__typename": typename,
        "step": step,
        "labels": List<dynamic>.from(labels.map((x) => x.toJson())),
    };
}

class LabelElement {
    LabelElement({
        required this.typename,
        required this.label,
        required this.value,
    });

    LabelTypename typename;
    String label;
    int value;

    factory LabelElement.fromJson(Map<dynamic, dynamic> json) => LabelElement(
        typename: labelTypenameValues.map[json["__typename"]]!,
        label: json["label"],
        value: json["value"],
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": labelTypenameValues.reverse[typename],
        "label": label,
        "value": value,
    };
}

enum LabelTypename { SHOPPING_RANGE_LABEL }

final labelTypenameValues = EnumValues({
    "ShoppingRangeLabel": LabelTypename.SHOPPING_RANGE_LABEL
});

class TypeaheadInfo {
    TypeaheadInfo({
        required this.lineOfBusiness,
        required this.regionType,
        required this.typename,
        required this.maxNumberOfResults,
        required this.client,
        required this.isDestination,
        required this.personalize,
        required this.typeaheadFeatures,
    });

    String lineOfBusiness;
    int regionType;
    String typename;
    int maxNumberOfResults;
    String client;
    bool isDestination;
    bool personalize;
    String typeaheadFeatures;

    factory TypeaheadInfo.fromJson(Map<dynamic, dynamic> json) => TypeaheadInfo(
        lineOfBusiness: json["lineOfBusiness"],
        regionType: json["regionType"],
        typename: json["__typename"],
        maxNumberOfResults: json["maxNumberOfResults"],
        client: json["client"],
        isDestination: json["isDestination"],
        personalize: json["personalize"],
        typeaheadFeatures: json["typeaheadFeatures"],
    );

    Map<dynamic, dynamic> toJson() => {
        "lineOfBusiness": lineOfBusiness,
        "regionType": regionType,
        "__typename": typename,
        "maxNumberOfResults": maxNumberOfResults,
        "client": client,
        "isDestination": isDestination,
        "personalize": personalize,
        "typeaheadFeatures": typeaheadFeatures,
    };
}

class RevealAction {
    RevealAction({
        required this.badge,
        required this.accessibility,
        required this.typename,
        required this.icon,
        required this.action,
        required this.disabled,
        required this.primary,
    });

    int badge;
    String accessibility;
    String typename;
    Icon icon;
    Action action;
    bool disabled;
    String primary;

    factory RevealAction.fromJson(Map<dynamic, dynamic> json) => RevealAction(
        badge: json["badge"],
        accessibility: json["accessibility"],
        typename: json["__typename"],
        icon: Icon.fromJson(json["icon"]),
        action: Action.fromJson(json["action"]),
        disabled: json["disabled"],
        primary: json["primary"],
    );

    Map<dynamic, dynamic> toJson() => {
        "badge": badge,
        "accessibility": accessibility,
        "__typename": typename,
        "icon": icon.toJson(),
        "action": action.toJson(),
        "disabled": disabled,
        "primary": primary,
    };
}

class SortSection {
    SortSection({
        required this.typename,
        required this.fields,
    });

    String typename;
    List<SortSectionField> fields;

    factory SortSection.fromJson(Map<dynamic, dynamic> json) => SortSection(
        typename: json["__typename"],
        fields: List<SortSectionField>.from(json["fields"].map((x) => SortSectionField.fromJson(x))),
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": typename,
        "fields": List<dynamic>.from(fields.map((x) => x.toJson())),
    };
}

class SortSectionField {
    SortSectionField({
        required this.dropdownFilterOptions,
        required this.typename,
        required this.primary,
    });

    List<DropdownFilterOptionElement> dropdownFilterOptions;
    String typename;
    String primary;

    factory SortSectionField.fromJson(Map<dynamic, dynamic> json) => SortSectionField(
        dropdownFilterOptions: List<DropdownFilterOptionElement>.from(json["dropdownFilterOptions"].map((x) => DropdownFilterOptionElement.fromJson(x))),
        typename: json["__typename"],
        primary: json["primary"],
    );

    Map<dynamic, dynamic> toJson() => {
        "dropdownFilterOptions": List<dynamic>.from(dropdownFilterOptions.map((x) => x.toJson())),
        "__typename": typename,
        "primary": primary,
    };
}

class Toolbar {
    Toolbar({
        required this.typename,
        required this.actions,
        required this.primary,
    });

    String typename;
    Actions actions;
    String primary;

    factory Toolbar.fromJson(Map<dynamic, dynamic> json) => Toolbar(
        typename: json["__typename"],
        actions: Actions.fromJson(json["actions"]),
        primary: json["primary"],
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": typename,
        "actions": actions.toJson(),
        "primary": primary,
    };
}

class Actions {
    Actions({
        required this.typename,
        required this.primary,
        required this.secondaries,
    });

    String typename;
    Primary primary;
    List<Secondary> secondaries;

    factory Actions.fromJson(Map<dynamic, dynamic> json) => Actions(
        typename: json["__typename"],
        primary: Primary.fromJson(json["primary"]),
        secondaries: List<Secondary>.from(json["secondaries"].map((x) => Secondary.fromJson(x))),
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": typename,
        "primary": primary.toJson(),
        "secondaries": List<dynamic>.from(secondaries.map((x) => x.toJson())),
    };
}

class Primary {
    Primary({
        required this.typename,
        required this.action,
    });

    String typename;
    Action action;

    factory Primary.fromJson(Map<dynamic, dynamic> json) => Primary(
        typename: json["__typename"],
        action: Action.fromJson(json["action"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": typename,
        "action": action.toJson(),
    };
}

class Secondary {
    Secondary({
        required this.typename,
        required this.action,
        required this.disabled,
        required this.primary,
    });

    String typename;
    Remove action;
    bool disabled;
    String primary;

    factory Secondary.fromJson(Map<dynamic, dynamic> json) => Secondary(
        typename: json["__typename"],
        action: Remove.fromJson(json["action"]),
        disabled: json["disabled"],
        primary: json["primary"],
    );

    Map<dynamic, dynamic> toJson() => {
        "__typename": typename,
        "action": action.toJson(),
        "disabled": disabled,
        "primary": primary,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
