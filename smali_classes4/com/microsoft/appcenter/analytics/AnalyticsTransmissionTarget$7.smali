.class Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$7;
.super Lcom/microsoft/appcenter/channel/AbstractChannelListener;
.source "AnalyticsTransmissionTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->getChannelListener()Lcom/microsoft/appcenter/channel/Channel$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 407
    invoke-direct {p0}, Lcom/microsoft/appcenter/channel/AbstractChannelListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreparingLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;)V
    .locals 0
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

    .line 411
    invoke-static {p1}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->access$600(Lcom/microsoft/appcenter/ingestion/models/Log;)V

    return-void
.end method
