.class public final enum Lcom/google/appinventor/components/runtime/util/DeviceStorage;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/runtime/util/DeviceStorage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EXTERNAL_STORAGE_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

.field public static final enum EXTERNAL_STORAGE_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

.field public static final enum EXTERNAL_STORAGE_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

.field public static final enum INTERNAL_STORAGE_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

.field public static final enum INTERNAL_STORAGE_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

.field public static final enum INTERNAL_STORAGE_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

.field public static final enum MEMORY_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

.field public static final enum MEMORY_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

.field public static final enum MEMORY_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/util/DeviceStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 10
    new-instance v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    const-string v1, "EXTERNAL_STORAGE_TOTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->EXTERNAL_STORAGE_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    .line 11
    new-instance v1, Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    const-string v3, "EXTERNAL_STORAGE_AVAILABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->EXTERNAL_STORAGE_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    .line 12
    new-instance v3, Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    const-string v5, "EXTERNAL_STORAGE_USED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->EXTERNAL_STORAGE_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    .line 14
    new-instance v5, Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    const-string v7, "INTERNAL_STORAGE_TOTAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->INTERNAL_STORAGE_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    .line 15
    new-instance v7, Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    const-string v9, "INTERNAL_STORAGE_AVAILABLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->INTERNAL_STORAGE_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    .line 16
    new-instance v9, Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    const-string v11, "INTERNAL_STORAGE_USED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->INTERNAL_STORAGE_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    .line 18
    new-instance v11, Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    const-string v13, "MEMORY_TOTAL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->MEMORY_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    .line 19
    new-instance v13, Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    const-string v15, "MEMORY_AVAILABLE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->MEMORY_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    .line 20
    new-instance v15, Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    const-string v14, "MEMORY_USED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->MEMORY_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 9
    sput-object v14, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/DeviceStorage;
    .locals 1

    .line 9
    const-class v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/util/DeviceStorage;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/util/DeviceStorage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    return-object v0
.end method
