.class Lcom/microsoft/appcenter/AppCenter$3;
.super Ljava/lang/Object;
.source "AppCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/AppCenter;->configureInstance(Landroid/app/Application;Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/AppCenter;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/AppCenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 711
    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter$3;->this$0:Lcom/microsoft/appcenter/AppCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 715
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter$3;->this$0:Lcom/microsoft/appcenter/AppCenter;

    invoke-static {v0}, Lcom/microsoft/appcenter/AppCenter;->access$000(Lcom/microsoft/appcenter/AppCenter;)Lcom/microsoft/appcenter/channel/Channel;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter$3;->this$0:Lcom/microsoft/appcenter/AppCenter;

    invoke-static {v1}, Lcom/microsoft/appcenter/AppCenter;->access$100(Lcom/microsoft/appcenter/AppCenter;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/microsoft/appcenter/channel/Channel;->setAppSecret(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter$3;->this$0:Lcom/microsoft/appcenter/AppCenter;

    invoke-static {v0}, Lcom/microsoft/appcenter/AppCenter;->access$300(Lcom/microsoft/appcenter/AppCenter;)V

    return-void
.end method
