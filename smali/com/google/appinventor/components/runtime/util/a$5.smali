.class final Lcom/google/appinventor/components/runtime/util/a$5;
.super Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade<",
        "Landroid/graphics/drawable/Drawable;",
        "Lorg/osmdroid/views/overlay/Marker;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/views/overlay/Marker;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/a;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/a;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Lorg/osmdroid/views/overlay/Marker;)V
    .locals 0

    .line 1110
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/a$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/a;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/a$5;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/views/overlay/Marker;

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade;-><init>(Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 1

    .line 1113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$5;->callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1110
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$5;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/views/overlay/Marker;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Marker;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2119
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/a$5;->callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$5;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/views/overlay/Marker;

    invoke-interface {p1, v0}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
