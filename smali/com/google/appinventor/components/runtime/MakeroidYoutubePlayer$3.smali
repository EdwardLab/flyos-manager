.class final Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/listeners/YouTubePlayerFullScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onYouTubePlayerEnterFullScreen()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->Fullscreen(Z)V

    return-void
.end method

.method public final onYouTubePlayerExitFullScreen()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->Fullscreen(Z)V

    return-void
.end method
