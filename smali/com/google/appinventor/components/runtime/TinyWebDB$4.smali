.class final Lcom/google/appinventor/components/runtime/TinyWebDB$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/TinyWebDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:Ljava/lang/String;

.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/TinyWebDB;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/TinyWebDB;Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/TinyWebDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/TinyWebDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/TinyWebDB;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/TinyWebDB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/TinyWebDB$4$4;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/TinyWebDB$4$4;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 270
    check-cast p1, Lorg/json/JSONArray;

    if-nez p1, :cond_0

    .line 1275
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/TinyWebDB;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TinyWebDB;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/TinyWebDB;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/TinyWebDB$4$1;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB$4;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1286
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 1287
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1289
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    const-string p1, ""

    goto :goto_0

    .line 1290
    :cond_1
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    .line 1291
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/TinyWebDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/TinyWebDB;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/TinyWebDB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB$4;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1303
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/TinyWebDB;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TinyWebDB;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/TinyWebDB;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$3;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/TinyWebDB$4$3;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB$4;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
