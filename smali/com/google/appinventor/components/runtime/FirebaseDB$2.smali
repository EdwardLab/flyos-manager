.class final Lcom/google/appinventor/components/runtime/FirebaseDB$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/Firebase$AuthStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthStateChanged(Lcom/firebase/client/AuthData;)V
    .locals 2

    .line 188
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAuthStateChanged: data = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Firebase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FirebaseDB;->access$100(Lcom/google/appinventor/components/runtime/FirebaseDB;)Lcom/firebase/client/Firebase;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FirebaseDB;->access$200(Lcom/google/appinventor/components/runtime/FirebaseDB;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/FirebaseDB;->access$100(Lcom/google/appinventor/components/runtime/FirebaseDB;)Lcom/firebase/client/Firebase;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->access$200(Lcom/google/appinventor/components/runtime/FirebaseDB;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$2$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseDB$2$1;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB$2;)V

    invoke-virtual {p1, v0, v1}, Lcom/firebase/client/Firebase;->authWithCustomToken(Ljava/lang/String;Lcom/firebase/client/Firebase$AuthResultHandler;)V

    :cond_0
    return-void
.end method
