.class final Lcom/google/appinventor/components/runtime/FirebaseDB$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;->GetValue(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/Object;

.field final synthetic gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:Ljava/lang/String;

.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$3;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$3;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled(Lcom/firebase/client/FirebaseError;)V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->access$000(Lcom/google/appinventor/components/runtime/FirebaseDB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$3$2;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseDB$3$2;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB$3;Lcom/firebase/client/FirebaseError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onDataChange(Lcom/firebase/client/DataSnapshot;)V
    .locals 2

    .line 470
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 475
    :try_start_0
    invoke-virtual {p1}, Lcom/firebase/client/DataSnapshot;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    invoke-virtual {p1}, Lcom/firebase/client/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 478
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$3;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FirebaseDB;->access$000(Lcom/google/appinventor/components/runtime/FirebaseDB;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$3$1;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseDB$3$1;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB$3;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception p1

    .line 483
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Firebase"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/FirebaseDB;->FirebaseError(Ljava/lang/String;)V

    return-void
.end method
