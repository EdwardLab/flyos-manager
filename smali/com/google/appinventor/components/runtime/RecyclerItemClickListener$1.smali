.class final Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/recyclerview/widget/RecyclerView;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;)Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;)Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$OnItemClickListener;->onLongItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
