.class final Lcom/google/appinventor/components/runtime/FirebaseDB$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB$1;->onChildAdded(Lcom/firebase/client/DataSnapshot;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/firebase/client/DataSnapshot;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB$1;Lcom/firebase/client/DataSnapshot;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$1;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/firebase/client/DataSnapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/FirebaseDB$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/firebase/client/DataSnapshot;

    invoke-virtual {v1}, Lcom/firebase/client/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/firebase/client/DataSnapshot;

    invoke-virtual {v2}, Lcom/firebase/client/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/FirebaseDB;->DataChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
