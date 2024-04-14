.class final Lcom/google/appinventor/components/runtime/Form$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->recomputeLayout()V
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

    .line 1288
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$18;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1291
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$18;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Form;->access$1400(Lcom/google/appinventor/components/runtime/Form;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$18;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Form;->access$1500(Lcom/google/appinventor/components/runtime/Form;)Landroidx/appcompat/app/ActionBarDrawerToggle;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$18;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Form;->access$400(Lcom/google/appinventor/components/runtime/Form;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1292
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$18;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Form;->access$1400(Lcom/google/appinventor/components/runtime/Form;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1293
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$18;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Form;->access$1400(Lcom/google/appinventor/components/runtime/Form;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    return-void

    .line 1295
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$18;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Form;->access$1400(Lcom/google/appinventor/components/runtime/Form;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    return-void

    .line 1299
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$18;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->TitlebarBackButtonClicked()V

    return-void
.end method
