.class public final enum Lcom/google/appinventor/components/common/FileScope;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/FileScope;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum App:Lcom/google/appinventor/components/common/FileScope;

.field public static final enum Asset:Lcom/google/appinventor/components/common/FileScope;

.field public static final enum Cache:Lcom/google/appinventor/components/common/FileScope;

.field public static final enum Legacy:Lcom/google/appinventor/components/common/FileScope;

.field public static final enum Private:Lcom/google/appinventor/components/common/FileScope;

.field public static final enum Shared:Lcom/google/appinventor/components/common/FileScope;

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/FileScope;

.field private static final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/FileScope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 23
    new-instance v0, Lcom/google/appinventor/components/common/FileScope;

    const-string v1, "App"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    .line 29
    new-instance v1, Lcom/google/appinventor/components/common/FileScope;

    const-string v3, "Asset"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    .line 34
    new-instance v3, Lcom/google/appinventor/components/common/FileScope;

    const-string v5, "Cache"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/appinventor/components/common/FileScope;->Cache:Lcom/google/appinventor/components/common/FileScope;

    .line 40
    new-instance v5, Lcom/google/appinventor/components/common/FileScope;

    const-string v7, "Legacy"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    .line 45
    new-instance v7, Lcom/google/appinventor/components/common/FileScope;

    const-string v9, "Private"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/appinventor/components/common/FileScope;->Private:Lcom/google/appinventor/components/common/FileScope;

    .line 51
    new-instance v9, Lcom/google/appinventor/components/common/FileScope;

    const-string v11, "Shared"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/appinventor/components/common/FileScope;->Shared:Lcom/google/appinventor/components/common/FileScope;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/appinventor/components/common/FileScope;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 17
    sput-object v11, Lcom/google/appinventor/components/common/FileScope;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/FileScope;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/FileScope;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    .line 56
    invoke-static {}, Lcom/google/appinventor/components/common/FileScope;->values()[Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 57
    sget-object v4, Lcom/google/appinventor/components/common/FileScope;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/FileScope;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/FileScope;
    .locals 1

    .line 62
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/FileScope;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/FileScope;
    .locals 1

    .line 17
    const-class v0, Lcom/google/appinventor/components/common/FileScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/FileScope;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/FileScope;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/FileScope;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/FileScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/FileScope;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/FileScope;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/FileScope;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
