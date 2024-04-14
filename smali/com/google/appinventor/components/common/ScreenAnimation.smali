.class public final enum Lcom/google/appinventor/components/common/ScreenAnimation;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/ScreenAnimation;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Default:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum Fade:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum None:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum SlideHorizontal:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum SlideVertical:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum Zoom:Lcom/google/appinventor/components/common/ScreenAnimation;

.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/ScreenAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/ScreenAnimation;


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 16
    new-instance v0, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v1, "Default"

    const/4 v2, 0x0

    const-string v3, "default"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 17
    new-instance v1, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v3, "Fade"

    const/4 v4, 0x1

    const-string v5, "fade"

    invoke-direct {v1, v3, v4, v5}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->Fade:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 18
    new-instance v3, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v5, "Zoom"

    const/4 v6, 0x2

    const-string v7, "zoom"

    invoke-direct {v3, v5, v6, v7}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/appinventor/components/common/ScreenAnimation;->Zoom:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 19
    new-instance v5, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v7, "SlideHorizontal"

    const/4 v8, 0x3

    const-string v9, "slidehorizontal"

    invoke-direct {v5, v7, v8, v9}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/appinventor/components/common/ScreenAnimation;->SlideHorizontal:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 20
    new-instance v7, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v9, "SlideVertical"

    const/4 v10, 0x4

    const-string v11, "slidevertical"

    invoke-direct {v7, v9, v10, v11}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/google/appinventor/components/common/ScreenAnimation;->SlideVertical:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 21
    new-instance v9, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v11, "None"

    const/4 v12, 0x5

    const-string v13, "none"

    invoke-direct {v9, v11, v12, v13}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/google/appinventor/components/common/ScreenAnimation;->None:Lcom/google/appinventor/components/common/ScreenAnimation;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/appinventor/components/common/ScreenAnimation;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 15
    sput-object v11, Lcom/google/appinventor/components/common/ScreenAnimation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    .line 36
    invoke-static {}, Lcom/google/appinventor/components/common/ScreenAnimation;->values()[Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 37
    sget-object v4, Lcom/google/appinventor/components/common/ScreenAnimation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/ScreenAnimation;->toUnderlyingValue()Ljava/lang/String;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/google/appinventor/components/common/ScreenAnimation;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/ScreenAnimation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;
    .locals 1

    .line 15
    const-class v0, Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/ScreenAnimation;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/ScreenAnimation;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/ScreenAnimation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/ScreenAnimation;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/ScreenAnimation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/appinventor/components/common/ScreenAnimation;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

    return-object v0
.end method
