.class final Lcom/google/appinventor/components/runtime/Surface$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Surface$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Surface$3;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Surface$3;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Surface$3$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Surface$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 284
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Surface$3$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Surface$3;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Surface$3;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Surface;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Surface;->access$002(Lcom/google/appinventor/components/runtime/Surface;Z)Z

    .line 285
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Surface$3$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Surface$3;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Surface$3;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Surface;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Surface;->access$100(Lcom/google/appinventor/components/runtime/Surface;)V

    return-void

    .line 287
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Surface$3$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Surface$3;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Surface$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Surface;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Surface;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Surface$3$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Surface$3;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/Surface$3;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Surface;

    const-string v0, "TakePicture"

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
