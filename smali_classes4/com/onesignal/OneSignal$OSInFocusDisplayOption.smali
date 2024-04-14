.class public final enum Lcom/onesignal/OneSignal$OSInFocusDisplayOption;
.super Ljava/lang/Enum;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OSInFocusDisplayOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/OneSignal$OSInFocusDisplayOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

.field public static final enum InAppAlert:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

.field public static final enum None:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

.field public static final enum Notification:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 93
    new-instance v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->None:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    new-instance v1, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    const-string v3, "InAppAlert"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->InAppAlert:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    new-instance v3, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    const-string v5, "Notification"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->Notification:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 92
    sput-object v5, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->$VALUES:[Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/OneSignal$OSInFocusDisplayOption;
    .locals 1

    .line 92
    const-class v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/OneSignal$OSInFocusDisplayOption;
    .locals 1

    .line 92
    sget-object v0, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->$VALUES:[Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    invoke-virtual {v0}, [Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    return-object v0
.end method
