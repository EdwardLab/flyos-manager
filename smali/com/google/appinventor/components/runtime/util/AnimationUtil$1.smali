.class final synthetic Lcom/google/appinventor/components/runtime/util/AnimationUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/AnimationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 100
    invoke-static {}, Lcom/google/appinventor/components/common/ScreenAnimation;->values()[Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AnimationUtil$1;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[I

    :try_start_0
    sget-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->Fade:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/ScreenAnimation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AnimationUtil$1;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[I

    sget-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->Zoom:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/ScreenAnimation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AnimationUtil$1;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[I

    sget-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->SlideHorizontal:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/ScreenAnimation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AnimationUtil$1;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[I

    sget-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->SlideVertical:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/ScreenAnimation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AnimationUtil$1;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[I

    sget-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->None:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/ScreenAnimation;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
