.class Lcom/microsoft/appcenter/AppCenter$4;
.super Ljava/lang/Object;
.source "AppCenter.java"

# interfaces
.implements Lcom/microsoft/appcenter/AppCenterHandler;


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

    .line 742
    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter$4;->this$0:Lcom/microsoft/appcenter/AppCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnable",
            "disabledRunnable"
        }
    .end annotation

    .line 746
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter$4;->this$0:Lcom/microsoft/appcenter/AppCenter;

    invoke-static {v0, p1, p2}, Lcom/microsoft/appcenter/AppCenter;->access$400(Lcom/microsoft/appcenter/AppCenter;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
