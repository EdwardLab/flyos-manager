.class final Lcom/google/appinventor/components/runtime/view/ZoomControlView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/view/ZoomControlView;-><init>(Lorg/osmdroid/views/MapView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/view/ZoomControlView;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/view/ZoomControlView;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/view/ZoomControlView;)Lorg/osmdroid/views/MapView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object p1

    invoke-interface {p1}, Lorg/osmdroid/api/IMapController;->zoomOut()Z

    return-void
.end method
