.class Lcom/onesignal/FocusTimeController$FocusTimeProcessorUnattributed;
.super Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;
.source "FocusTimeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/FocusTimeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FocusTimeProcessorUnattributed"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, v0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;-><init>(Lcom/onesignal/FocusTimeController$1;)V

    const-wide/16 v0, 0x3c

    .line 103
    iput-wide v0, p0, Lcom/onesignal/FocusTimeController$FocusTimeProcessorUnattributed;->MIN_ON_FOCUS_TIME_SEC:J

    const-string v0, "GT_UNSENT_ACTIVE_TIME"

    .line 104
    iput-object v0, p0, Lcom/onesignal/FocusTimeController$FocusTimeProcessorUnattributed;->PREF_KEY_FOR_UNSENT_TIME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected saveInfluences(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected sendTime(Lcom/onesignal/FocusTimeController$FocusEventType;)V
    .locals 1

    .line 119
    sget-object v0, Lcom/onesignal/FocusTimeController$FocusEventType;->END_SESSION:Lcom/onesignal/FocusTimeController$FocusEventType;

    invoke-virtual {p1, v0}, Lcom/onesignal/FocusTimeController$FocusEventType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorUnattributed;->syncUnsentTimeOnBackgroundEvent()V

    return-void
.end method

.method protected timeTypeApplies(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;)Z"
        }
    .end annotation

    .line 108
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/influence/model/OSInfluence;

    .line 110
    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceType;->isAttributed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 113
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":timeTypeApplies for influences: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " true"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
