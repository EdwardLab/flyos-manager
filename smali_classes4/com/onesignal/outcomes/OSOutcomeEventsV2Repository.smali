.class Lcom/onesignal/outcomes/OSOutcomeEventsV2Repository;
.super Lcom/onesignal/outcomes/OSOutcomeEventsRepository;
.source "OSOutcomeEventsV2Repository.java"


# direct methods
.method constructor <init>(Lcom/onesignal/OSLogger;Lcom/onesignal/outcomes/OSOutcomeEventsCache;Lcom/onesignal/outcomes/domain/OutcomeEventsService;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/outcomes/OSOutcomeEventsRepository;-><init>(Lcom/onesignal/OSLogger;Lcom/onesignal/outcomes/OSOutcomeEventsCache;Lcom/onesignal/outcomes/domain/OutcomeEventsService;)V

    return-void
.end method


# virtual methods
.method public requestMeasureOutcomeEvent(Ljava/lang/String;ILcom/onesignal/outcomes/model/OSOutcomeEventParams;Lcom/onesignal/OneSignalApiResponseHandler;)V
    .locals 1

    .line 20
    :try_start_0
    invoke-virtual {p3}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "app_id"

    .line 21
    invoke-virtual {p3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "device_type"

    .line 22
    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    iget-object p1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsV2Repository;->outcomeEventsService:Lcom/onesignal/outcomes/domain/OutcomeEventsService;

    invoke-interface {p1, p3, p4}, Lcom/onesignal/outcomes/domain/OutcomeEventsService;->sendOutcomeEvent(Lorg/json/JSONObject;Lcom/onesignal/OneSignalApiResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    iget-object p2, p0, Lcom/onesignal/outcomes/OSOutcomeEventsV2Repository;->logger:Lcom/onesignal/OSLogger;

    const-string p3, "Generating indirect outcome:JSON Failed."

    invoke-interface {p2, p3, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
