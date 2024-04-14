.class final Lcom/google/appinventor/components/runtime/util/a$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/a;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
        "Lorg/osmdroid/views/overlay/Marker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/a;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/a;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/a$8;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/a;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/a$8;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 2

    .line 530
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unable to create marker: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 527
    check-cast p1, Lorg/osmdroid/views/overlay/Marker;

    .line 1535
    new-instance v0, Lcom/google/appinventor/components/runtime/util/a$8$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/a$8$1;-><init>(Lcom/google/appinventor/components/runtime/util/a$8;)V

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Marker;->setOnMarkerClickListener(Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;)V

    .line 1554
    new-instance v0, Lcom/google/appinventor/components/runtime/util/a$8$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/a$8$2;-><init>(Lcom/google/appinventor/components/runtime/util/a$8;)V

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Marker;->setOnMarkerDragListener(Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;)V

    .line 1578
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$8;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Visible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1579
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$8;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/a;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    return-void

    .line 1581
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$8;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/a;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    return-void
.end method
