.class public final enum Lcom/google/appinventor/components/common/TransportMethod;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/TransportMethod;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Bicycle:Lcom/google/appinventor/components/common/TransportMethod;

.field public static final enum Car:Lcom/google/appinventor/components/common/TransportMethod;

.field public static final enum Foot:Lcom/google/appinventor/components/common/TransportMethod;

.field public static final enum Wheelchair:Lcom/google/appinventor/components/common/TransportMethod;

.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/TransportMethod;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/TransportMethod;


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 15
    new-instance v0, Lcom/google/appinventor/components/common/TransportMethod;

    const-string v1, "Foot"

    const/4 v2, 0x0

    const-string v3, "foot-walking"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/TransportMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/TransportMethod;->Foot:Lcom/google/appinventor/components/common/TransportMethod;

    .line 16
    new-instance v1, Lcom/google/appinventor/components/common/TransportMethod;

    const-string v3, "Car"

    const/4 v4, 0x1

    const-string v5, "driving-car"

    invoke-direct {v1, v3, v4, v5}, Lcom/google/appinventor/components/common/TransportMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/TransportMethod;->Car:Lcom/google/appinventor/components/common/TransportMethod;

    .line 17
    new-instance v3, Lcom/google/appinventor/components/common/TransportMethod;

    const-string v5, "Bicycle"

    const/4 v6, 0x2

    const-string v7, "cycling-regular"

    invoke-direct {v3, v5, v6, v7}, Lcom/google/appinventor/components/common/TransportMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/appinventor/components/common/TransportMethod;->Bicycle:Lcom/google/appinventor/components/common/TransportMethod;

    .line 18
    new-instance v5, Lcom/google/appinventor/components/common/TransportMethod;

    const-string v7, "Wheelchair"

    const/4 v8, 0x3

    const-string v9, "wheelchair"

    invoke-direct {v5, v7, v8, v9}, Lcom/google/appinventor/components/common/TransportMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/appinventor/components/common/TransportMethod;->Wheelchair:Lcom/google/appinventor/components/common/TransportMethod;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/appinventor/components/common/TransportMethod;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 14
    sput-object v7, Lcom/google/appinventor/components/common/TransportMethod;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/TransportMethod;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/TransportMethod;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    .line 33
    invoke-static {}, Lcom/google/appinventor/components/common/TransportMethod;->values()[Lcom/google/appinventor/components/common/TransportMethod;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 34
    sget-object v4, Lcom/google/appinventor/components/common/TransportMethod;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/TransportMethod;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/google/appinventor/components/common/TransportMethod;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/TransportMethod;
    .locals 1

    .line 39
    sget-object v0, Lcom/google/appinventor/components/common/TransportMethod;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/TransportMethod;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/TransportMethod;
    .locals 1

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/TransportMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/TransportMethod;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/TransportMethod;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/TransportMethod;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/TransportMethod;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/TransportMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/TransportMethod;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/TransportMethod;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/appinventor/components/common/TransportMethod;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

    return-object v0
.end method
