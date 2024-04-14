.class final Lcom/onesignal/OneSignal$1;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Lcom/onesignal/OSSessionManager$SessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionEnding(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;)V"
        }
    .end annotation

    .line 453
    invoke-static {}, Lcom/onesignal/OneSignal;->access$100()Lcom/onesignal/OSOutcomeEventsController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 454
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal onSessionEnding called before init!"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 455
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->access$100()Lcom/onesignal/OSOutcomeEventsController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 456
    invoke-static {}, Lcom/onesignal/OneSignal;->access$100()Lcom/onesignal/OSOutcomeEventsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSOutcomeEventsController;->cleanOutcomes()V

    .line 457
    :cond_1
    invoke-static {}, Lcom/onesignal/FocusTimeController;->getInstance()Lcom/onesignal/FocusTimeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onesignal/FocusTimeController;->onSessionEnded(Ljava/util/List;)V

    return-void
.end method
