.class public Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field public static final ACTION_DATA:Ljava/lang/String; = "ActionData"

.field public static final ACTION_SUCESS:Ljava/lang/String; = "ActionSuccess"

.field public static final FULLSCREEN_VIDEO_ACTION_DURATION:I = 0xc4

.field public static final FULLSCREEN_VIDEO_ACTION_FULLSCREEN:I = 0xc3

.field public static final FULLSCREEN_VIDEO_ACTION_PAUSE:I = 0xc0

.field public static final FULLSCREEN_VIDEO_ACTION_PLAY:I = 0xbf

.field public static final FULLSCREEN_VIDEO_ACTION_SEEK:I = 0xbe

.field public static final FULLSCREEN_VIDEO_ACTION_SOURCE:I = 0xc2

.field public static final FULLSCREEN_VIDEO_ACTION_STOP:I = 0xc1

.field public static final FULLSCREEN_VIDEO_DIALOG_FLAG:I = 0xbd

.field public static final VIDEOPLAYER_FULLSCREEN:Ljava/lang/String; = "FullScreenKey"

.field public static final VIDEOPLAYER_PLAYING:Ljava/lang/String; = "PlayingKey"

.field public static final VIDEOPLAYER_POSITION:Ljava/lang/String; = "PositionKey"

.field public static final VIDEOPLAYER_SOURCE:Ljava/lang/String; = "SourceKey"


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Dialog;

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/CustomMediaController;

.field private mHandler:Landroid/os/Handler;

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/FrameLayout$LayoutParams;

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;Landroid/os/Handler;)V
    .locals 4

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    .line 101
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    .line 102
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance p1, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p1, p0, p2}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;-><init>(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Dialog;

    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Source:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form.doFullScreenVideoAction"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ActionSuccess"

    const/4 v2, 0x1

    .line 242
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "FullScreenKey"

    .line 243
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0xbd

    const/4 v5, 0x0

    const-string v6, "SourceKey"

    if-ne v3, v2, :cond_1

    .line 244
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    .line 245
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    .line 246
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, v4}, Lcom/google/appinventor/components/runtime/Form;->showDialog(I)V

    return-object v0

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    .line 251
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    .line 252
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-virtual {p0, p1, v5}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->setSource(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    .line 256
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 257
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    .line 258
    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    const-string p2, "PlayingKey"

    .line 257
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    .line 260
    invoke-virtual {p1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result p1

    const-string p2, "PositionKey"

    .line 259
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    .line 263
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 265
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    .line 266
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    .line 268
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, v4}, Lcom/google/appinventor/components/runtime/Form;->dismissDialog(I)V

    return-object v0

    .line 272
    :cond_2
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Landroid/os/Bundle;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Landroid/widget/VideoView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Lcom/google/appinventor/components/runtime/VideoPlayer;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    return-object p0
.end method


# virtual methods
.method public createFullScreenVideoDialog()Landroid/app/Dialog;
    .locals 5

    .line 283
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, "Form.createFullScreenVideoDialog"

    const-string v1, "mFullScreenVideoBundle is null"

    .line 284
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    new-instance v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    .line 287
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout;

    .line 288
    new-instance v0, Lcom/google/appinventor/components/runtime/util/CustomMediaController;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/CustomMediaController;

    .line 290
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setId(I)V

    .line 291
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 293
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/CustomMediaController;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 295
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$2;-><init>(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 303
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/CustomMediaController;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->setAnchorView(Landroid/view/View;)V

    .line 305
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "landscape"

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x11

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-nez v1, :cond_2

    const-string v1, "sensorLandscape"

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "reverseLandscape"

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 309
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 318
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 325
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/CustomMediaController;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->addTo(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)Z

    .line 328
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 329
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Dialog;

    return-object v0
.end method

.method public dialogInitialized()Z
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 401
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    if-eqz p1, :cond_0

    .line 402
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Completed()V

    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 411
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Seeking to:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    const-string v1, "PositionKey"

    .line 415
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FullScreenVideoUtil..onPrepared"

    .line 411
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    .line 417
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 416
    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    .line 418
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    const-string v0, "PlayingKey"

    .line 419
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 420
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    return-void

    .line 422
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 423
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$3;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$3;-><init>(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public declared-synchronized performAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "Form.fullScreenVideoAction"

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Actions:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Current Source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ActionSuccess"

    const/4 v2, 0x1

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    const/4 v3, 0x0

    if-ne p2, v1, :cond_6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 208
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ActionData"

    .line 209
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    invoke-virtual {p2}, Landroid/widget/VideoView;->getDuration()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string p1, "ActionSuccess"

    .line 212
    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    monitor-exit p0

    return-object v0

    .line 171
    :pswitch_1
    :try_start_2
    check-cast p3, Landroid/os/Bundle;

    invoke-direct {p0, p2, p3}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 201
    :pswitch_2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ActionSuccess"

    .line 202
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3, v2}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->setSource(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_4
    const-string p1, "ActionSuccess"

    .line 205
    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 206
    monitor-exit p0

    return-object v0

    .line 194
    :pswitch_3
    :try_start_5
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 195
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->stopPlayback()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 196
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_6
    const-string p1, "ActionSuccess"

    .line 198
    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 199
    monitor-exit p0

    return-object v0

    .line 173
    :pswitch_4
    :try_start_7
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 174
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 175
    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_8
    const-string p1, "ActionSuccess"

    .line 177
    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 178
    monitor-exit p0

    return-object v0

    .line 180
    :pswitch_5
    :try_start_9
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 181
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 182
    monitor-exit p0

    return-object v0

    :cond_4
    :try_start_a
    const-string p1, "ActionSuccess"

    .line 184
    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 185
    monitor-exit p0

    return-object v0

    .line 187
    :pswitch_6
    :try_start_b
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 188
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->seekTo(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 189
    monitor-exit p0

    return-object v0

    :cond_5
    :try_start_c
    const-string p1, "ActionSuccess"

    .line 191
    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 192
    monitor-exit p0

    return-object v0

    :cond_6
    const/16 v1, 0xc3

    if-ne p1, v1, :cond_8

    .line 217
    :try_start_d
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    if-eqz p1, :cond_7

    .line 218
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "PositionKey"

    .line 219
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    .line 220
    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    .line 219
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "PlayingKey"

    .line 221
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    .line 222
    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    .line 221
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "SourceKey"

    .line 223
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    const-string v2, "SourceKey"

    .line 225
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/VideoPlayer;->fullScreenKilled(Landroid/os/Bundle;)V

    .line 228
    :cond_7
    check-cast p3, Landroid/os/Bundle;

    invoke-direct {p0, p2, p3}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_8
    :goto_0
    :try_start_e
    const-string p1, "ActionSuccess"

    .line 232
    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 233
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0xbe
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public prepareFullScreenVideoDialog(Landroid/app/Dialog;)V
    .locals 0

    .line 340
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 341
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public setSource(Ljava/lang/String;Z)Z
    .locals 5

    const/4 v0, 0x1

    const-string v1, "Source"

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 378
    :try_start_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    const-string v3, "PositionKey"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 381
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p2, v3, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadVideoView(Landroid/widget/VideoView;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 383
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    const-string v3, "SourceKey"

    invoke-virtual {p2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 390
    :catch_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    const/16 v4, 0x2bd

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-virtual {p2, v3, v1, v4, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return v2

    :catch_1
    move-exception p1

    .line 387
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    return v2
.end method

.method public showing()Z
    .locals 1

    .line 356
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->dialogInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startDialog()V
    .locals 9

    const-string v0, "Source"

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    const-string v4, "SourceKey"

    .line 440
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 438
    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadVideoView(Landroid/widget/VideoView;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 444
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    const/16 v4, 0x2bd

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/os/Bundle;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    .line 444
    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception v1

    .line 442
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    return-void
.end method
