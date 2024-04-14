.class final Lcom/google/appinventor/components/runtime/HVArrangement$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/HVArrangement;->isCard(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/HVArrangement;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/HVArrangement;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/HVArrangement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 440
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 442
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/HVArrangement;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HVArrangement;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 443
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/HVArrangement;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HVArrangement;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/HVArrangement$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/HVArrangement;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HVArrangement;)Landroid/view/animation/AlphaAnimation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 444
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/HVArrangement;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HVArrangement;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 447
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/HVArrangement;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HVArrangement;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 448
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/HVArrangement;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HVArrangement;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/HVArrangement$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/HVArrangement;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/HVArrangement;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/HVArrangement;)Landroid/view/animation/AlphaAnimation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 449
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/HVArrangement;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HVArrangement;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 450
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/HVArrangement;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/HVArrangement;->Click()V

    :cond_2
    :goto_0
    return v0
.end method
