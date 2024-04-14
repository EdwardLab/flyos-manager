.class Lcom/github/ybq/android/spinkit/style/DoubleBounce$Bounce;
.super Lcom/github/ybq/android/spinkit/sprite/CircleSprite;
.source "DoubleBounce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ybq/android/spinkit/style/DoubleBounce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Bounce"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/ybq/android/spinkit/style/DoubleBounce;


# direct methods
.method constructor <init>(Lcom/github/ybq/android/spinkit/style/DoubleBounce;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/github/ybq/android/spinkit/style/DoubleBounce$Bounce;->this$0:Lcom/github/ybq/android/spinkit/style/DoubleBounce;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/sprite/CircleSprite;-><init>()V

    const/16 p1, 0x99

    .line 36
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/style/DoubleBounce$Bounce;->setAlpha(I)V

    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/style/DoubleBounce$Bounce;->setScale(F)V

    return-void
.end method


# virtual methods
.method public onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 42
    fill-array-data v1, :array_0

    .line 43
    new-instance v2, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    invoke-direct {v2, p0}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;-><init>(Lcom/github/ybq/android/spinkit/sprite/Sprite;)V

    new-array v0, v0, [Ljava/lang/Float;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v0, v5

    const/4 v4, 0x2

    aput-object v3, v0, v4

    invoke-virtual {v2, v1, v0}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->scale([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    .line 44
    invoke-virtual {v0, v2, v3}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->duration(J)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v1}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->easeInOut([F)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->build()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method
