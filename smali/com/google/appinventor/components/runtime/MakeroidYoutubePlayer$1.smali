.class final Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/listeners/YouTubePlayerInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
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

    .line 71
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitSuccess(Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    .line 75
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/utils/YouTubePlayerTracker;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;->addListener(Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/listeners/YouTubePlayerListener;)Z

    .line 76
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;->getPlayerUIController()Lcom/pierfrancescosoffritti/androidyoutubeplayer/ui/PlayerUIController;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;Lcom/pierfrancescosoffritti/androidyoutubeplayer/ui/PlayerUIController;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/ui/PlayerUIController;

    .line 77
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)V

    return-void
.end method
