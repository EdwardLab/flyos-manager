.class final enum Lcom/onesignal/LocationController$PermissionType;
.super Ljava/lang/Enum;
.source "LocationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/LocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PermissionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/LocationController$PermissionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onesignal/LocationController$PermissionType;

.field public static final enum PROMPT_LOCATION:Lcom/onesignal/LocationController$PermissionType;

.field public static final enum STARTUP:Lcom/onesignal/LocationController$PermissionType;

.field public static final enum SYNC_SERVICE:Lcom/onesignal/LocationController$PermissionType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 68
    new-instance v0, Lcom/onesignal/LocationController$PermissionType;

    const-string v1, "STARTUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/LocationController$PermissionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/LocationController$PermissionType;->STARTUP:Lcom/onesignal/LocationController$PermissionType;

    new-instance v1, Lcom/onesignal/LocationController$PermissionType;

    const-string v3, "PROMPT_LOCATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/onesignal/LocationController$PermissionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/onesignal/LocationController$PermissionType;->PROMPT_LOCATION:Lcom/onesignal/LocationController$PermissionType;

    new-instance v3, Lcom/onesignal/LocationController$PermissionType;

    const-string v5, "SYNC_SERVICE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/onesignal/LocationController$PermissionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/onesignal/LocationController$PermissionType;->SYNC_SERVICE:Lcom/onesignal/LocationController$PermissionType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/onesignal/LocationController$PermissionType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 67
    sput-object v5, Lcom/onesignal/LocationController$PermissionType;->$VALUES:[Lcom/onesignal/LocationController$PermissionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/LocationController$PermissionType;
    .locals 1

    .line 67
    const-class v0, Lcom/onesignal/LocationController$PermissionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/LocationController$PermissionType;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/LocationController$PermissionType;
    .locals 1

    .line 67
    sget-object v0, Lcom/onesignal/LocationController$PermissionType;->$VALUES:[Lcom/onesignal/LocationController$PermissionType;

    invoke-virtual {v0}, [Lcom/onesignal/LocationController$PermissionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/LocationController$PermissionType;

    return-object v0
.end method
