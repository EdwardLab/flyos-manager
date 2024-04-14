.class Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository;
.super Lcom/onesignal/outcomes/OSOutcomeEventsRepository;
.source "OSOutcomeEventsV1Repository.java"


# static fields
.field private static final DIRECT:Ljava/lang/String; = "direct"


# direct methods
.method constructor <init>(Lcom/onesignal/OSLogger;Lcom/onesignal/outcomes/OSOutcomeEventsCache;Lcom/onesignal/outcomes/domain/OutcomeEventsService;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/outcomes/OSOutcomeEventsRepository;-><init>(Lcom/onesignal/OSLogger;Lcom/onesignal/outcomes/OSOutcomeEventsCache;Lcom/onesignal/outcomes/domain/OutcomeEventsService;)V

    return-void
.end method

.method private requestMeasureDirectOutcomeEvent(Ljava/lang/String;ILcom/onesignal/OutcomeEvent;Lcom/onesignal/OneSignalApiResponseHandler;)V
    .locals 1

    .line 40
    :try_start_0
    invoke-virtual {p3}, Lcom/onesignal/OutcomeEvent;->toJSONObjectForMeasure()Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "app_id"

    .line 41
    invoke-virtual {p3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "device_type"

    .line 42
    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "direct"

    const/4 p2, 0x1

    .line 43
    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 45
    iget-object p1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository;->outcomeEventsService:Lcom/onesignal/outcomes/domain/OutcomeEventsService;

    invoke-interface {p1, p3, p4}, Lcom/onesignal/outcomes/domain/OutcomeEventsService;->sendOutcomeEvent(Lorg/json/JSONObject;Lcom/onesignal/OneSignalApiResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 47
    iget-object p2, p0, Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Generating direct outcome:JSON Failed."

    invoke-interface {p2, p3, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private requestMeasureIndirectOutcomeEvent(Ljava/lang/String;ILcom/onesignal/OutcomeEvent;Lcom/onesignal/OneSignalApiResponseHandler;)V
    .locals 1

    .line 53
    :try_start_0
    invoke-virtual {p3}, Lcom/onesignal/OutcomeEvent;->toJSONObjectForMeasure()Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "app_id"

    .line 54
    invoke-virtual {p3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "device_type"

    .line 55
    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "direct"

    const/4 p2, 0x0

    .line 56
    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 58
    iget-object p1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository;->outcomeEventsService:Lcom/onesignal/outcomes/domain/OutcomeEventsService;

    invoke-interface {p1, p3, p4}, Lcom/onesignal/outcomes/domain/OutcomeEventsService;->sendOutcomeEvent(Lorg/json/JSONObject;Lcom/onesignal/OneSignalApiResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 60
    iget-object p2, p0, Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Generating indirect outcome:JSON Failed."

    invoke-interface {p2, p3, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private requestMeasureUnattributedOutcomeEvent(Ljava/lang/String;ILcom/onesignal/OutcomeEvent;Lcom/onesignal/OneSignalApiResponseHandler;)V
    .locals 1

    .line 66
    :try_start_0
    invoke-virtual {p3}, Lcom/onesignal/OutcomeEvent;->toJSONObjectForMeasure()Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "app_id"

    .line 67
    invoke-virtual {p3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "device_type"

    .line 68
    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    iget-object p1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository;->outcomeEventsService:Lcom/onesignal/outcomes/domain/OutcomeEventsService;

    invoke-interface {p1, p3, p4}, Lcom/onesignal/outcomes/domain/OutcomeEventsService;->sendOutcomeEvent(Lorg/json/JSONObject;Lcom/onesignal/OneSignalApiResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    iget-object p2, p0, Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Generating unattributed outcome:JSON Failed."

    invoke-interface {p2, p3, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public requestMeasureOutcomeEvent(Ljava/lang/String;ILcom/onesignal/outcomes/model/OSOutcomeEventParams;Lcom/onesignal/OneSignalApiResponseHandler;)V
    .locals 2

    .line 22
    invoke-static {p3}, Lcom/onesignal/OutcomeEvent;->fromOutcomeEventParamsV2toOutcomeEventV1(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)Lcom/onesignal/OutcomeEvent;

    move-result-object p3

    .line 23
    sget-object v0, Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository$1;->$SwitchMap$com$onesignal$influence$model$OSInfluenceType:[I

    invoke-virtual {p3}, Lcom/onesignal/OutcomeEvent;->getSession()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository;->requestMeasureUnattributedOutcomeEvent(Ljava/lang/String;ILcom/onesignal/OutcomeEvent;Lcom/onesignal/OneSignalApiResponseHandler;)V

    goto :goto_0

    .line 28
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository;->requestMeasureIndirectOutcomeEvent(Ljava/lang/String;ILcom/onesignal/OutcomeEvent;Lcom/onesignal/OneSignalApiResponseHandler;)V

    goto :goto_0

    .line 25
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository;->requestMeasureDirectOutcomeEvent(Ljava/lang/String;ILcom/onesignal/OutcomeEvent;Lcom/onesignal/OneSignalApiResponseHandler;)V

    :goto_0
    return-void
.end method
