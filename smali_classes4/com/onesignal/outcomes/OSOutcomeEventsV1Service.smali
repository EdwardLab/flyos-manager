.class Lcom/onesignal/outcomes/OSOutcomeEventsV1Service;
.super Lcom/onesignal/outcomes/OSOutcomeEventsClient;
.source "OSOutcomeEventsV1Service.java"


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalAPIClient;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/onesignal/outcomes/OSOutcomeEventsClient;-><init>(Lcom/onesignal/OneSignalAPIClient;)V

    return-void
.end method


# virtual methods
.method public sendOutcomeEvent(Lorg/json/JSONObject;Lcom/onesignal/OneSignalApiResponseHandler;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsV1Service;->client:Lcom/onesignal/OneSignalAPIClient;

    const-string v1, "outcomes/measure"

    invoke-interface {v0, v1, p1, p2}, Lcom/onesignal/OneSignalAPIClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalApiResponseHandler;)V

    return-void
.end method
