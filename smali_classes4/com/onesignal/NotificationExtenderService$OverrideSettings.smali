.class public Lcom/onesignal/NotificationExtenderService$OverrideSettings;
.super Ljava/lang/Object;
.source "NotificationExtenderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/NotificationExtenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverrideSettings"
.end annotation


# instance fields
.field public androidNotificationId:Ljava/lang/Integer;

.field public extender:Landroidx/core/app/NotificationCompat$Extender;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method override(Lcom/onesignal/NotificationExtenderService$OverrideSettings;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object p1, p1, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 87
    iput-object p1, p0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->androidNotificationId:Ljava/lang/Integer;

    :cond_1
    return-void
.end method
