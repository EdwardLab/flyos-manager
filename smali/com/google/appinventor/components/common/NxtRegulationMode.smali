.class public final enum Lcom/google/appinventor/components/common/NxtRegulationMode;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/NxtRegulationMode;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Disabled:Lcom/google/appinventor/components/common/NxtRegulationMode;

.field public static final enum Speed:Lcom/google/appinventor/components/common/NxtRegulationMode;
    .annotation runtime Lcom/google/appinventor/components/common/Default;
    .end annotation
.end field

.field public static final enum Synchronization:Lcom/google/appinventor/components/common/NxtRegulationMode;

.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/NxtRegulationMode;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/NxtRegulationMode;


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    new-instance v0, Lcom/google/appinventor/components/common/NxtRegulationMode;

    const-string v1, "Disabled"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/appinventor/components/common/NxtRegulationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtRegulationMode;->Disabled:Lcom/google/appinventor/components/common/NxtRegulationMode;

    .line 24
    new-instance v1, Lcom/google/appinventor/components/common/NxtRegulationMode;

    const-string v3, "Speed"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/appinventor/components/common/NxtRegulationMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/appinventor/components/common/NxtRegulationMode;->Speed:Lcom/google/appinventor/components/common/NxtRegulationMode;

    .line 26
    new-instance v3, Lcom/google/appinventor/components/common/NxtRegulationMode;

    const-string v5, "Synchronization"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/appinventor/components/common/NxtRegulationMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/appinventor/components/common/NxtRegulationMode;->Synchronization:Lcom/google/appinventor/components/common/NxtRegulationMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/appinventor/components/common/NxtRegulationMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 22
    sput-object v5, Lcom/google/appinventor/components/common/NxtRegulationMode;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/NxtRegulationMode;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/NxtRegulationMode;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    .line 41
    invoke-static {}, Lcom/google/appinventor/components/common/NxtRegulationMode;->values()[Lcom/google/appinventor/components/common/NxtRegulationMode;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 42
    sget-object v4, Lcom/google/appinventor/components/common/NxtRegulationMode;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/NxtRegulationMode;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/google/appinventor/components/common/NxtRegulationMode;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:I

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtRegulationMode;
    .locals 1

    .line 47
    sget-object v0, Lcom/google/appinventor/components/common/NxtRegulationMode;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/NxtRegulationMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtRegulationMode;
    .locals 1

    .line 22
    const-class v0, Lcom/google/appinventor/components/common/NxtRegulationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/NxtRegulationMode;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/NxtRegulationMode;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/appinventor/components/common/NxtRegulationMode;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/NxtRegulationMode;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/NxtRegulationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/NxtRegulationMode;

    return-object v0
.end method


# virtual methods
.method public final toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 35
    iget v0, p0, Lcom/google/appinventor/components/common/NxtRegulationMode;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/NxtRegulationMode;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
