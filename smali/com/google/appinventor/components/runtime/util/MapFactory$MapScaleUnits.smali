.class public final enum Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapScaleUnits"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum IMPERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

.field public static final enum METRIC:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

.field public static final enum UNKNOWN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1591
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->UNKNOWN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    .line 1596
    new-instance v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    const-string v3, "METRIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->METRIC:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    .line 1601
    new-instance v3, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    const-string v5, "IMPERIAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->IMPERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 1586
    sput-object v5, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1586
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;
    .locals 1

    .line 1586
    const-class v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;
    .locals 1

    .line 1586
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    return-object v0
.end method
