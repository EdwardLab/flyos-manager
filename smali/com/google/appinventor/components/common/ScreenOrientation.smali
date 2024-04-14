.class public final enum Lcom/google/appinventor/components/common/ScreenOrientation;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/ScreenOrientation;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Behind:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum FullSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum Landscape:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum NoSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum Portrait:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum ReverseLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum ReversePortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum Sensor:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum SensorLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum SensorPortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum Unspecified:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum User:Lcom/google/appinventor/components/common/ScreenOrientation;

.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/ScreenOrientation;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/ScreenOrientation;


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 15
    new-instance v0, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v1, "Unspecified"

    const/4 v2, 0x0

    const-string v3, "unspecified"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Unspecified:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 16
    new-instance v1, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v3, "Landscape"

    const/4 v5, 0x1

    const-string v6, "landscape"

    invoke-direct {v1, v3, v5, v6, v2}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->Landscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 17
    new-instance v3, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v6, "Portrait"

    const/4 v7, 0x2

    const-string v8, "portrait"

    invoke-direct {v3, v6, v7, v8, v5}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/google/appinventor/components/common/ScreenOrientation;->Portrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 18
    new-instance v6, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v8, "Sensor"

    const/4 v9, 0x3

    const-string v10, "sensor"

    invoke-direct {v6, v8, v9, v10, v4}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/google/appinventor/components/common/ScreenOrientation;->Sensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 19
    new-instance v8, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v10, "User"

    const-string v11, "user"

    invoke-direct {v8, v10, v4, v11, v7}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcom/google/appinventor/components/common/ScreenOrientation;->User:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 20
    new-instance v10, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v11, "Behind"

    const/4 v12, 0x5

    const-string v13, "behind"

    invoke-direct {v10, v11, v12, v13, v9}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lcom/google/appinventor/components/common/ScreenOrientation;->Behind:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 21
    new-instance v11, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v13, "NoSensor"

    const/4 v14, 0x6

    const-string v15, "nosensor"

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lcom/google/appinventor/components/common/ScreenOrientation;->NoSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 22
    new-instance v13, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v15, "FullSensor"

    const/4 v12, 0x7

    const-string v4, "fullSensor"

    const/16 v9, 0xa

    invoke-direct {v13, v15, v12, v4, v9}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v13, Lcom/google/appinventor/components/common/ScreenOrientation;->FullSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 23
    new-instance v4, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v15, "ReverseLandscape"

    const/16 v7, 0x8

    const-string v5, "reverseLandscape"

    invoke-direct {v4, v15, v7, v5, v7}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/google/appinventor/components/common/ScreenOrientation;->ReverseLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 24
    new-instance v5, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v15, "ReversePortrait"

    const/16 v7, 0x9

    const-string v2, "reversePortrait"

    invoke-direct {v5, v15, v7, v2, v7}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/google/appinventor/components/common/ScreenOrientation;->ReversePortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 25
    new-instance v2, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v15, "SensorLandscape"

    const-string v7, "sensorLandscape"

    invoke-direct {v2, v15, v9, v7, v14}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/ScreenOrientation;->SensorLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 26
    new-instance v7, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v15, "SensorPortrait"

    const/16 v9, 0xb

    const-string v14, "sensorPortrait"

    invoke-direct {v7, v15, v9, v14, v12}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/google/appinventor/components/common/ScreenOrientation;->SensorPortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    const/16 v14, 0xc

    new-array v14, v14, [Lcom/google/appinventor/components/common/ScreenOrientation;

    const/4 v15, 0x0

    aput-object v0, v14, v15

    const/4 v0, 0x1

    aput-object v1, v14, v0

    const/4 v0, 0x2

    aput-object v3, v14, v0

    const/4 v0, 0x3

    aput-object v6, v14, v0

    const/4 v0, 0x4

    aput-object v8, v14, v0

    const/4 v0, 0x5

    aput-object v10, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    aput-object v13, v14, v12

    const/16 v0, 0x8

    aput-object v4, v14, v0

    const/16 v0, 0x9

    aput-object v5, v14, v0

    const/16 v0, 0xa

    aput-object v2, v14, v0

    aput-object v7, v14, v9

    .line 14
    sput-object v14, Lcom/google/appinventor/components/common/ScreenOrientation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    .line 47
    invoke-static {}, Lcom/google/appinventor/components/common/ScreenOrientation;->values()[Lcom/google/appinventor/components/common/ScreenOrientation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 48
    sget-object v4, Lcom/google/appinventor/components/common/ScreenOrientation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/ScreenOrientation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/google/appinventor/components/common/ScreenOrientation;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

    .line 33
    iput p4, p0, Lcom/google/appinventor/components/common/ScreenOrientation;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:I

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenOrientation;
    .locals 1

    .line 53
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenOrientation;
    .locals 1

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/ScreenOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/ScreenOrientation;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/ScreenOrientation;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/ScreenOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0
.end method


# virtual methods
.method public final getOrientationConstant()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/google/appinventor/components/common/ScreenOrientation;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:I

    return v0
.end method

.method public final bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/ScreenOrientation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/appinventor/components/common/ScreenOrientation;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

    return-object v0
.end method
