.class final Lcom/google/appinventor/components/runtime/Form$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0

    .line 1020
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1022
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$100(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$100(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$100(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1026
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->access$802(Lcom/google/appinventor/components/runtime/Form;Z)Z

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Initialize"

    invoke-static {v0, v3, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1031
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Fixed"

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    goto :goto_0

    .line 1034
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Responsive"

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    .line 1036
    :goto_0
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Form;->access$1102(Z)Z

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receiveSharedValueType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Form;->access$1200(Lcom/google/appinventor/components/runtime/Form;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "receiveSharedValue: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$1200(Lcom/google/appinventor/components/runtime/Form;)I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->GotReceivedShared(ILjava/lang/String;)V

    .line 1043
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$1300(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;

    .line 1044
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;->onInitialize()V

    goto :goto_1

    .line 1046
    :cond_2
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_3

    .line 1047
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    .line 1188
    sget-object v1, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HandleReturnValues() Called, replResult = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ReplForm;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ReplForm;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 1190
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ReplForm;->roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ReplForm;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/ReplForm;->OtherScreenClosed(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1191
    sget-object v1, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Called OtherScreenClosed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1192
    iput-object v1, v0, Lcom/google/appinventor/components/runtime/ReplForm;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Ljava/lang/Object;

    .line 1050
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    const-string v1, "Screen1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1051
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->init(Landroid/app/Application;Landroid/content/Context;Lcom/google/appinventor/components/runtime/Form;)V

    return-void

    .line 1055
    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->screenOpen(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    return-void

    .line 1059
    :cond_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$12;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
