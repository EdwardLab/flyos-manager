.class final enum Lcom/onesignal/OneSignal$PromptActionResult;
.super Ljava/lang/Enum;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PromptActionResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/OneSignal$PromptActionResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onesignal/OneSignal$PromptActionResult;

.field public static final enum ERROR:Lcom/onesignal/OneSignal$PromptActionResult;

.field public static final enum LOCATION_PERMISSIONS_MISSING_MANIFEST:Lcom/onesignal/OneSignal$PromptActionResult;

.field public static final enum PERMISSION_DENIED:Lcom/onesignal/OneSignal$PromptActionResult;

.field public static final enum PERMISSION_GRANTED:Lcom/onesignal/OneSignal$PromptActionResult;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 3257
    new-instance v0, Lcom/onesignal/OneSignal$PromptActionResult;

    const-string v1, "PERMISSION_GRANTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OneSignal$PromptActionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/OneSignal$PromptActionResult;->PERMISSION_GRANTED:Lcom/onesignal/OneSignal$PromptActionResult;

    .line 3258
    new-instance v1, Lcom/onesignal/OneSignal$PromptActionResult;

    const-string v3, "PERMISSION_DENIED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/onesignal/OneSignal$PromptActionResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/onesignal/OneSignal$PromptActionResult;->PERMISSION_DENIED:Lcom/onesignal/OneSignal$PromptActionResult;

    .line 3259
    new-instance v3, Lcom/onesignal/OneSignal$PromptActionResult;

    const-string v5, "LOCATION_PERMISSIONS_MISSING_MANIFEST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/onesignal/OneSignal$PromptActionResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/onesignal/OneSignal$PromptActionResult;->LOCATION_PERMISSIONS_MISSING_MANIFEST:Lcom/onesignal/OneSignal$PromptActionResult;

    .line 3260
    new-instance v5, Lcom/onesignal/OneSignal$PromptActionResult;

    const-string v7, "ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/onesignal/OneSignal$PromptActionResult;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/onesignal/OneSignal$PromptActionResult;->ERROR:Lcom/onesignal/OneSignal$PromptActionResult;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/onesignal/OneSignal$PromptActionResult;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 3256
    sput-object v7, Lcom/onesignal/OneSignal$PromptActionResult;->$VALUES:[Lcom/onesignal/OneSignal$PromptActionResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3256
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/OneSignal$PromptActionResult;
    .locals 1

    .line 3256
    const-class v0, Lcom/onesignal/OneSignal$PromptActionResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/OneSignal$PromptActionResult;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/OneSignal$PromptActionResult;
    .locals 1

    .line 3256
    sget-object v0, Lcom/onesignal/OneSignal$PromptActionResult;->$VALUES:[Lcom/onesignal/OneSignal$PromptActionResult;

    invoke-virtual {v0}, [Lcom/onesignal/OneSignal$PromptActionResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/OneSignal$PromptActionResult;

    return-object v0
.end method
