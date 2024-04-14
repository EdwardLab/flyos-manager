.class public interface abstract Lcom/microsoft/appcenter/channel/Channel$Listener;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/channel/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onClear(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupName"
        }
    .end annotation
.end method

.method public abstract onGloballyEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnabled"
        }
    .end annotation
.end method

.method public abstract onGroupAdded(Ljava/lang/String;Lcom/microsoft/appcenter/channel/Channel$GroupListener;J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupName",
            "groupListener",
            "batchTimeInterval"
        }
    .end annotation
.end method

.method public abstract onGroupRemoved(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupName"
        }
    .end annotation
.end method

.method public abstract onPaused(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "groupName",
            "targetToken"
        }
    .end annotation
.end method

.method public abstract onPreparedLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "log",
            "groupName",
            "flags"
        }
    .end annotation
.end method

.method public abstract onPreparingLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "log",
            "groupName"
        }
    .end annotation
.end method

.method public abstract onResumed(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "groupName",
            "targetToken"
        }
    .end annotation
.end method

.method public abstract shouldFilter(Lcom/microsoft/appcenter/ingestion/models/Log;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "log"
        }
    .end annotation
.end method
