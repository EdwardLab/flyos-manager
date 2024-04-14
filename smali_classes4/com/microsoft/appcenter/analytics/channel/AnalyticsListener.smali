.class public interface abstract Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;
.super Ljava/lang/Object;
.source "AnalyticsListener.java"


# virtual methods
.method public abstract onBeforeSending(Lcom/microsoft/appcenter/ingestion/models/Log;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "log"
        }
    .end annotation
.end method

.method public abstract onSendingFailed(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "log",
            "e"
        }
    .end annotation
.end method

.method public abstract onSendingSucceeded(Lcom/microsoft/appcenter/ingestion/models/Log;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "log"
        }
    .end annotation
.end method
