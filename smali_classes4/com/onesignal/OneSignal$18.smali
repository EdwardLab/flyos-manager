.class final Lcom/onesignal/OneSignal$18;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->fireNotificationOpenedHandler(Lcom/onesignal/OSNotificationOpenResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$openedResult:Lcom/onesignal/OSNotificationOpenResult;


# direct methods
.method constructor <init>(Lcom/onesignal/OSNotificationOpenResult;)V
    .locals 0

    .line 2174
    iput-object p1, p0, Lcom/onesignal/OneSignal$18;->val$openedResult:Lcom/onesignal/OSNotificationOpenResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2177
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mNotificationOpenedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    iget-object v1, p0, Lcom/onesignal/OneSignal$18;->val$openedResult:Lcom/onesignal/OSNotificationOpenResult;

    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$NotificationOpenedHandler;->notificationOpened(Lcom/onesignal/OSNotificationOpenResult;)V

    return-void
.end method
