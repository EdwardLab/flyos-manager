.class final Lcom/google/appinventor/components/runtime/Form$17;
.super Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;
.source "SourceFile"


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

    .line 1236
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$17;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrawerClosed(Landroid/view/View;)V
    .locals 1

    .line 1251
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$17;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->access$302(Lcom/google/appinventor/components/runtime/Form;Z)Z

    .line 1252
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$17;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->SideMenuClosed()V

    return-void
.end method

.method public final onDrawerOpened(Landroid/view/View;)V
    .locals 1

    .line 1245
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$17;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->access$302(Lcom/google/appinventor/components/runtime/Form;Z)Z

    .line 1246
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$17;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->SideMenuOpened()V

    return-void
.end method

.method public final onDrawerSlide(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public final onDrawerStateChanged(I)V
    .locals 0

    return-void
.end method
