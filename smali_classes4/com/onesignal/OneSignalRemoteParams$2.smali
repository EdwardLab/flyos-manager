.class final Lcom/onesignal/OneSignalRemoteParams$2;
.super Lcom/onesignal/OneSignalRemoteParams$Params;
.source "OneSignalRemoteParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalRemoteParams;->processJson(Ljava/lang/String;Lcom/onesignal/OneSignalRemoteParams$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$responseJson:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .line 165
    iput-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->val$responseJson:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRemoteParams$Params;-><init>()V

    const-string v0, "enterp"

    const/4 v1, 0x0

    .line 166
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->enterprise:Z

    const-string v0, "require_email_auth"

    .line 167
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->useEmailAuth:Z

    const-string v0, "require_user_id_auth"

    .line 168
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->useUserIdAuth:Z

    const-string v0, "chnl_lst"

    .line 169
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->notificationChannels:Lorg/json/JSONArray;

    const-string v0, "fba"

    .line 170
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->firebaseAnalytics:Z

    const-string v0, "restore_ttl_filter"

    const/4 v2, 0x1

    .line 171
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->restoreTTLFilter:Z

    const-string v0, "android_sender_id"

    const/4 v3, 0x0

    .line 172
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->googleProjectNumber:Ljava/lang/String;

    const-string v0, "clear_group_on_summary_click"

    .line 173
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->clearGroupOnSummaryClick:Z

    const-string v0, "receive_receipts_enable"

    .line 174
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->receiveReceiptEnabled:Z

    .line 176
    new-instance v0, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;

    invoke-direct {v0}, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->influenceParams:Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;

    const-string v0, "outcomes"

    .line 178
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->influenceParams:Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;

    invoke-static {v0, v1}, Lcom/onesignal/OneSignalRemoteParams;->access$200(Lorg/json/JSONObject;Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;)V

    .line 181
    :cond_0
    new-instance v0, Lcom/onesignal/OneSignalRemoteParams$FCMParams;

    invoke-direct {v0}, Lcom/onesignal/OneSignalRemoteParams$FCMParams;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->fcmParams:Lcom/onesignal/OneSignalRemoteParams$FCMParams;

    const-string v0, "fcm"

    .line 182
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 184
    iget-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->fcmParams:Lcom/onesignal/OneSignalRemoteParams$FCMParams;

    const-string v1, "api_key"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OneSignalRemoteParams$FCMParams;->apiKey:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->fcmParams:Lcom/onesignal/OneSignalRemoteParams$FCMParams;

    const-string v1, "app_id"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OneSignalRemoteParams$FCMParams;->appId:Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->fcmParams:Lcom/onesignal/OneSignalRemoteParams$FCMParams;

    const-string v1, "project_id"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/onesignal/OneSignalRemoteParams$FCMParams;->projectId:Ljava/lang/String;

    :cond_1
    return-void
.end method
