.class final Lcom/google/appinventor/components/runtime/FirebaseDB$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;->GetTagList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB;)V
    .locals 0

    .line 733
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$6;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled(Lcom/firebase/client/FirebaseError;)V
    .locals 0

    return-void
.end method

.method public final onDataChange(Lcom/firebase/client/DataSnapshot;)V
    .locals 2

    .line 736
    invoke-virtual {p1}, Lcom/firebase/client/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 737
    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 738
    new-instance v0, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 739
    check-cast v0, Ljava/util/List;

    .line 740
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$6;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FirebaseDB;->access$000(Lcom/google/appinventor/components/runtime/FirebaseDB;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$6$1;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseDB$6$1;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB$6;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
