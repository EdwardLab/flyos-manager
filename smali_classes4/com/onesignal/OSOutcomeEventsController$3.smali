.class Lcom/onesignal/OSOutcomeEventsController$3;
.super Ljava/lang/Object;
.source "OSOutcomeEventsController.java"

# interfaces
.implements Lcom/onesignal/OneSignalApiResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSOutcomeEventsController;->sendAndCreateOutcomeEvent(Ljava/lang/String;FLjava/util/List;Lcom/onesignal/OneSignal$OutcomeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OSOutcomeEventsController;

.field final synthetic val$callback:Lcom/onesignal/OneSignal$OutcomeCallback;

.field final synthetic val$eventParams:Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$timestampSeconds:J


# direct methods
.method constructor <init>(Lcom/onesignal/OSOutcomeEventsController;Lcom/onesignal/outcomes/model/OSOutcomeEventParams;Lcom/onesignal/OneSignal$OutcomeCallback;JLjava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/onesignal/OSOutcomeEventsController$3;->this$0:Lcom/onesignal/OSOutcomeEventsController;

    iput-object p2, p0, Lcom/onesignal/OSOutcomeEventsController$3;->val$eventParams:Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    iput-object p3, p0, Lcom/onesignal/OSOutcomeEventsController$3;->val$callback:Lcom/onesignal/OneSignal$OutcomeCallback;

    iput-wide p4, p0, Lcom/onesignal/OSOutcomeEventsController$3;->val$timestampSeconds:J

    iput-object p6, p0, Lcom/onesignal/OSOutcomeEventsController$3;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 237
    new-instance p3, Ljava/lang/Thread;

    new-instance v0, Lcom/onesignal/OSOutcomeEventsController$3$1;

    invoke-direct {v0, p0}, Lcom/onesignal/OSOutcomeEventsController$3$1;-><init>(Lcom/onesignal/OSOutcomeEventsController$3;)V

    const-string v1, "OS_SAVE_OUTCOMES"

    invoke-direct {p3, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 247
    sget-object p3, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending outcome with name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OSOutcomeEventsController$3;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed with status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and response: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nOutcome event was cached and will be reattempted on app cold start"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 252
    iget-object p1, p0, Lcom/onesignal/OSOutcomeEventsController$3;->val$callback:Lcom/onesignal/OneSignal$OutcomeCallback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 253
    invoke-interface {p1, p2}, Lcom/onesignal/OneSignal$OutcomeCallback;->onSuccess(Lcom/onesignal/OutcomeEvent;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    .line 228
    iget-object p1, p0, Lcom/onesignal/OSOutcomeEventsController$3;->this$0:Lcom/onesignal/OSOutcomeEventsController;

    iget-object v0, p0, Lcom/onesignal/OSOutcomeEventsController$3;->val$eventParams:Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    invoke-static {p1, v0}, Lcom/onesignal/OSOutcomeEventsController;->access$200(Lcom/onesignal/OSOutcomeEventsController;Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V

    .line 231
    iget-object p1, p0, Lcom/onesignal/OSOutcomeEventsController$3;->val$callback:Lcom/onesignal/OneSignal$OutcomeCallback;

    if-eqz p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/onesignal/OSOutcomeEventsController$3;->val$eventParams:Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    invoke-static {v0}, Lcom/onesignal/OutcomeEvent;->fromOutcomeEventParamsV2toOutcomeEventV1(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)Lcom/onesignal/OutcomeEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/onesignal/OneSignal$OutcomeCallback;->onSuccess(Lcom/onesignal/OutcomeEvent;)V

    :cond_0
    return-void
.end method
