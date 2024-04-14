.class abstract Lcom/onesignal/outcomes/OSOutcomeEventsClient;
.super Ljava/lang/Object;
.source "OSOutcomeEventsClient.java"

# interfaces
.implements Lcom/onesignal/outcomes/domain/OutcomeEventsService;


# instance fields
.field final client:Lcom/onesignal/OneSignalAPIClient;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalAPIClient;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsClient;->client:Lcom/onesignal/OneSignalAPIClient;

    return-void
.end method


# virtual methods
.method public abstract sendOutcomeEvent(Lorg/json/JSONObject;Lcom/onesignal/OneSignalApiResponseHandler;)V
.end method
