.class public final enum Lcom/onesignal/OSNotificationAction$ActionType;
.super Ljava/lang/Enum;
.source "OSNotificationAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OSNotificationAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/OSNotificationAction$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onesignal/OSNotificationAction$ActionType;

.field public static final enum ActionTaken:Lcom/onesignal/OSNotificationAction$ActionType;

.field public static final enum Opened:Lcom/onesignal/OSNotificationAction$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    new-instance v0, Lcom/onesignal/OSNotificationAction$ActionType;

    const-string v1, "Opened"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSNotificationAction$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/OSNotificationAction$ActionType;->Opened:Lcom/onesignal/OSNotificationAction$ActionType;

    .line 39
    new-instance v1, Lcom/onesignal/OSNotificationAction$ActionType;

    const-string v3, "ActionTaken"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/onesignal/OSNotificationAction$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/onesignal/OSNotificationAction$ActionType;->ActionTaken:Lcom/onesignal/OSNotificationAction$ActionType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/onesignal/OSNotificationAction$ActionType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 34
    sput-object v3, Lcom/onesignal/OSNotificationAction$ActionType;->$VALUES:[Lcom/onesignal/OSNotificationAction$ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/OSNotificationAction$ActionType;
    .locals 1

    .line 34
    const-class v0, Lcom/onesignal/OSNotificationAction$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/OSNotificationAction$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/OSNotificationAction$ActionType;
    .locals 1

    .line 34
    sget-object v0, Lcom/onesignal/OSNotificationAction$ActionType;->$VALUES:[Lcom/onesignal/OSNotificationAction$ActionType;

    invoke-virtual {v0}, [Lcom/onesignal/OSNotificationAction$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/OSNotificationAction$ActionType;

    return-object v0
.end method
