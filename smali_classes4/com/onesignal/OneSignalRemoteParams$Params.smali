.class Lcom/onesignal/OneSignalRemoteParams$Params;
.super Ljava/lang/Object;
.source "OneSignalRemoteParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignalRemoteParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Params"
.end annotation


# instance fields
.field clearGroupOnSummaryClick:Z

.field enterprise:Z

.field fcmParams:Lcom/onesignal/OneSignalRemoteParams$FCMParams;

.field firebaseAnalytics:Z

.field googleProjectNumber:Ljava/lang/String;

.field influenceParams:Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;

.field notificationChannels:Lorg/json/JSONArray;

.field receiveReceiptEnabled:Z

.field restoreTTLFilter:Z

.field useEmailAuth:Z

.field useUserIdAuth:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
