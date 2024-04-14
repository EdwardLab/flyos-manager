.class Lcom/microsoft/appcenter/AppCenter$7;
.super Ljava/lang/Object;
.source "AppCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/AppCenter;->startServices(Z[Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/AppCenter;

.field final synthetic val$startFromApp:Z

.field final synthetic val$startedServices:Ljava/util/Collection;

.field final synthetic val$updatedServices:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/AppCenter;Ljava/util/Collection;Ljava/util/Collection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$updatedServices",
            "val$startedServices",
            "val$startFromApp"
        }
    .end annotation

    .line 953
    iput-object p1, p0, Lcom/microsoft/appcenter/AppCenter$7;->this$0:Lcom/microsoft/appcenter/AppCenter;

    iput-object p2, p0, Lcom/microsoft/appcenter/AppCenter$7;->val$updatedServices:Ljava/util/Collection;

    iput-object p3, p0, Lcom/microsoft/appcenter/AppCenter$7;->val$startedServices:Ljava/util/Collection;

    iput-boolean p4, p0, Lcom/microsoft/appcenter/AppCenter$7;->val$startFromApp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 957
    iget-object v0, p0, Lcom/microsoft/appcenter/AppCenter$7;->this$0:Lcom/microsoft/appcenter/AppCenter;

    iget-object v1, p0, Lcom/microsoft/appcenter/AppCenter$7;->val$updatedServices:Ljava/util/Collection;

    iget-object v2, p0, Lcom/microsoft/appcenter/AppCenter$7;->val$startedServices:Ljava/util/Collection;

    iget-boolean v3, p0, Lcom/microsoft/appcenter/AppCenter$7;->val$startFromApp:Z

    invoke-static {v0, v1, v2, v3}, Lcom/microsoft/appcenter/AppCenter;->access$600(Lcom/microsoft/appcenter/AppCenter;Ljava/lang/Iterable;Ljava/lang/Iterable;Z)V

    return-void
.end method
