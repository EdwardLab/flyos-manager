.class interface abstract Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;
.super Ljava/lang/Object;
.source "Crashes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/crashes/Crashes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "CallbackProcessor"
.end annotation


# virtual methods
.method public abstract onCallBack(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "report"
        }
    .end annotation
.end method
