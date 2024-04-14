.class final Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$2;
.super Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/listeners/AbstractYouTubePlayerListener;
.source "SourceFile"


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

    .line 109
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    invoke-direct {p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/listeners/AbstractYouTubePlayerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/PlayerConstants$PlayerError;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    invoke-virtual {p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/PlayerConstants$PlayerError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->Error(Ljava/lang/String;)V

    return-void
.end method

.method public final onPlaybackQualityChange(Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/PlayerConstants$PlaybackQuality;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    invoke-virtual {p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/PlayerConstants$PlaybackQuality;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->PlaybackQualityChanged(Ljava/lang/String;)V

    return-void
.end method

.method public final onPlaybackRateChange(Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/PlayerConstants$PlaybackRate;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    invoke-virtual {p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/PlayerConstants$PlaybackRate;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->PlaybackRateChanged(Ljava/lang/String;)V

    return-void
.end method

.method public final onReady()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->Initialized()V

    return-void
.end method

.method public final onStateChange(Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/PlayerConstants$PlayerState;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;

    invoke-virtual {p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/PlayerConstants$PlayerState;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->StateChanged(Ljava/lang/String;)V

    return-void
.end method
