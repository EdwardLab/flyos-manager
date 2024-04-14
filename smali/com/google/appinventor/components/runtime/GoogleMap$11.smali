.class final Lcom/google/appinventor/components/runtime/GoogleMap$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GoogleMap;->InfoWindowClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:I

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleMap;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GoogleMap;I)V
    .locals 0

    .line 1472
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap$11;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleMap;

    iput p2, p0, Lcom/google/appinventor/components/runtime/GoogleMap$11;->ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1474
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A marker: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap$11;->ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " its info window is clicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleMap"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$11;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleMap;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap$11;->ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "InfoWindowClicked"

    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
