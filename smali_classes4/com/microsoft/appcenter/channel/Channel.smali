.class public interface abstract Lcom/microsoft/appcenter/channel/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/channel/Channel$GroupListener;,
        Lcom/microsoft/appcenter/channel/Channel$Listener;
    }
.end annotation


# virtual methods
.method public abstract addGroup(Ljava/lang/String;IJILcom/microsoft/appcenter/ingestion/Ingestion;Lcom/microsoft/appcenter/channel/Channel$GroupListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupName",
            "maxLogsPerBatch",
            "batchTimeInterval",
            "maxParallelBatches",
            "ingestion",
            "groupListener"
        }
    .end annotation
.end method

.method public abstract addListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract clear(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupName"
        }
    .end annotation
.end method

.method public abstract enqueue(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V
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

.method public abstract invalidateDeviceCache()V
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract pauseGroup(Ljava/lang/String;Ljava/lang/String;)V
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

.method public abstract removeGroup(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupName"
        }
    .end annotation
.end method

.method public abstract removeListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract resumeGroup(Ljava/lang/String;Ljava/lang/String;)V
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

.method public abstract setAppSecret(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appSecret"
        }
    .end annotation
.end method

.method public abstract setEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method public abstract setLogUrl(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logUrl"
        }
    .end annotation
.end method

.method public abstract setMaxStorageSize(J)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxStorageSizeInBytes"
        }
    .end annotation
.end method

.method public abstract setNetworkRequests(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAllowed"
        }
    .end annotation
.end method

.method public abstract shutdown()V
.end method
