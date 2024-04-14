.class public interface abstract Lcom/microsoft/appcenter/crashes/CrashesListener;
.super Ljava/lang/Object;
.source "CrashesListener.java"


# virtual methods
.method public abstract getErrorAttachments(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "report"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/crashes/model/ErrorReport;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onBeforeSending(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "report"
        }
    .end annotation
.end method

.method public abstract onSendingFailed(Lcom/microsoft/appcenter/crashes/model/ErrorReport;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "report",
            "e"
        }
    .end annotation
.end method

.method public abstract onSendingSucceeded(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "report"
        }
    .end annotation
.end method

.method public abstract shouldAwaitUserConfirmation()Z
.end method

.method public abstract shouldProcess(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "report"
        }
    .end annotation
.end method
