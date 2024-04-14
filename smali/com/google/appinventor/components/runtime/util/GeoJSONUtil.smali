.class public final Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;,
        Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;
    }
.end annotation


# static fields
.field private static final oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;",
            ">;"
        }
    .end annotation
.end field

.field private static final yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    sput-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Ljava/util/Map;

    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "black"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0xde690e

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "blue"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0xff432d

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cyan"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0xbbbbbc

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkgray"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0x616162

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gray"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0xb350b0

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "green"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0x333334

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lightgray"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0x17e19d

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pink"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v3, -0x16800

    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "orange"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0xcbcca

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "red"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "white"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0x115c5

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "yellow"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    sput-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Ljava/util/Map;

    const-string v1, "anchorHorizontal"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$1;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "anchorVertical"

    .line 110
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$8;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$8;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$9;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$9;-><init>()V

    const-string v2, "description"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$10;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$10;-><init>()V

    const-string v2, "draggable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$11;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$11;-><init>()V

    const-string v2, "fill"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$12;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$12;-><init>()V

    const-string v2, "fill-opacity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$13;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$13;-><init>()V

    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$14;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$14;-><init>()V

    const-string v2, "image"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$15;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$15;-><init>()V

    const-string v2, "infobox"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$2;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$2;-><init>()V

    const-string v2, "stroke"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$3;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$3;-><init>()V

    const-string v2, "stroke-opacity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$4;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$4;-><init>()V

    const-string v2, "stroke-width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$5;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$5;-><init>()V

    const-string v2, "title"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$6;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$6;-><init>()V

    const-string v2, "width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$7;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$7;-><init>()V

    const-string v2, "visible"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/Object;)Z
    .locals 1

    .line 416
    :goto_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 417
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 418
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 419
    check-cast p0, Ljava/lang/String;

    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 420
    :cond_2
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_3

    .line 421
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 423
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 517
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0xfeff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 518
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getGeoJSONFeatures(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 454
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "features"

    .line 455
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 457
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 458
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getGeoJSONType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 464
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;)F
    .locals 1

    .line 442
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 443
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    .line 444
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 445
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    .line 446
    :cond_1
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_2

    .line 447
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    .line 449
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(C)I
    .locals 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1

    :goto_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v1, 0x46

    if-gt p0, v1, :cond_2

    goto :goto_0

    .line 274
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid hex character. Expected [0-9A-Fa-f]."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;)I
    .locals 1

    .line 429
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 430
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    .line 431
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 432
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 433
    :cond_1
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_2

    .line 434
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 436
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .locals 7

    .line 314
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgnu/lists/LList;

    invoke-virtual {p2}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 315
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v4, 0x0

    .line 316
    invoke-virtual {v2, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 317
    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    const-string v6, "type"

    .line 318
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 319
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v6, "coordinates"

    .line 320
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 321
    move-object v0, v2

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_0

    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v5, v2, v4

    const-string v3, "Unsupported field \"%s\" in JSON format"

    .line 323
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_a

    const-string p0, "Point"

    .line 1334
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p2, 0x2

    if-eqz p0, :cond_4

    .line 1348
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->length()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    .line 1351
    new-instance p0, Lcom/google/appinventor/components/runtime/Marker;

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Marker;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 1352
    invoke-virtual {v0, p2}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Marker;->Latitude(D)V

    .line 1353
    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Marker;->Longitude(D)V

    return-object p0

    .line 1349
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid coordinate supplied in GeoJSON"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string p0, "LineString"

    .line 1336
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1359
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result p0

    if-lt p0, p2, :cond_5

    .line 1362
    new-instance p0, Lcom/google/appinventor/components/runtime/LineString;

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/LineString;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 1363
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LineString;->Points(Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-object p0

    .line 1360
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Too few coordinates supplied in GeoJSON"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const-string p0, "Polygon"

    .line 1338
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 1369
    new-instance p0, Lcom/google/appinventor/components/runtime/Polygon;

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Polygon;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 1370
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1371
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1372
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/Polygon;->Points(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 1373
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1374
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/LList;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapNestedCoordinates(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Polygon;->HolePoints(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 1376
    :cond_7
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->Initialize()V

    return-object p0

    :cond_8
    const-string p0, "MultiPolygon"

    .line 1340
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1341
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    move-result-object p0

    return-object p0

    .line 1343
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 327
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No coordinates found in GeoJSON Feature"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .locals 4

    .line 382
    new-instance v0, Lcom/google/appinventor/components/runtime/Polygon;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Polygon;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 383
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 384
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 385
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 386
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 387
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v3, 0x1

    .line 389
    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/LList;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapNestedCoordinates(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 392
    :cond_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Polygon;->Points(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 393
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Polygon;->HolePoints(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 394
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Polygon;->Initialize()V

    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 496
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 497
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 498
    instance-of v3, v2, Ljava/lang/Boolean;

    if-nez v3, :cond_4

    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_4

    instance-of v3, v2, Ljava/lang/Long;

    if-nez v3, :cond_4

    instance-of v3, v2, Ljava/lang/Double;

    if-nez v3, :cond_4

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 504
    :cond_0
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    .line 505
    check-cast v2, Lorg/json/JSONArray;

    invoke-static {p0, v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 506
    :cond_1
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    .line 507
    check-cast v2, Lorg/json/JSONObject;

    invoke-static {p0, v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 508
    :cond_2
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 509
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unrecognized/invalid type in JSON object: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unrecognized/invalid type in JSON object"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 503
    :cond_4
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    :cond_5
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p0

    return-object p0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 472
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 473
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 474
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 475
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 476
    instance-of v4, v3, Ljava/lang/Boolean;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-nez v4, :cond_4

    instance-of v4, v3, Ljava/lang/Integer;

    if-nez v4, :cond_4

    instance-of v4, v3, Ljava/lang/Long;

    if-nez v4, :cond_4

    instance-of v4, v3, Ljava/lang/Double;

    if-nez v4, :cond_4

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    goto :goto_1

    .line 482
    :cond_0
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_1

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v6

    .line 483
    check-cast v3, Lorg/json/JSONArray;

    invoke-static {p0, v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    :cond_1
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_2

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v6

    .line 485
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {p0, v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 486
    :cond_2
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 487
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unrecognized/invalid type in JSON object: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unrecognized/invalid type in JSON object"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v6

    aput-object v3, v4, v5

    .line 481
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 491
    :cond_5
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p0

    return-object p0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 5

    .line 400
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 401
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v1, :cond_0

    .line 402
    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v1, 0x1

    .line 403
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    sget-object v3, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;

    if-eqz v3, :cond_1

    const/4 v1, 0x2

    .line 406
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;->apply(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const-string v1, "Ignoring GeoJSON property \"%s\""

    .line 408
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static processGeoJSONFeature(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .locals 8

    .line 283
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgnu/lists/LList;

    invoke-virtual {p2}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 284
    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 285
    invoke-virtual {v3, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 286
    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    const-string v7, "type"

    .line 287
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 288
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v7, "geometry"

    .line 289
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 290
    move-object v1, v3

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_0

    :cond_1
    const-string v7, "properties"

    .line 291
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 292
    move-object v2, v3

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_0

    :cond_2
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v6, v3, v5

    const-string v4, "Unsupported field \"%s\" in JSON format"

    .line 294
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p2, "Feature"

    .line 297
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz v1, :cond_5

    .line 303
    invoke-static {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-result-object p1

    if-eqz v2, :cond_4

    .line 305
    invoke-static {p0, p1, v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lcom/google/appinventor/components/runtime/util/YailList;)V

    :cond_4
    return-object p1

    .line 301
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No geometry defined for feature."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 298
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v0, p1, v5

    const-string p2, "Unknown type \"%s\""

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 5

    .line 790
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 791
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 792
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 793
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v2, 0x1

    .line 794
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 795
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/lists/Pair;

    const/4 v4, 0x2

    .line 796
    invoke-virtual {v1, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Lgnu/lists/Pair;->setCar(Ljava/lang/Object;)V

    .line 797
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/Pair;

    .line 798
    invoke-virtual {v1, v2}, Lgnu/lists/Pair;->setCar(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static swapCoordinates2(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TE;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .line 804
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    .line 805
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    .line 806
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 807
    invoke-interface {v1, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static swapNestedCoordinates(Lgnu/lists/LList;)Lgnu/lists/LList;
    .locals 2

    move-object v0, p0

    .line 814
    :goto_0
    invoke-virtual {v0}, Lgnu/lists/LList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 815
    invoke-virtual {v0, v1}, Lgnu/lists/LList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    .line 816
    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/LList;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Ljava/lang/String;)I
    .locals 6

    .line 236
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, -0x1000000

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 240
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 241
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(C)I

    move-result v0

    shl-int/lit8 v4, v0, 0x4

    or-int/2addr v0, v4

    rsub-int/lit8 v4, v2, 0x2

    shl-int/2addr v4, v3

    shl-int/2addr v0, v4

    or-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x6

    const/4 v5, 0x4

    if-ne v0, v4, :cond_1

    :goto_1
    if-ge v2, v3, :cond_3

    mul-int/lit8 v0, v2, 0x2

    .line 249
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(C)I

    move-result v4

    shl-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(C)I

    move-result v0

    or-int/2addr v0, v4

    rsub-int/lit8 v4, v2, 0x2

    shl-int/2addr v4, v3

    shl-int/2addr v0, v4

    or-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 252
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_2
    if-ge v2, v5, :cond_2

    mul-int/lit8 v1, v2, 0x2

    .line 256
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(C)I

    move-result v4

    shl-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(C)I

    move-result v1

    or-int/2addr v1, v4

    rsub-int/lit8 v4, v2, 0x3

    shl-int/2addr v4, v3

    shl-int/2addr v1, v4

    or-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    :cond_3
    return v1

    .line 260
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)I
    .locals 1

    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 221
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-string v0, "#"

    .line 224
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 225
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const-string v0, "&h"

    .line 226
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 227
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    const p0, -0xcbcca

    return p0
.end method

.method public static writeFeaturesAsGeoJSON(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "GeoJSONUtil"

    const/4 v1, 0x0

    .line 763
    :try_start_0
    new-instance v2, Ljava/io/PrintStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 764
    :try_start_1
    new-instance p1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;

    const/4 v1, 0x0

    invoke-direct {p1, v2, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;-><init>(Ljava/io/PrintStream;B)V

    const-string v3, "{\"type\": \"FeatureCollection\", \"features\":["

    .line 765
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 767
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 768
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 769
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    new-array v4, v1, [Ljava/lang/Object;

    .line 770
    invoke-interface {v3, p1, v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 772
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    const/16 v4, 0x2c

    .line 773
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(C)V

    new-array v4, v1, [Ljava/lang/Object;

    .line 774
    invoke-interface {v3, p1, v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "]}"

    .line 777
    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 779
    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 780
    throw p0
.end method
