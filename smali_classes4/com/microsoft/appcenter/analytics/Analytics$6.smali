.class Lcom/microsoft/appcenter/analytics/Analytics$6;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Lcom/microsoft/appcenter/channel/Channel$GroupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/analytics/Analytics;->getChannelListener()Lcom/microsoft/appcenter/channel/Channel$GroupListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/analytics/Analytics;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/analytics/Analytics;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 687
    iput-object p1, p0, Lcom/microsoft/appcenter/analytics/Analytics$6;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeSending(Lcom/microsoft/appcenter/ingestion/models/Log;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "log"
        }
    .end annotation

    .line 691
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics$6;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v0}, Lcom/microsoft/appcenter/analytics/Analytics;->access$500(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics$6;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v0}, Lcom/microsoft/appcenter/analytics/Analytics;->access$500(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;->onBeforeSending(Lcom/microsoft/appcenter/ingestion/models/Log;)V

    :cond_0
    return-void
.end method

.method public onFailure(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V
    .locals 1
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

    .line 705
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics$6;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v0}, Lcom/microsoft/appcenter/analytics/Analytics;->access$500(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics$6;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v0}, Lcom/microsoft/appcenter/analytics/Analytics;->access$500(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;->onSendingFailed(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/microsoft/appcenter/ingestion/models/Log;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "log"
        }
    .end annotation

    .line 698
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics$6;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v0}, Lcom/microsoft/appcenter/analytics/Analytics;->access$500(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics$6;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v0}, Lcom/microsoft/appcenter/analytics/Analytics;->access$500(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/microsoft/appcenter/analytics/channel/AnalyticsListener;->onSendingSucceeded(Lcom/microsoft/appcenter/ingestion/models/Log;)V

    :cond_0
    return-void
.end method
