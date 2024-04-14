.class public interface abstract Lcom/microsoft/appcenter/http/ServiceCallback;
.super Ljava/lang/Object;
.source "ServiceCallback.java"


# virtual methods
.method public abstract onCallFailed(Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation
.end method

.method public abstract onCallSucceeded(Lcom/microsoft/appcenter/http/HttpResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "httpResponse"
        }
    .end annotation
.end method
