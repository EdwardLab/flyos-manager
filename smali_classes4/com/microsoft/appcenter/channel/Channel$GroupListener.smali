.class public interface abstract Lcom/microsoft/appcenter/channel/Channel$GroupListener;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/channel/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GroupListener"
.end annotation


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

.method public abstract onFailure(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V
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

.method public abstract onSuccess(Lcom/microsoft/appcenter/ingestion/models/Log;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "log"
        }
    .end annotation
.end method
