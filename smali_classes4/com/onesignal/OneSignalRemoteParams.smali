.class public Lcom/onesignal/OneSignalRemoteParams;
.super Ljava/lang/Object;
.source "OneSignalRemoteParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignalRemoteParams$CallBack;,
        Lcom/onesignal/OneSignalRemoteParams$Params;,
        Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;,
        Lcom/onesignal/OneSignalRemoteParams$FCMParams;
    }
.end annotation


# static fields
.field public static final DEFAULT_INDIRECT_ATTRIBUTION_WINDOW:I = 0x5a0

.field public static final DEFAULT_NOTIFICATION_LIMIT:I = 0xa

.field private static final DIRECT_PARAM:Ljava/lang/String; = "direct"

.field private static final ENABLED_PARAM:Ljava/lang/String; = "enabled"

.field private static final FCM_API_KEY:Ljava/lang/String; = "api_key"

.field private static final FCM_APP_ID:Ljava/lang/String; = "app_id"

.field private static final FCM_PARENT_PARAM:Ljava/lang/String; = "fcm"

.field private static final FCM_PROJECT_ID:Ljava/lang/String; = "project_id"

.field private static final IAM_ATTRIBUTION_PARAM:Ljava/lang/String; = "in_app_message_attribution"

.field private static final INCREASE_BETWEEN_RETRIES:I = 0x2710

.field private static final INDIRECT_PARAM:Ljava/lang/String; = "indirect"

.field private static final MAX_WAIT_BETWEEN_RETRIES:I = 0x15f90

.field private static final MIN_WAIT_BETWEEN_RETRIES:I = 0x7530

.field private static final NOTIFICATION_ATTRIBUTION_PARAM:Ljava/lang/String; = "notification_attribution"

.field private static final OUTCOMES_V2_SERVICE_PARAM:Ljava/lang/String; = "v2_enabled"

.field private static final OUTCOME_PARAM:Ljava/lang/String; = "outcomes"

.field private static final UNATTRIBUTED_PARAM:Ljava/lang/String; = "unattributed"

.field private static androidParamsRetries:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 12
    sget v0, Lcom/onesignal/OneSignalRemoteParams;->androidParamsRetries:I

    return v0
.end method

.method static synthetic access$008()I
    .locals 2

    .line 12
    sget v0, Lcom/onesignal/OneSignalRemoteParams;->androidParamsRetries:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/onesignal/OneSignalRemoteParams;->androidParamsRetries:I

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;Lcom/onesignal/OneSignalRemoteParams$CallBack;)V
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/onesignal/OneSignalRemoteParams;->processJson(Ljava/lang/String;Lcom/onesignal/OneSignalRemoteParams$CallBack;)V

    return-void
.end method

.method static synthetic access$200(Lorg/json/JSONObject;Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;)V
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/onesignal/OneSignalRemoteParams;->processOutcomeJson(Lorg/json/JSONObject;Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;)V

    return-void
.end method

.method static makeAndroidParamsRequest(Lcom/onesignal/OneSignalRemoteParams$CallBack;)V
    .locals 3

    .line 117
    new-instance v0, Lcom/onesignal/OneSignalRemoteParams$1;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignalRemoteParams$1;-><init>(Lcom/onesignal/OneSignalRemoteParams$CallBack;)V

    .line 145
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apps/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/android_params.js"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 146
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?player_id="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 150
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Starting request to get Android parameters."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const-string v1, "CACHE_KEY_REMOTE_PARAMS"

    .line 151
    invoke-static {p0, v0, v1}, Lcom/onesignal/OneSignalRestClient;->get(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)V

    return-void
.end method

.method private static processJson(Ljava/lang/String;Lcom/onesignal/OneSignalRemoteParams$CallBack;)V
    .locals 2

    .line 157
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    new-instance p0, Lcom/onesignal/OneSignalRemoteParams$2;

    invoke-direct {p0, v0}, Lcom/onesignal/OneSignalRemoteParams$2;-><init>(Lorg/json/JSONObject;)V

    .line 190
    invoke-interface {p1, p0}, Lcom/onesignal/OneSignalRemoteParams$CallBack;->complete(Lcom/onesignal/OneSignalRemoteParams$Params;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 160
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Error parsing android_params!: "

    invoke-static {v0, v1, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response that errored from android_params!: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void
.end method

.method private static processOutcomeJson(Lorg/json/JSONObject;Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;)V
    .locals 8

    const-string v0, "v2_enabled"

    .line 194
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->outcomesV2ServiceEnabled:Z

    :cond_0
    const-string v0, "direct"

    .line 197
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "enabled"

    if-eqz v1, :cond_1

    .line 198
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 199
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->directEnabled:Z

    :cond_1
    const-string v0, "indirect"

    .line 201
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 202
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 203
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->indirectEnabled:Z

    const-string v1, "notification_attribution"

    .line 205
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0xa

    const-string v5, "limit"

    const/16 v6, 0x5a0

    const-string v7, "minutes_since_displayed"

    if-eqz v3, :cond_2

    .line 206
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 207
    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->indirectNotificationAttributionWindow:I

    .line 208
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->notificationLimit:I

    :cond_2
    const-string v1, "in_app_message_attribution"

    .line 211
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 212
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 213
    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->indirectIAMAttributionWindow:I

    .line 214
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->iamLimit:I

    :cond_3
    const-string v0, "unattributed"

    .line 217
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 218
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 219
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->unattributedEnabled:Z

    :cond_4
    return-void
.end method
