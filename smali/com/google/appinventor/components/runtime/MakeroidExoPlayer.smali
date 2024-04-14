.class public Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/exoplayer.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "exoplayer.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.READ_EXTERNAL_STORAGE"
    }
.end annotation


# instance fields
.field private AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:Z

.field private bg8qLM0P8YgZYqRlUjDxWnoKnWRYKRDQeEjqrx0ja4Cy7jLWl3M1lZwjImM82eG:Ljava/lang/String;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:I

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/pm/PackageManager;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private isCompanion:Z

.field private isPause:Z

.field private isPlaying:Z

.field private kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Ljava/lang/String;

.field private nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .line 88
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->isPlaying:Z

    .line 78
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->isPause:Z

    .line 79
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:Z

    .line 80
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:Z

    .line 81
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->isCompanion:Z

    const/16 v1, 0x32

    .line 82
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:I

    const-string v1, ""

    .line 83
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 90
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->context:Landroid/content/Context;

    .line 91
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/pm/PackageManager;

    .line 92
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->AppName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->bg8qLM0P8YgZYqRlUjDxWnoKnWRYKRDQeEjqrx0ja4Cy7jLWl3M1lZwjImM82eG:Ljava/lang/String;

    .line 94
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    instance-of v1, v1, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 95
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->isCompanion:Z

    .line 98
    :cond_0
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 100
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/Form;->setVolumeControlStream(I)V

    .line 102
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->context:Landroid/content/Context;

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    new-instance v2, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 1112
    new-instance v1, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)V

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 104
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_1

    .line 105
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_1
    const-string p1, "ExoPlayer"

    const-string v0, "ExoPlayer Created"

    .line 108
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private AppName()Ljava/lang/String;
    .locals 3

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 597
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v0, "not found"

    :goto_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->isPause:Z

    return p0
.end method

.method static synthetic hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)Z
    .locals 1

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->isPlaying:Z

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;Ljava/io/File;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/File;)V

    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/File;)V
    .locals 6

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExoPlayer source path: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 538
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v1, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    new-instance v2, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->bg8qLM0P8YgZYqRlUjDxWnoKnWRYKRDQeEjqrx0ja4Cy7jLWl3M1lZwjImM82eG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance v2, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    .line 539
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    .line 538
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void

    .line 541
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v0, 0x835

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Source"

    invoke-virtual {p1, p0, v2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->isPlaying:Z

    return p0
.end method

.method static synthetic qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)Z
    .locals 1

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:Z

    return v0
.end method

.method static synthetic vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:Z

    return p0
.end method

.method static synthetic vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)Z
    .locals 1

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->isPause:Z

    return v0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:Z

    return p0
.end method


# virtual methods
.method public Completed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is invoked if the player state is completed."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Completed"

    .line 399
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CurrentPosition()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the current position of the source file that is playing in milliseconds."
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Duration()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the duration of the source file."
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public GotMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event returns meta data from the audio stream. Works for files but not for streams as example radio streams."
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const-string p1, "GotMetaData"

    .line 389
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Loop(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 577
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 579
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    .line 582
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:Z

    return-void
.end method

.method public Loop()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true, the player will loop when it plays."
    .end annotation

    .line 587
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:Z

    return v0
.end method

.method public OnPlayerError(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event returns the error reason for any problems."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnPlayerError"

    .line 394
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OtherPlayerStarted()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is signaled when another player has started (and the current player is playing or paused, but not stopped)."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OtherPlayerStarted"

    .line 286
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OtherPlayerStopped()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is signaled when another player has stopped (and the current player is playing or paused, but not stopped)."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OtherPlayerStopped"

    .line 292
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Pause()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pause the player."
    .end annotation

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 335
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->isPlaying:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 336
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    const/4 v0, 0x1

    .line 337
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->isPause:Z

    .line 338
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->isPlaying:Z

    .line 339
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:Z

    .line 340
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isLoading()Z

    move-result v2

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->StatusChanged(ZZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 344
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Resume()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resume the player."
    .end annotation

    .line 372
    :try_start_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->isPlaying:Z

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->Pause()V

    return-void

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->Start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 378
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public SeekTo(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set a position where the source file should start playing in milliseconds."
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    .line 462
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v1, v0

    .line 464
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v2

    long-to-int v0, v2

    add-int/2addr p1, v1

    if-gt p1, v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    return-void

    .line 469
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    int-to-long v0, v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    :cond_1
    return-void
.end method

.method public Source()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 531
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Ljava/lang/String;

    return-object v0
.end method

.method public Source(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the path to the audio source. Can be a asset file, from external card, or from a online stream."
    .end annotation

    .line 477
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Ljava/lang/String;

    .line 478
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x2bd

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Source"

    invoke-virtual {v0, p0, p1, v3, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 483
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_7

    .line 1550
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Ljava/lang/String;

    const-string v0, "http"

    .line 1551
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "/"

    if-eqz v3, :cond_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 1554
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    .line 485
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v1, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    new-instance v2, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->bg8qLM0P8YgZYqRlUjDxWnoKnWRYKRDQeEjqrx0ja4Cy7jLWl3M1lZwjImM82eG:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    invoke-direct {v2, v3, v5, v6}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance v2, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    .line 486
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    move-result-object v1

    .line 1558
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Ljava/lang/String;

    .line 1559
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1561
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1562
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->isCompanion:Z

    if-eqz v0, :cond_3

    .line 1563
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "file:///mnt/sdcard/Kodular/assets/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1565
    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "file:///android_asset/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 486
    :cond_4
    :goto_2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object v0

    .line 485
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void

    .line 2546
    :cond_5
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->context:Landroid/content/Context;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 490
    :try_start_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 493
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExoPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 498
    :cond_6
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$2;-><init>(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)V

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public Start()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the player."
    .end annotation

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 353
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 356
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->isPlaying:Z

    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->isPause:Z

    .line 358
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:Z

    .line 359
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isLoading()Z

    move-result v2

    invoke-virtual {p0, v1, v0, v0, v2}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->StatusChanged(ZZZZ)V

    .line 361
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->Volume(I)V

    .line 362
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:Z

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->Loop(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 365
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public StatusChanged(ZZZZ)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event returns true or false for the respective simpleExoPlayer statuses."
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 384
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "StatusChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Stop()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop the player."
    .end annotation

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    .line 317
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->isPlaying:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->isPause:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 318
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 319
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    const/4 v0, 0x1

    .line 320
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:Z

    .line 321
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->isPlaying:Z

    .line 322
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->isPause:Z

    .line 323
    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->StatusChanged(ZZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 327
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Volume()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the player volume."
    .end annotation

    .line 418
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:I

    int-to-float v0, v0

    return v0
.end method

.method public Volume(I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "50"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the volume to a number between 0 and 100"
    .end annotation

    const/16 v0, 0x64

    if-gt p1, v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    rsub-int/lit8 v2, p1, 0x64

    int-to-double v2, v2

    .line 409
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    .line 410
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    .line 412
    :cond_1
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:I

    return-void

    .line 406
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0x2c8

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Volume"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public isLoading()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the player is current loading."
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isLoading()Z

    move-result v0

    return v0
.end method

.method public isPause()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the player is current in pause mode."
    .end annotation

    .line 428
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->isPause:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the player is current playing."
    .end annotation

    .line 423
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->isPlaying:Z

    return v0
.end method

.method public isStopped()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the player is current stopped."
    .end annotation

    .line 433
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:Z

    return v0
.end method

.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_4

    const/4 v0, -0x2

    if-eq p1, v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->isPlaying:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->isPause:Z

    if-eqz p1, :cond_2

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->OtherPlayerStopped()V

    :cond_2
    :goto_0
    return-void

    .line 267
    :cond_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->OtherPlayerStarted()V

    return-void

    .line 271
    :cond_4
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->Pause()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1306
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 1307
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    .line 1308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    const/4 v0, 0x0

    .line 1309
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/exoplayer2/SimpleExoPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 301
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
