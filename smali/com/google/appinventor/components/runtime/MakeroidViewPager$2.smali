.class final Lcom/google/appinventor/components/runtime/MakeroidViewPager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/MakeroidViewPager;->AddComponentToView(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic TVKenNjujur1C1Ft9Gj8dhchvJBwuJV9GDuQOmGg2gZVCkxzGoaa0a88A5IZ9COq:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidViewPager;Lcom/google/appinventor/components/runtime/AndroidViewComponent;Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager$2;->TVKenNjujur1C1Ft9Gj8dhchvJBwuJV9GDuQOmGg2gZVCkxzGoaa0a88A5IZ9COq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidViewPager;)Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;

    move-result-object v1

    .line 1433
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1441
    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidViewPager;)Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;->notifyDataSetChanged()V

    .line 206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager$2;->TVKenNjujur1C1Ft9Gj8dhchvJBwuJV9GDuQOmGg2gZVCkxzGoaa0a88A5IZ9COq:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager$2;->TVKenNjujur1C1Ft9Gj8dhchvJBwuJV9GDuQOmGg2gZVCkxzGoaa0a88A5IZ9COq:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "Tab"

    :goto_0
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidViewPager;Ljava/lang/String;)V

    return-void
.end method
