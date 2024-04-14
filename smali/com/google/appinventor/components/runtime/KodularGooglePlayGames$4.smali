.class final Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->signInSilently(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic N4rx6qe3Dkxm9iGosdnZviEGwwAyjrMopVTdmRoB5smsVn2ef0JNliQjJW08w5OT:Z

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;Z)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;

    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$4;->N4rx6qe3Dkxm9iGosdnZviEGwwAyjrMopVTdmRoB5smsVn2ef0JNliQjJW08w5OT:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;)V"
        }
    .end annotation

    .line 273
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 276
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->access$200(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 277
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->SignedIn(Z)V

    return-void

    .line 279
    :cond_0
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$4;->N4rx6qe3Dkxm9iGosdnZviEGwwAyjrMopVTdmRoB5smsVn2ef0JNliQjJW08w5OT:Z

    if-eqz p1, :cond_1

    .line 280
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->access$300(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;)V

    return-void

    .line 285
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->SignedIn(Z)V

    return-void
.end method
