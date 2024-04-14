.class public final enum Lcom/google/appinventor/components/common/Direction;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/Direction;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum East:Lcom/google/appinventor/components/common/Direction;

.field public static final enum North:Lcom/google/appinventor/components/common/Direction;

.field public static final enum Northeast:Lcom/google/appinventor/components/common/Direction;

.field public static final enum Northwest:Lcom/google/appinventor/components/common/Direction;

.field public static final enum South:Lcom/google/appinventor/components/common/Direction;

.field public static final enum Southeast:Lcom/google/appinventor/components/common/Direction;

.field public static final enum Southwest:Lcom/google/appinventor/components/common/Direction;

.field public static final enum West:Lcom/google/appinventor/components/common/Direction;

.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/Direction;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/Direction;


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 15
    new-instance v0, Lcom/google/appinventor/components/common/Direction;

    const-string v1, "North"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/Direction;->North:Lcom/google/appinventor/components/common/Direction;

    .line 16
    new-instance v1, Lcom/google/appinventor/components/common/Direction;

    const-string v4, "Northeast"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/appinventor/components/common/Direction;->Northeast:Lcom/google/appinventor/components/common/Direction;

    .line 17
    new-instance v4, Lcom/google/appinventor/components/common/Direction;

    const-string v6, "East"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/appinventor/components/common/Direction;->East:Lcom/google/appinventor/components/common/Direction;

    .line 18
    new-instance v6, Lcom/google/appinventor/components/common/Direction;

    const-string v8, "Southeast"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/appinventor/components/common/Direction;->Southeast:Lcom/google/appinventor/components/common/Direction;

    .line 19
    new-instance v8, Lcom/google/appinventor/components/common/Direction;

    const-string v10, "South"

    const/4 v11, -0x1

    invoke-direct {v8, v10, v9, v11}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/appinventor/components/common/Direction;->South:Lcom/google/appinventor/components/common/Direction;

    .line 20
    new-instance v10, Lcom/google/appinventor/components/common/Direction;

    const-string v11, "Southwest"

    const/4 v12, 0x5

    const/4 v13, -0x2

    invoke-direct {v10, v11, v12, v13}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/appinventor/components/common/Direction;->Southwest:Lcom/google/appinventor/components/common/Direction;

    .line 21
    new-instance v11, Lcom/google/appinventor/components/common/Direction;

    const-string v13, "West"

    const/4 v14, 0x6

    const/4 v15, -0x3

    invoke-direct {v11, v13, v14, v15}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/appinventor/components/common/Direction;->West:Lcom/google/appinventor/components/common/Direction;

    .line 22
    new-instance v13, Lcom/google/appinventor/components/common/Direction;

    const-string v15, "Northwest"

    const/4 v14, 0x7

    const/4 v12, -0x4

    invoke-direct {v13, v15, v14, v12}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/appinventor/components/common/Direction;->Northwest:Lcom/google/appinventor/components/common/Direction;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/google/appinventor/components/common/Direction;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    const/4 v0, 0x5

    aput-object v10, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    .line 14
    sput-object v12, Lcom/google/appinventor/components/common/Direction;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/Direction;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/Direction;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    .line 37
    invoke-static {}, Lcom/google/appinventor/components/common/Direction;->values()[Lcom/google/appinventor/components/common/Direction;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 38
    sget-object v4, Lcom/google/appinventor/components/common/Direction;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/Direction;->toUnderlyingValue()Ljava/lang/Integer;

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

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/google/appinventor/components/common/Direction;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:I

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/Direction;
    .locals 1

    .line 43
    sget-object v0, Lcom/google/appinventor/components/common/Direction;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/Direction;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/Direction;
    .locals 1

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/Direction;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/Direction;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/Direction;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/Direction;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/Direction;

    return-object v0
.end method


# virtual methods
.method public final toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 31
    iget v0, p0, Lcom/google/appinventor/components/common/Direction;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/Direction;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
