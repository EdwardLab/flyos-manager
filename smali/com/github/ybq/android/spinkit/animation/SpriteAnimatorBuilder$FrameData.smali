.class Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;
.super Ljava/lang/Object;
.source "SpriteAnimatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrameData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field fractions:[F

.field property:Landroid/util/Property;

.field final synthetic this$0:Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

.field values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;[FLandroid/util/Property;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Landroid/util/Property;",
            "[TT;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;->this$0:Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;->fractions:[F

    .line 35
    iput-object p3, p0, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;->property:Landroid/util/Property;

    .line 36
    iput-object p4, p0, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;->values:[Ljava/lang/Object;

    return-void
.end method
