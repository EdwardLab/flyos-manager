.class public final enum Lcom/onesignal/OneSignal$AppEntryAction;
.super Ljava/lang/Enum;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppEntryAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/OneSignal$AppEntryAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onesignal/OneSignal$AppEntryAction;

.field public static final enum APP_CLOSE:Lcom/onesignal/OneSignal$AppEntryAction;

.field public static final enum APP_OPEN:Lcom/onesignal/OneSignal$AppEntryAction;

.field public static final enum NOTIFICATION_CLICK:Lcom/onesignal/OneSignal$AppEntryAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 97
    new-instance v0, Lcom/onesignal/OneSignal$AppEntryAction;

    const-string v1, "NOTIFICATION_CLICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OneSignal$AppEntryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/OneSignal$AppEntryAction;->NOTIFICATION_CLICK:Lcom/onesignal/OneSignal$AppEntryAction;

    .line 98
    new-instance v1, Lcom/onesignal/OneSignal$AppEntryAction;

    const-string v3, "APP_OPEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/onesignal/OneSignal$AppEntryAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/onesignal/OneSignal$AppEntryAction;->APP_OPEN:Lcom/onesignal/OneSignal$AppEntryAction;

    .line 99
    new-instance v3, Lcom/onesignal/OneSignal$AppEntryAction;

    const-string v5, "APP_CLOSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/onesignal/OneSignal$AppEntryAction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/onesignal/OneSignal$AppEntryAction;->APP_CLOSE:Lcom/onesignal/OneSignal$AppEntryAction;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/onesignal/OneSignal$AppEntryAction;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 96
    sput-object v5, Lcom/onesignal/OneSignal$AppEntryAction;->$VALUES:[Lcom/onesignal/OneSignal$AppEntryAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/OneSignal$AppEntryAction;
    .locals 1

    .line 96
    const-class v0, Lcom/onesignal/OneSignal$AppEntryAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/OneSignal$AppEntryAction;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/OneSignal$AppEntryAction;
    .locals 1

    .line 96
    sget-object v0, Lcom/onesignal/OneSignal$AppEntryAction;->$VALUES:[Lcom/onesignal/OneSignal$AppEntryAction;

    invoke-virtual {v0}, [Lcom/onesignal/OneSignal$AppEntryAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/OneSignal$AppEntryAction;

    return-object v0
.end method


# virtual methods
.method public isAppClose()Z
    .locals 1

    .line 111
    sget-object v0, Lcom/onesignal/OneSignal$AppEntryAction;->APP_CLOSE:Lcom/onesignal/OneSignal$AppEntryAction;

    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$AppEntryAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAppOpen()Z
    .locals 1

    .line 107
    sget-object v0, Lcom/onesignal/OneSignal$AppEntryAction;->APP_OPEN:Lcom/onesignal/OneSignal$AppEntryAction;

    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$AppEntryAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNotificationClick()Z
    .locals 1

    .line 103
    sget-object v0, Lcom/onesignal/OneSignal$AppEntryAction;->NOTIFICATION_CLICK:Lcom/onesignal/OneSignal$AppEntryAction;

    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$AppEntryAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
