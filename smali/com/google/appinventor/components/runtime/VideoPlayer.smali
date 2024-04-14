.class public final Lcom/google/appinventor/components/runtime/VideoPlayer;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A multimedia component capable of playing videos. When the application is run, the VideoPlayer will be displayed as a rectangle on-screen.  If the user touches the rectangle, controls will appear to play/pause, skip ahead, and skip backward within the video.  The application can also control behavior by calling the <code>Start</code>, <code>Pause</code>, and <code>SeekTo</code> methods.  <p>Video files should be in 3GPP (.3gp) or MPEG-4 (.mp4) formats.  For more details about legal formats, see <a href=\"http://developer.android.com/guide/appendix/media-formats.html\" target=\"_blank\">Android Supported Media Formats</a>.</p><p>App Inventor for Android only permits video files under 1 MB and limits the total size of an application to 5 MB, not all of which is available for media (video, audio, and sound) files.  If your media files are too large, you may get errors when packaging or installing your application, in which case you should reduce the number of media files or their sizes.  Most video editing software, such as Windows Movie Maker and Apple iMovie, can help you decrease the size of videos by shortening them or re-encoding the video into a more compact format.</p><p>You can also set the media source to a URL that points to a streaming video, but the URL must point to the video file itself, not to a program that plays the video."
    version = 0x8
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/VideoPlayer$a;
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaPlayer;

.field private IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:Z

.field private TVKenNjujur1C1Ft9Gj8dhchvJBwuJV9GDuQOmGg2gZVCkxzGoaa0a88A5IZ9COq:I

.field private final androidUIHandler:Landroid/os/Handler;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/MediaController;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

.field private sourcePath:Ljava/lang/String;

.field private tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Z

.field private vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 139
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:Z

    .line 121
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Z

    .line 123
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Z

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->androidUIHandler:Landroid/os/Handler;

    const/16 v0, 0x32

    .line 131
    iput v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->TVKenNjujur1C1Ft9Gj8dhchvJBwuJV9GDuQOmGg2gZVCkxzGoaa0a88A5IZ9COq:I

    .line 140
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 141
    new-instance v0, Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;-><init>(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    .line 143
    new-instance v1, Landroid/widget/MediaController;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/MediaController;

    .line 144
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setMediaController(Landroid/widget/MediaController;)V

    .line 146
    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 147
    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 148
    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 151
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/16 v0, 0xb0

    .line 153
    invoke-interface {p1, p0, v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const/16 v0, 0x90

    .line 155
    invoke-interface {p1, p0, v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 159
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->setVolumeControlStream(I)V

    const-string p1, ""

    .line 161
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/VideoPlayer;)Landroid/os/Handler;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->androidUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private prepareToDie()V
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->stopPlayback()V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setVideoURI(Landroid/net/Uri;)V

    .line 460
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->clearAnimation()V

    const/4 v0, 0x0

    .line 463
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Z

    .line 464
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Z

    .line 466
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:Z

    if-eqz v1, :cond_1

    .line 467
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "FullScreenKey"

    .line 468
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 469
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v2, 0xc3

    invoke-virtual {v0, v2, p0, v1}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    :cond_1
    return-void
.end method


# virtual methods
.method public final Completed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Completed"

    .line 395
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final CurrentPosition()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the current position of the source file that is playing."
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public final FullScreen(Z)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .line 549
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:Z

    if-eq p1, v0, :cond_3

    const-string v0, ""

    const-string v1, "FullScreen"

    const-string v2, "ActionSuccess"

    const/16 v3, 0xc3

    const-string v4, "FullScreenKey"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_1

    .line 551
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 552
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    .line 553
    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->getCurrentPosition()I

    move-result v7

    const-string v8, "PositionKey"

    .line 552
    invoke-virtual {p1, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 554
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    .line 555
    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->isPlaying()Z

    move-result v7

    const-string v8, "PlayingKey"

    .line 554
    invoke-virtual {p1, v8, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 556
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->pause()V

    .line 557
    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 558
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    const-string v7, "SourceKey"

    invoke-virtual {p1, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-virtual {v4, v3, p0, p1}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p1

    .line 561
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 562
    iput-boolean v6, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:Z

    return-void

    .line 564
    :cond_0
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:Z

    .line 565
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/16 v2, 0x515

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p1, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 569
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 570
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 571
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-virtual {v4, v3, p0, p1}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p1

    .line 574
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 575
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/VideoPlayer;->fullScreenKilled(Landroid/os/Bundle;)V

    return-void

    .line 577
    :cond_2
    iput-boolean v6, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:Z

    .line 578
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/16 v2, 0x516

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p1, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final FullScreen()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 535
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:Z

    return v0
.end method

.method public final GetDuration()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns duration of the video in milliseconds."
    .end annotation

    const-string v0, "VideoPlayer"

    const-string v1, "Calling GetDuration"

    .line 369
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:Z

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xc4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ActionSuccess"

    .line 373
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ActionData"

    .line 374
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->getDuration()I

    move-result v0

    return v0
.end method

.method public final Height()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 510
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height()I

    move-result v0

    return v0
.end method

.method public final Height(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .line 522
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 525
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    iget v1, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->xphF7LaxLBhBSMXngqFaYY3J3HcWUabJuEaZGB2R7V3S4be2YKLOC6pwY1axtLQT:I

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(II)V

    return-void
.end method

.method public final IsPlaying()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Reports whether the media is playing."
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public final Pause()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pauses playback of the video.  Playback can be resumed at the same location by calling the <code>Start</code> method."
    .end annotation

    const-string v0, "VideoPlayer"

    const-string v1, "Calling Pause"

    .line 324
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v2, 0xc0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    .line 328
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Z

    return-void

    .line 330
    :cond_0
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Z

    .line 331
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->pause()V

    return-void
.end method

.method public final SeekTo(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Seeks to the requested time (specified in milliseconds) in the video. If the video is paused, the frame shown will not be updated by the seek. The player can jump only to key frames in the video, so seeking to times that differ by short intervals may not actually move to different frames."
    .end annotation

    const-string v0, "VideoPlayer"

    const-string v1, "Calling SeekTo"

    .line 353
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 357
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:Z

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xbe

    .line 359
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 358
    invoke-virtual {v0, v1, p0, p1}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->seekTo(I)V

    return-void
.end method

.method public final ShowControls(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled the user will see the control buttons."
    .end annotation

    if-eqz p1, :cond_0

    .line 590
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/MediaController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->setVisibility(I)V

    return-void

    .line 592
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/MediaController;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->setVisibility(I)V

    return-void
.end method

.method public final Source(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "video_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The \"path\" to the video.  Usually, this will be the name of the video file, which should be added in the Designer."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.READ_EXTERNAL_STORAGE"
        }
    .end annotation

    const-string v0, "Source"

    const-string v1, ""

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 189
    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/VideoPlayer$1;

    invoke-direct {v4, p0, v2}, Lcom/google/appinventor/components/runtime/VideoPlayer$1;-><init>(Lcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/String;)V

    invoke-static {v3, p1, v4}, Lcom/google/appinventor/components/runtime/util/TiramisuUtil;->requestVideoPermissions(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 202
    :cond_1
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:Z

    if-eqz v2, :cond_2

    .line 203
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xc2

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    return-void

    :cond_2
    if-nez p1, :cond_3

    move-object p1, v1

    .line 206
    :cond_3
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    .line 211
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5()V

    .line 214
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 215
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->stopPlayback()V

    .line 217
    :cond_4
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setVideoURI(Landroid/net/Uri;)V

    .line 218
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->clearAnimation()V

    .line 220
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Source path is "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VideoPlayer"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 224
    :try_start_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Z

    .line 225
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadVideoView(Landroid/widget/VideoView;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "loading video succeeded"

    .line 235
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 230
    :catch_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const/16 v2, 0x2bd

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    aput-object v4, v3, p1

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception p1

    .line 227
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final Start()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Starts playback of the video."
    .end annotation

    const-string v0, "VideoPlayer"

    const-string v1, "Calling Start"

    .line 267
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:Z

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xbf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    return-void

    .line 272
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Z

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->start()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Z

    return-void
.end method

.method public final Stop()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resets to start of video and pauses it if video was playing."
    .end annotation

    const-string v0, "VideoPlayer"

    const-string v1, "Calling Stop"

    .line 338
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Start()V

    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->SeekTo(I)V

    .line 344
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Pause()V

    return-void
.end method

.method public final VideoPlayerError(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The VideoPlayerError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    return-void
.end method

.method public final Volume()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the volume."
    .end annotation

    .line 308
    iget v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->TVKenNjujur1C1Ft9Gj8dhchvJBwuJV9GDuQOmGg2gZVCkxzGoaa0a88A5IZ9COq:I

    return v0
.end method

.method public final Volume(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "50"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the volume to a number between 0 and 100. Values less than 0 will be treated as 0, and values greater than 100 will be treated as 100."
    .end annotation

    const/4 v0, 0x0

    .line 295
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x64

    .line 296
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 297
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    int-to-float v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    .line 298
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 299
    iput p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->TVKenNjujur1C1Ft9Gj8dhchvJBwuJV9GDuQOmGg2gZVCkxzGoaa0a88A5IZ9COq:I

    :cond_0
    return-void
.end method

.method public final Width()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 483
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width()I

    move-result v0

    return v0
.end method

.method public final Width(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .line 495
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 498
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    iget v1, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:I

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(II)V

    return-void
.end method

.method public final delayedStart()V
    .locals 1

    const/4 v0, 0x1

    .line 316
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Z

    .line 317
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Start()V

    return-void
.end method

.method public final fullScreenKilled(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    .line 603
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:Z

    const-string v1, "SourceKey"

    .line 604
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 605
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 606
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Source(Ljava/lang/String;)V

    .line 608
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->requestLayout()V

    const-string v0, "PositionKey"

    .line 610
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->SeekTo(I)V

    const-string v0, "PlayingKey"

    .line 611
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 612
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Start()V

    :cond_1
    return-void
.end method

.method public final getPassedHeight()I
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    iget v0, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:I

    return v0
.end method

.method public final getPassedWidth()I
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    iget v0, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->xphF7LaxLBhBSMXngqFaYY3J3HcWUabJuEaZGB2R7V3S4be2YKLOC6pwY1axtLQT:I

    return v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    return-object v0
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 387
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Completed()V

    return-void
.end method

.method public final onDelete()V
    .locals 0

    .line 451
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->prepareToDie()V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 444
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->prepareToDie()V

    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 410
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5()V

    const/4 p1, 0x0

    .line 412
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Z

    .line 413
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Z

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError: what is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", extra is "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "VideoPlayer"

    .line 415
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    aput-object v1, v0, p1

    const-string p1, "Source"

    const/16 v1, 0x2bd

    invoke-virtual {p2, p0, p1, v1, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return p3
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    .line 425
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Z

    const/4 v0, 0x0

    .line 426
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Z

    .line 427
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/media/MediaPlayer;

    .line 428
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    .line 1834
    iput-object p1, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/media/MediaPlayer;

    .line 1835
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/lang/Boolean;

    .line 1838
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->forceLayout()V

    .line 1839
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->invalidate()V

    .line 429
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Z

    if-eqz p1, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Start()V

    :cond_0
    return-void
.end method
