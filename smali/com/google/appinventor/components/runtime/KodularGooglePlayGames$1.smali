.class final Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->ShowAchievements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 131
    check-cast p1, Landroid/content/Intent;

    .line 1134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->access$000(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/Form;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
