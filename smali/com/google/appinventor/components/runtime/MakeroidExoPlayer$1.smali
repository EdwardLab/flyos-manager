.class final Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadingChanged(Z)V
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)Z

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->StatusChanged(ZZZZ)V

    return-void
.end method

.method public final onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public final onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->OnPlayerError(Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExoPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 222
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 223
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)Z

    .line 224
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)Z

    .line 225
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE(Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;)Z

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->Completed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 229
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExoPlayer"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final onPositionDiscontinuity(I)V
    .locals 0

    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 0

    return-void
.end method

.method public final onSeekProcessed()V
    .locals 0

    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public final onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 20

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const-string v2, "ERROR"

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    const/4 v7, 0x0

    .line 125
    :goto_0
    iget v8, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v7, v8, :cond_8

    .line 126
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    const/4 v9, 0x0

    .line 127
    :goto_1
    iget v10, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v9, v10, :cond_7

    .line 128
    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v10, :cond_6

    const/4 v11, 0x0

    .line 130
    :goto_2
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v12

    if-ge v11, v12, :cond_6

    .line 131
    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v12

    .line 132
    instance-of v13, v12, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    if-eqz v13, :cond_5

    .line 133
    check-cast v12, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    .line 134
    iget-object v13, v12, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    if-eqz v13, :cond_0

    const-string v14, "TALB"

    .line 135
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 136
    iget-object v4, v12, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    :cond_0
    if-eqz v13, :cond_1

    const-string v14, "TIT2"

    .line 138
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 139
    iget-object v3, v12, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    :cond_1
    if-eqz v13, :cond_2

    const-string v14, "TPE1"

    .line 141
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 142
    iget-object v2, v12, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    :cond_2
    if-eqz v13, :cond_3

    const-string v14, "TPE2"

    .line 144
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 145
    iget-object v5, v12, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    :cond_3
    if-eqz v13, :cond_4

    const-string v14, "TRCK"

    .line 147
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 148
    iget-object v6, v12, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    :cond_4
    move-object/from16 v12, p0

    .line 150
    iget-object v14, v12, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    invoke-virtual/range {v14 .. v19}, Lcom/google/appinventor/components/runtime/MakeroidExoPlayer;->GotMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object/from16 v12, p0

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v12, p0

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    move-object/from16 v12, p0

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v12, p0

    return-void
.end method
