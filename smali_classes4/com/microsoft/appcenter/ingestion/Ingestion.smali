.class public interface abstract Lcom/microsoft/appcenter/ingestion/Ingestion;
.super Ljava/lang/Object;
.source "Ingestion.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract isEnabled()Z
.end method

.method public abstract reopen()V
.end method

.method public abstract sendAsync(Ljava/lang/String;Ljava/util/UUID;Lcom/microsoft/appcenter/ingestion/models/LogContainer;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appSecret",
            "installId",
            "logContainer",
            "serviceCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
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
