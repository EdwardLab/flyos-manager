.class final Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->GetPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/gms/games/Player;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/Player;",
            ">;)V"
        }
    .end annotation

    .line 199
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/Player;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 206
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/games/PlayerLevelInfo;->getCurrentLevel()Lcom/google/android/gms/games/PlayerLevel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/games/PlayerLevel;->getLevelNumber()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v0

    goto :goto_0

    :catch_0
    const/4 v6, 0x0

    .line 210
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerLevelInfo;->getCurrentXpTotal()J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-wide v7, v1

    .line 213
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    .line 219
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->GotPlayer(Ljava/lang/String;Ljava/lang/String;IJ)V

    :cond_0
    return-void
.end method
