.class final Lcom/google/appinventor/components/runtime/FirebaseDB$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB$3;->onCancelled(Lcom/firebase/client/FirebaseError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/firebase/client/FirebaseError;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$3;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB$3;Lcom/firebase/client/FirebaseError;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$3$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$3;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$3$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/firebase/client/FirebaseError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$3$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$3;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/FirebaseDB$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$3$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/firebase/client/FirebaseError;

    invoke-virtual {v1}, Lcom/firebase/client/FirebaseError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/FirebaseDB;->FirebaseError(Ljava/lang/String;)V

    return-void
.end method
