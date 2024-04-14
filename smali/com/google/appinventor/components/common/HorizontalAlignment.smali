.class public final enum Lcom/google/appinventor/components/common/HorizontalAlignment;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/HorizontalAlignment;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Center:Lcom/google/appinventor/components/common/HorizontalAlignment;

.field public static final enum Left:Lcom/google/appinventor/components/common/HorizontalAlignment;

.field public static final enum Right:Lcom/google/appinventor/components/common/HorizontalAlignment;

.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/HorizontalAlignment;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/HorizontalAlignment;


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 16
    new-instance v0, Lcom/google/appinventor/components/common/HorizontalAlignment;

    const-string v1, "Left"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/HorizontalAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/HorizontalAlignment;->Left:Lcom/google/appinventor/components/common/HorizontalAlignment;

    .line 17
    new-instance v1, Lcom/google/appinventor/components/common/HorizontalAlignment;

    const-string v4, "Center"

    const/4 v5, 0x3

    invoke-direct {v1, v4, v3, v5}, Lcom/google/appinventor/components/common/HorizontalAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/appinventor/components/common/HorizontalAlignment;->Center:Lcom/google/appinventor/components/common/HorizontalAlignment;

    .line 18
    new-instance v4, Lcom/google/appinventor/components/common/HorizontalAlignment;

    const-string v6, "Right"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v7}, Lcom/google/appinventor/components/common/HorizontalAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/appinventor/components/common/HorizontalAlignment;->Right:Lcom/google/appinventor/components/common/HorizontalAlignment;

    new-array v5, v5, [Lcom/google/appinventor/components/common/HorizontalAlignment;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v7

    .line 15
    sput-object v5, Lcom/google/appinventor/components/common/HorizontalAlignment;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/HorizontalAlignment;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/HorizontalAlignment;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    .line 33
    invoke-static {}, Lcom/google/appinventor/components/common/HorizontalAlignment;->values()[Lcom/google/appinventor/components/common/HorizontalAlignment;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 34
    sget-object v4, Lcom/google/appinventor/components/common/HorizontalAlignment;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/HorizontalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/google/appinventor/components/common/HorizontalAlignment;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:I

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/HorizontalAlignment;
    .locals 1

    .line 39
    sget-object v0, Lcom/google/appinventor/components/common/HorizontalAlignment;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/HorizontalAlignment;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/HorizontalAlignment;
    .locals 1

    .line 15
    const-class v0, Lcom/google/appinventor/components/common/HorizontalAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/HorizontalAlignment;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/HorizontalAlignment;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/appinventor/components/common/HorizontalAlignment;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/HorizontalAlignment;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/HorizontalAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/HorizontalAlignment;

    return-object v0
.end method


# virtual methods
.method public final toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 27
    iget v0, p0, Lcom/google/appinventor/components/common/HorizontalAlignment;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/HorizontalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
