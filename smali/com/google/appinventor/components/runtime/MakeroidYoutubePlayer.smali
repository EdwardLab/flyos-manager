.class public Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->GOOGLE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/youtubePlayer.png"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "youtube-player.jar",
        "youtube-player.aar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation


# instance fields
.field private YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:F

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:I

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/ui/PlayerUIController;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/utils/YouTubePlayerTracker;

.field private q8iygSjgpTZ52A5K8GXhnvUs2CX4iXd4uIVtwvououVquIzlzfVOfWIR3CjSHG4:Ljava/lang/String;

.field private z89WSVwZ7PB2CmtTjCz6wAa186XxEwXZ6USChsRUkmrmINCnliZwpzt9cagYiYvX:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .line 64
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/16 v0, 0x32

    .line 56
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:I

    const/4 v1, 0x0

    .line 57
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:F

    const/4 v2, 0x0

    .line 59
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->z89WSVwZ7PB2CmtTjCz6wAa186XxEwXZ6USChsRUkmrmINCnliZwpzt9cagYiYvX:Z

    .line 65
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 66
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->context:Landroid/content/Context;

    .line 68
    new-instance v3, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    .line 69
    new-instance v3, Lcom/pierfrancescosoffritti/androidyoutubeplayer/utils/YouTubePlayerTracker;

    invoke-direct {v3}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/utils/YouTubePlayerTracker;-><init>()V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/utils/YouTubePlayerTracker;

    .line 71
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    new-instance v4, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$1;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;->initialize(Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/listeners/YouTubePlayerInitListener;Z)V

    .line 82
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 85
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->StartSecond(F)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->Volume(I)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->EnableLiveVideoUI(Z)V

    const-string p1, "Kodular Youtube Player"

    const-string v0, "Makeroid Youtube Player Created"

    .line 89
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    return-object p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;Lcom/pierfrancescosoffritti/androidyoutubeplayer/ui/PlayerUIController;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/ui/PlayerUIController;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/ui/PlayerUIController;

    return-object p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/utils/YouTubePlayerTracker;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/utils/YouTubePlayerTracker;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)V
    .locals 2

    .line 1109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    new-instance v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$2;-><init>(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)V

    invoke-interface {v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;->addListener(Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/listeners/YouTubePlayerListener;)Z

    .line 1136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    new-instance v1, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer$3;-><init>(Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;)V

    invoke-virtual {v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;->addFullScreenListener(Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/listeners/YouTubePlayerFullScreenListener;)Z

    return-void
.end method

.method private static vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "https://www.youtube.com/watch?v="

    .line 342
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 343
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "www.youtube.com/watch?v="

    .line 344
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public EnableLiveVideoUI(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 324
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->z89WSVwZ7PB2CmtTjCz6wAa186XxEwXZ6USChsRUkmrmINCnliZwpzt9cagYiYvX:Z

    .line 325
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/ui/PlayerUIController;

    if-eqz v0, :cond_0

    .line 326
    invoke-interface {v0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/ui/PlayerUIController;->enableLiveVideoUI(Z)V

    :cond_0
    return-void
.end method

.method public EnableLiveVideoUI()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If you want to play live videos you must setup the UI accordingly, by calling this method. If enabled, the user can not select a second on the video progress bar."
    .end annotation

    .line 335
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->z89WSVwZ7PB2CmtTjCz6wAa186XxEwXZ6USChsRUkmrmINCnliZwpzt9cagYiYvX:Z

    return v0
.end method

.method public EnterFullscreen()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enter the video in fullscreen mode."
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;->enterFullScreen()V

    return-void
.end method

.method public Error(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Use this event to detect that there was any error with the player. Return values: \'UNKNOWN\', \'INVALID_PARAMETER_IN_REQUEST\', \'HTML_5_PLAYER\', \'VIDEO_NOT_FOUND\', \'VIDEO_NOT_PLAYABLE_IN_EMBEDDED_PLAYER\', \'INVALID_VOLUME\' or \'INVALID_SEEK_TO\'."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Error"

    .line 188
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ExitFullscreen()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Exit the video from fullscreen mode."
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;->exitFullScreen()V

    return-void
.end method

.method public Fullscreen(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to get notified when the player enters or exits fullscreen. The variable \'fullscreen\' returns true or false."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 153
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Fullscreen"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetCurrentSecond()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the current second."
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/utils/YouTubePlayerTracker;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/utils/YouTubePlayerTracker;->getCurrentSecond()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public GetThumbnailFromVideoId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This block will return the thumbnail image path from a video id. Use only as example \'_bZj-LOXdH8\' from a youtube video."
    .end annotation

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://img.youtube.com/vi/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/0.jpg"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GetVideoDuration()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the video duration in seconds."
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/utils/YouTubePlayerTracker;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/utils/YouTubePlayerTracker;->getVideoDuration()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Initialized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Use this event to start the playing of a normal or instant youtube video."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Initialized"

    .line 158
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InstantLoad(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block together with the \'Youtube Player\' Initialized event. Loads and automatically plays the specified youtube video. Use only as example \'_bZj-LOXdH8\' from a youtube video."
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    if-eqz v0, :cond_0

    .line 195
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:F

    invoke-interface {v0, p1, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;->loadVideo(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method public IsFullscreen()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the player is in fullscreen mode."
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;->isFullScreen()Z

    move-result v0

    return v0
.end method

.method public Load(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads the specified video\'s thumbnail and prepares the player to play the video. Does not automatically play the video. Use only as example \'_bZj-LOXdH8\' from a youtube video."
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    if-eqz v0, :cond_0

    .line 204
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:F

    invoke-interface {v0, p1, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;->cueVideo(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method public Pause()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pause the youtube video."
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    if-eqz v0, :cond_0

    .line 218
    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;->pause()V

    :cond_0
    return-void
.end method

.method public Play()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Plays the youtube video."
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;->play()V

    :cond_0
    return-void
.end method

.method public PlaybackQualityChanged(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Use this event to detect that the playback quality was changed. Return values: \'UNKNOWN\', \'SMALL\', \'MEDIUM\', \'LARGE\', \'HD720\', \'HD1080\', \'HIGH_RES\' or \'DEFAULT\'."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "PlaybackQualityChanged"

    .line 172
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PlaybackRateChanged(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Use this event to detect that the playback rate was changed. Return values: \'UNKNOWN\', \'RATE_0_25\', \'RATE_0_5\', \'RATE_1\', \'RATE_1_5\' or \'RATE_2\'."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "PlaybackRateChanged"

    .line 179
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SeekTo(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set a position where the youtube video should start playing in seconds."
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    if-eqz v0, :cond_0

    .line 240
    :try_start_0
    invoke-interface {v0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;->seekTo(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 242
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kodular Youtube Player"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "INVALID_SEEK_TO"

    .line 243
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->Error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public StartSecond()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 232
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:F

    return v0
.end method

.method public StartSecond(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The time from which the video should start playing."
    .end annotation

    .line 226
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:F

    .line 227
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->q8iygSjgpTZ52A5K8GXhnvUs2CX4iXd4uIVtwvououVquIzlzfVOfWIR3CjSHG4:Ljava/lang/String;

    return-void
.end method

.method public StateChanged(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Use this event to detect that the state changes. Return values: \'UNKNOWN\', \'UNSTARTED\', \'ENDED\', \'PLAYING\', \'PAUSED\', \'BUFFERING\' or \'VIDEO_CUED\'."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "StateChanged"

    .line 165
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TestVideoId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Use this block to test the youtube player. Powered by Kodular.io"
    .end annotation

    const-string v0, "_bZj-LOXdH8"

    return-object v0
.end method

.method public ToggleFullscreen()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Toggle the state of the video player."
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;->toggleFullScreen()V

    return-void
.end method

.method public Volume()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the player volume."
    .end annotation

    .line 266
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:I

    return v0
.end method

.method public Volume(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "50"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the volume to a number between 0 and 100.Use only integer numbers."
    .end annotation

    const/16 v0, 0x64

    if-gt p1, v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    if-eqz v0, :cond_1

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->q8iygSjgpTZ52A5K8GXhnvUs2CX4iXd4uIVtwvououVquIzlzfVOfWIR3CjSHG4:Ljava/lang/String;

    .line 258
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:I

    .line 259
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;

    invoke-interface {v0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayer;->setVolume(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p1, "INVALID_VOLUME"

    .line 254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->Error(Ljava/lang/String;)V

    return-void
.end method

.method public Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 105
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->getView()Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    move-result-object v0

    return-object v0
.end method

.method public getView()Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidYoutubePlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/pierfrancescosoffritti/androidyoutubeplayer/player/YouTubePlayerView;

    return-object v0
.end method
