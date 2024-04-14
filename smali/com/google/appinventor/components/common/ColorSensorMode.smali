.class public final enum Lcom/google/appinventor/components/common/ColorSensorMode;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/ColorSensorMode;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Ambient:Lcom/google/appinventor/components/common/ColorSensorMode;

.field public static final enum Color:Lcom/google/appinventor/components/common/ColorSensorMode;

.field public static final enum Reflected:Lcom/google/appinventor/components/common/ColorSensorMode;

.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/ColorSensorMode;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/ColorSensorMode;


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 15
    new-instance v0, Lcom/google/appinventor/components/common/ColorSensorMode;

    const-string v1, "Reflected"

    const/4 v2, 0x0

    const-string v3, "reflected"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/google/appinventor/components/common/ColorSensorMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/ColorSensorMode;->Reflected:Lcom/google/appinventor/components/common/ColorSensorMode;

    .line 16
    new-instance v1, Lcom/google/appinventor/components/common/ColorSensorMode;

    const-string v3, "Ambient"

    const/4 v4, 0x1

    const-string v5, "ambient"

    invoke-direct {v1, v3, v4, v5, v4}, Lcom/google/appinventor/components/common/ColorSensorMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/google/appinventor/components/common/ColorSensorMode;->Ambient:Lcom/google/appinventor/components/common/ColorSensorMode;

    .line 17
    new-instance v3, Lcom/google/appinventor/components/common/ColorSensorMode;

    const-string v5, "Color"

    const/4 v6, 0x2

    const-string v7, "color"

    invoke-direct {v3, v5, v6, v7, v6}, Lcom/google/appinventor/components/common/ColorSensorMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/appinventor/components/common/ColorSensorMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 14
    sput-object v5, Lcom/google/appinventor/components/common/ColorSensorMode;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/ColorSensorMode;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/ColorSensorMode;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    .line 38
    invoke-static {}, Lcom/google/appinventor/components/common/ColorSensorMode;->values()[Lcom/google/appinventor/components/common/ColorSensorMode;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 39
    sget-object v4, Lcom/google/appinventor/components/common/ColorSensorMode;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/ColorSensorMode;->toUnderlyingValue()Ljava/lang/String;

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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/google/appinventor/components/common/ColorSensorMode;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

    .line 24
    iput p4, p0, Lcom/google/appinventor/components/common/ColorSensorMode;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:I

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ColorSensorMode;
    .locals 1

    .line 44
    sget-object v0, Lcom/google/appinventor/components/common/ColorSensorMode;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/ColorSensorMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/ColorSensorMode;
    .locals 1

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/ColorSensorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/ColorSensorMode;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/ColorSensorMode;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/ColorSensorMode;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/ColorSensorMode;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/ColorSensorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/ColorSensorMode;

    return-object v0
.end method


# virtual methods
.method public final toInt()Ljava/lang/Integer;
    .locals 1

    .line 32
    iget v0, p0, Lcom/google/appinventor/components/common/ColorSensorMode;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/ColorSensorMode;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/appinventor/components/common/ColorSensorMode;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

    return-object v0
.end method
