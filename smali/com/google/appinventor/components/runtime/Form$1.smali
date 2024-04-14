.class final Lcom/google/appinventor/components/runtime/Form$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

.field private synthetic tj0MDuMmBVyFcp8vwXpkfd0RnoyqL9aUR0zh2QG1qIbcD4cqzuxOkXiR3Ef5Sjag:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;I)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    iput p2, p0, Lcom/google/appinventor/components/runtime/Form$1;->tj0MDuMmBVyFcp8vwXpkfd0RnoyqL9aUR0zh2QG1qIbcD4cqzuxOkXiR3Ef5Sjag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 575
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$100(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 576
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form$1;->tj0MDuMmBVyFcp8vwXpkfd0RnoyqL9aUR0zh2QG1qIbcD4cqzuxOkXiR3Ef5Sjag:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 577
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$100(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$100(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_0

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$100(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$100(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 587
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$200(Lcom/google/appinventor/components/runtime/Form;)V

    .line 588
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$100(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 589
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$1$1;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/Form$1$1;-><init>(Lcom/google/appinventor/components/runtime/Form$1;Landroid/widget/FrameLayout;)V

    const-wide/16 v3, 0x42

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 598
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$300(Lcom/google/appinventor/components/runtime/Form;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 599
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->SideMenuOpen()V

    .line 601
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$400(Lcom/google/appinventor/components/runtime/Form;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 602
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->LockSideMenu()V

    .line 604
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->TitleVisible(Z)V

    .line 605
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$500(Lcom/google/appinventor/components/runtime/Form;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->Title(Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$600(Lcom/google/appinventor/components/runtime/Form;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->TitleBarSubTitle(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$700(Lcom/google/appinventor/components/runtime/Form;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Form;->access$800(Lcom/google/appinventor/components/runtime/Form;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$900(Lcom/google/appinventor/components/runtime/Form;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularCompanionUtil;->toolbarColor(Landroidx/appcompat/widget/Toolbar;ZI)V

    .line 608
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientationChanged()V

    .line 610
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->invalidateOptionsMenu()V

    return-void

    .line 613
    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
