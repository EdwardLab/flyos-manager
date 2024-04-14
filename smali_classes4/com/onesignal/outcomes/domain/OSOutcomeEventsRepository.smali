.class public interface abstract Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;
.super Ljava/lang/Object;
.source "OSOutcomeEventsRepository.java"


# virtual methods
.method public abstract getNotCachedUniqueOutcome(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSavedOutcomeEvents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/outcomes/model/OSOutcomeEventParams;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUnattributedUniqueOutcomeEventsSent()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeEvent(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
.end method

.method public abstract requestMeasureOutcomeEvent(Ljava/lang/String;ILcom/onesignal/outcomes/model/OSOutcomeEventParams;Lcom/onesignal/OneSignalApiResponseHandler;)V
.end method

.method public abstract saveOutcomeEvent(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
.end method

.method public abstract saveUnattributedUniqueOutcomeEventsSent(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveUniqueOutcomeNotifications(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
.end method
