.class Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$1;
.super Ljava/lang/Object;
.source "AnalyticsTransmissionTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->addAuthenticationProvider(Lcom/microsoft/appcenter/analytics/AuthenticationProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$authenticationProvider:Lcom/microsoft/appcenter/analytics/AuthenticationProvider;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/analytics/AuthenticationProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$authenticationProvider"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$1;->val$authenticationProvider:Lcom/microsoft/appcenter/analytics/AuthenticationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$1;->val$authenticationProvider:Lcom/microsoft/appcenter/analytics/AuthenticationProvider;

    invoke-static {v0}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->access$000(Lcom/microsoft/appcenter/analytics/AuthenticationProvider;)V

    return-void
.end method
