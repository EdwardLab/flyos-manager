.class public final Lcom/google/appinventor/components/runtime/util/ScreenDensityUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeCompatibleScaling(Landroid/content/Context;)F
    .locals 7

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 43
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1087
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v3, "window"

    .line 1088
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 1089
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 1091
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 1093
    invoke-virtual {p0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1094
    iget p0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p0, v1, Landroid/graphics/Point;->x:I

    .line 1095
    iget p0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p0, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 1098
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 46
    :goto_0
    iget p0, v1, Landroid/graphics/Point;->x:I

    .line 47
    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge p0, v1, :cond_1

    move v3, p0

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, p0

    move v3, v1

    :goto_1
    const/high16 v4, 0x43a00000    # 320.0f

    .line 57
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3fe3bbbc

    cmpl-float v5, v2, v3

    if-lez v5, :cond_2

    const v2, 0x3fe3bbbc

    :cond_2
    int-to-float v5, v0

    mul-float v5, v5, v2

    add-float/2addr v5, v4

    float-to-int v2, v5

    if-ge p0, v1, :cond_3

    goto :goto_2

    :cond_3
    move v6, v2

    move v2, v0

    move v0, v6

    :goto_2
    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    int-to-float v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 75
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, v3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method
