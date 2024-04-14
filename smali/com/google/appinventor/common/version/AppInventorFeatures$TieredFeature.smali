.class public final enum Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/common/version/AppInventorFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TieredFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MONETIZATION_EXTENSIONS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

.field public static final enum NON_GAM_MONETIZATION_COMPONENTS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

.field public static final enum UNLIMITED_ASSETS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

.field public static final enum UNLIMITED_EXTENSIONS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

.field public static final enum UNLIMITED_PROJECTS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

.field public static final enum WEB_BUILDS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 131
    new-instance v0, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    const-string v1, "MONETIZATION_EXTENSIONS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->MONETIZATION_EXTENSIONS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    .line 132
    new-instance v1, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    const-string v3, "NON_GAM_MONETIZATION_COMPONENTS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->NON_GAM_MONETIZATION_COMPONENTS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    .line 133
    new-instance v3, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    const-string v5, "UNLIMITED_ASSETS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->UNLIMITED_ASSETS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    .line 134
    new-instance v5, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    const-string v7, "UNLIMITED_EXTENSIONS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->UNLIMITED_EXTENSIONS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    .line 135
    new-instance v7, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    const-string v9, "UNLIMITED_PROJECTS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->UNLIMITED_PROJECTS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    .line 136
    new-instance v9, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    const-string v11, "WEB_BUILDS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->WEB_BUILDS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 130
    sput-object v11, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;
    .locals 1

    .line 130
    const-class v0, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;
    .locals 1

    .line 130
    sget-object v0, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    invoke-virtual {v0}, [Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    return-object v0
.end method
