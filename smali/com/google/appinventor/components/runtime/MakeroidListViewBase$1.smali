.class final Lcom/google/appinventor/components/runtime/MakeroidListViewBase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/MakeroidListViewBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewBase;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidListViewBase;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;I)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewBase;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->click(I)V

    return-void
.end method

.method public final onLongItemClick(Landroid/view/View;I)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewBase;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->longClick(I)V

    return-void
.end method
