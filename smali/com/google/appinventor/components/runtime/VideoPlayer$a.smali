.class final Lcom/google/appinventor/components/runtime/VideoPlayer$a;
.super Landroid/widget/VideoView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer;

.field public roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:I

.field vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/lang/Boolean;

.field wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/media/MediaPlayer;

.field public xphF7LaxLBhBSMXngqFaYY3J3HcWUabJuEaZGB2R7V3S4be2YKLOC6pwY1axtLQT:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/content/Context;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer;

    .line 661
    invoke-direct {p0, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 646
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/lang/Boolean;

    const/4 p1, -0x1

    .line 652
    iput p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->xphF7LaxLBhBSMXngqFaYY3J3HcWUabJuEaZGB2R7V3S4be2YKLOC6pwY1axtLQT:I

    .line 658
    iput p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:I

    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(III)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    .line 680
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v5

    .line 681
    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v6, "Device Density = "

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "VideoPlayer..onMeasure"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "AI setting dimensions as:"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->xphF7LaxLBhBSMXngqFaYY3J3HcWUabJuEaZGB2R7V3S4be2YKLOC6pwY1axtLQT:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "Dimenions from super>>"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 685
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 684
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->xphF7LaxLBhBSMXngqFaYY3J3HcWUabJuEaZGB2R7V3S4be2YKLOC6pwY1axtLQT:I

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, -0x80000000

    const/4 v10, -0x1

    const/4 v11, -0x2

    const-string v13, "VideoPlayer.onMeasure"

    const/16 v14, 0xb0

    if-eq v0, v11, :cond_2

    if-eq v0, v10, :cond_0

    const/4 v7, 0x1

    goto :goto_2

    .line 710
    :cond_0
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    :try_start_0
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    const-string v15, "Got width from MediaPlayer>"

    .line 713
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 716
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v15, "Failed to get MediaPlayer for width:\n"

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :cond_1
    :goto_0
    const/16 v0, 0xb0

    :goto_1
    const/4 v7, 0x0

    goto :goto_2

    .line 694
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v9, :cond_4

    if-eqz v0, :cond_3

    if-eq v0, v8, :cond_4

    goto :goto_0

    .line 701
    :cond_3
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 697
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_1

    .line 730
    :goto_2
    iget v14, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->xphF7LaxLBhBSMXngqFaYY3J3HcWUabJuEaZGB2R7V3S4be2YKLOC6pwY1axtLQT:I

    const-string v12, ")"

    const-string v15, "VideoPlayer...onMeasure"

    const/4 v10, 0x2

    const/16 v11, -0x3e8

    const/16 v8, 0x64

    if-gt v14, v11, :cond_6

    .line 731
    iget-object v7, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer;

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v7}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v7

    if-nez v7, :cond_5

    if-ge v4, v10, :cond_5

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Width not stable... trying again (onMeasure "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/VideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v5, Lcom/google/appinventor/components/runtime/VideoPlayer$a$1;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/VideoPlayer$a$1;-><init>(Lcom/google/appinventor/components/runtime/VideoPlayer$a;III)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 740
    invoke-virtual {v1, v8, v8}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setMeasuredDimension(II)V

    return-void

    :cond_5
    add-int/lit16 v0, v0, 0x3e8

    neg-int v0, v0

    mul-int v7, v7, v0

    .line 743
    div-int/2addr v7, v8

    int-to-float v0, v7

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    int-to-float v0, v0

    :goto_3
    mul-float v0, v0, v5

    float-to-int v0, v0

    :cond_7
    move v7, v0

    .line 748
    iget v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:I

    const/4 v14, -0x2

    if-eq v0, v14, :cond_a

    const/4 v14, -0x1

    if-eq v0, v14, :cond_8

    const/16 v16, 0x1

    goto :goto_6

    .line 762
    :cond_8
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 764
    :try_start_2
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    const-string v14, "Got height from MediaPlayer>"

    .line 765
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 768
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "Failed to get MediaPlayer for height:\n"

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 768
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_4
    const/16 v0, 0x90

    :goto_5
    const/16 v16, 0x0

    goto :goto_6

    .line 750
    :cond_a
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v6, -0x80000000

    if-eq v0, v6, :cond_b

    const/high16 v6, 0x40000000    # 2.0f

    if-eq v0, v6, :cond_b

    goto :goto_4

    .line 753
    :cond_b
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_5

    .line 781
    :goto_6
    iget v6, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:I

    if-gt v6, v11, :cond_d

    .line 782
    iget-object v6, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v6

    if-nez v6, :cond_c

    if-ge v4, v10, :cond_c

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Height not stable... trying again (onMeasure "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/VideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v5, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;-><init>(Lcom/google/appinventor/components/runtime/VideoPlayer$a;III)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 791
    invoke-virtual {v1, v8, v8}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setMeasuredDimension(II)V

    return-void

    :cond_c
    add-int/lit16 v0, v0, 0x3e8

    neg-int v0, v0

    mul-int v6, v6, v0

    .line 794
    div-int/2addr v6, v8

    int-to-float v0, v6

    goto :goto_7

    :cond_d
    if-eqz v16, :cond_e

    int-to-float v0, v0

    :goto_7
    mul-float v0, v0, v5

    float-to-int v0, v0

    .line 801
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting dimensions to:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v7, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 805
    invoke-virtual {v1, v7, v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/VideoPlayer$a;III)V
    .locals 0

    .line 638
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(III)V

    return-void
.end method


# virtual methods
.method public final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(II)V
    .locals 0

    .line 812
    iput p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->xphF7LaxLBhBSMXngqFaYY3J3HcWUabJuEaZGB2R7V3S4be2YKLOC6pwY1axtLQT:I

    .line 813
    iput p2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:I

    .line 815
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->forceLayout()V

    .line 816
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->invalidate()V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    const/4 v0, 0x0

    .line 665
    invoke-direct {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(III)V

    return-void
.end method

.method public final zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5()V
    .locals 1

    .line 823
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 824
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/media/MediaPlayer;

    .line 827
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->forceLayout()V

    .line 828
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->invalidate()V

    return-void
.end method
