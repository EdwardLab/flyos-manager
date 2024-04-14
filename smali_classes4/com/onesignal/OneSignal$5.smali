.class final Lcom/onesignal/OneSignal$5;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Lcom/onesignal/OneSignalRemoteParams$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->makeAndroidParamsRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/onesignal/OneSignalRemoteParams$Params;)V
    .locals 3

    .line 1064
    sput-object p1, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    .line 1065
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    iget-object v0, v0, Lcom/onesignal/OneSignalRemoteParams$Params;->googleProjectNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1066
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    iget-object v0, v0, Lcom/onesignal/OneSignalRemoteParams$Params;->googleProjectNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->access$1402(Ljava/lang/String;)Ljava/lang/String;

    .line 1068
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    sget-object v1, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    iget-boolean v1, v1, Lcom/onesignal/OneSignalRemoteParams$Params;->firebaseAnalytics:Z

    const-string v2, "GT_FIREBASE_TRACKING_ENABLED"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1073
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    sget-object v1, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    iget-boolean v1, v1, Lcom/onesignal/OneSignalRemoteParams$Params;->restoreTTLFilter:Z

    const-string v2, "OS_RESTORE_TTL_FILTER"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1078
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    sget-object v1, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    iget-boolean v1, v1, Lcom/onesignal/OneSignalRemoteParams$Params;->clearGroupOnSummaryClick:Z

    const-string v2, "OS_CLEAR_GROUP_SUMMARY_CLICK"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1083
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    sget-object v1, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    iget-boolean v1, v1, Lcom/onesignal/OneSignalRemoteParams$Params;->receiveReceiptEnabled:Z

    const-string v2, "PREFS_OS_RECEIVE_RECEIPTS_ENABLED"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1088
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    .line 1090
    invoke-static {}, Lcom/onesignal/OneSignal;->access$1500()Lcom/onesignal/OSSharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Lcom/onesignal/OSSharedPreferences;->getOutcomesV2KeyName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/onesignal/OneSignalRemoteParams$Params;->influenceParams:Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;

    iget-boolean v2, v2, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->outcomesV2ServiceEnabled:Z

    .line 1088
    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1093
    invoke-static {}, Lcom/onesignal/OneSignal;->access$1600()Lcom/onesignal/OSLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal saveInfluenceParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/onesignal/OneSignalRemoteParams$Params;->influenceParams:Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;

    invoke-virtual {v2}, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 1094
    invoke-static {}, Lcom/onesignal/OneSignal;->access$1700()Lcom/onesignal/influence/OSTrackerFactory;

    move-result-object v0

    iget-object v1, p1, Lcom/onesignal/OneSignalRemoteParams$Params;->influenceParams:Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;

    invoke-virtual {v0, v1}, Lcom/onesignal/influence/OSTrackerFactory;->saveInfluenceParams(Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;)V

    .line 1096
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/onesignal/OneSignalRemoteParams$Params;->notificationChannels:Lorg/json/JSONArray;

    invoke-static {v0, p1}, Lcom/onesignal/NotificationChannelManager;->processChannelList(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 1100
    invoke-static {}, Lcom/onesignal/OneSignal;->access$1800()V

    return-void
.end method
