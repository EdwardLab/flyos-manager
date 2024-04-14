.class final Lcom/google/appinventor/components/runtime/util/a$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/a;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/util/a;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/a$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/a;B)V
    .locals 0

    .line 241
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/a$c;-><init>(Lcom/google/appinventor/components/runtime/util/a;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 245
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/a$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/a;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/a;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/a$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/a;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/a;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MapReady"

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->canDispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 248
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/a$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/a;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/util/a;)Z

    .line 249
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/a$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/a;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/a;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/util/a$c$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/a$c$1;-><init>(Lcom/google/appinventor/components/runtime/util/a$c;)V

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 258
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/a$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/a;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/a;)Lorg/osmdroid/views/MapView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    :goto_0
    return-void
.end method
