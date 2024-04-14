.class Lcom/onesignal/DelayedConsentInitializationParameters;
.super Ljava/lang/Object;
.source "DelayedConsentInitializationParameters.java"


# instance fields
.field public appId:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field public googleProjectNumber:Ljava/lang/String;

.field public openedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

.field public receivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$NotificationOpenedHandler;Lcom/onesignal/OneSignal$NotificationReceivedHandler;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/onesignal/DelayedConsentInitializationParameters;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/onesignal/DelayedConsentInitializationParameters;->googleProjectNumber:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/onesignal/DelayedConsentInitializationParameters;->appId:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/onesignal/DelayedConsentInitializationParameters;->openedHandler:Lcom/onesignal/OneSignal$NotificationOpenedHandler;

    .line 46
    iput-object p5, p0, Lcom/onesignal/DelayedConsentInitializationParameters;->receivedHandler:Lcom/onesignal/OneSignal$NotificationReceivedHandler;

    return-void
.end method
