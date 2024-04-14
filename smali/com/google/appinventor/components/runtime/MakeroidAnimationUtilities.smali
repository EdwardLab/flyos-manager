.class public Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->UTILITIES:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    helpUrl = "https://docs.kodular.io/components/drawing-and-animation/animation-util/"
    iconName = "images/animationUtil.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:F

.field private context:Landroid/content/Context;

.field private xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 42
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:F

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:Z

    .line 43
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->context:Landroid/content/Context;

    const-string p1, "Makeroid Animation Utilities"

    const-string v0, "Makeroid Animation Utilities Created"

    .line 45
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;Ljava/lang/String;FFI)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 p3, 0x1

    aput p4, v0, p3

    .line 287
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string p3, "rotation"

    .line 288
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 289
    iget-boolean p2, p0, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:Z

    if-eqz p2, :cond_0

    .line 290
    new-instance p2, Landroid/view/animation/BounceInterpolator;

    invoke-direct {p2}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 292
    :cond_0
    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    iget p3, p0, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:F

    invoke-direct {p2, p3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_1
    :goto_0
    int-to-long p2, p5

    .line 295
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 296
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method


# virtual methods
.method public BounceHorizontal(Lcom/google/appinventor/components/runtime/AndroidViewComponent;FFI)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start a horizontal bounce animation. The duration is set in millisecond. Use as example for 1 second \'1000\'."
    .end annotation

    .line 174
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    const/4 p1, 0x1

    .line 175
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:Z

    const-string v2, "translationX"

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    .line 176
    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;Ljava/lang/String;FFI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 178
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Makeroid Animation Utilities"

    .line 179
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x8

    .line 180
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "BounceHorizontal"

    invoke-virtual {p0, p2, p1, p3}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public BounceVertical(Lcom/google/appinventor/components/runtime/AndroidViewComponent;FFI)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start a vertical bounce animation. The duration is set in millisecond. Use as example for 1 second \'1000\'."
    .end annotation

    .line 190
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    const/4 p1, 0x1

    .line 191
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:Z

    const-string v2, "translationY"

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    .line 192
    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;Ljava/lang/String;FFI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 194
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Makeroid Animation Utilities"

    .line 195
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x9

    .line 196
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "BounceVertical"

    invoke-virtual {p0, p2, p1, p3}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Error(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is triggered when there was a error catched. Possible values for the error code and method: 1 \'GetLeftPosition\', 2 \'GetTopPosition\', 3 \'GetRightPosition\', 4 \'GetBottomPosition\', 5 \'GetXPosition\', 6 \'GetYPosition\', 7 \'Rotation\', 8 \'BounceHorizontal\', 9 \'BounceVertical\', 10 \'OvershootHorizontal\', 11 \'OvershootVertical\', 12 \'Zoom\'. The error message will return you the error reason."
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "Error"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetBottomPosition(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the bottom position of a component. It will return \'-9999\' if there was a error."
    .end annotation

    .line 114
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Makeroid Animation Utilities"

    .line 118
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GetBottomPosition"

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x270f

    return p1
.end method

.method public GetLeftPosition(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the left position of a component. It will return \'-9999\' if there was a error."
    .end annotation

    .line 72
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Makeroid Animation Utilities"

    .line 76
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GetLeftPosition"

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x270f

    return p1
.end method

.method public GetRightPosition(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the right position of a component. It will return \'-9999\' if there was a error."
    .end annotation

    .line 100
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Makeroid Animation Utilities"

    .line 104
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GetRightPosition"

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x270f

    return p1
.end method

.method public GetTopPosition(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the top position of a component. It will return \'-9999\' if there was a error."
    .end annotation

    .line 86
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Makeroid Animation Utilities"

    .line 90
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GetTopPosition"

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x270f

    return p1
.end method

.method public GetXPosition(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the x position of a component. It will return \'-9999\' if there was a error."
    .end annotation

    .line 128
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    float-to-int p1, p1

    return p1

    :catch_0
    move-exception p1

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Makeroid Animation Utilities"

    .line 132
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GetXPosition"

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x270f

    return p1
.end method

.method public GetYPosition(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the y position of a component. It will return \'-9999\' if there was a error."
    .end annotation

    .line 142
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    float-to-int p1, p1

    return p1

    :catch_0
    move-exception p1

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Makeroid Animation Utilities"

    .line 146
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GetYPosition"

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x270f

    return p1
.end method

.method public OvershootHorizontal(Lcom/google/appinventor/components/runtime/AndroidViewComponent;FFIF)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start a horizontal overshoot animation. If \'tension\' is set to 0 you will not see a overshoot animation. Then you will see just a simple deceleration animation. The duration is set in millisecond. Use as example for 1 second \'1000\'."
    .end annotation

    .line 208
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    .line 209
    iput p5, p0, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:F

    const/4 p1, 0x0

    .line 210
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:Z

    const-string v2, "translationX"

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    .line 211
    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;Ljava/lang/String;FFI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 213
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Makeroid Animation Utilities"

    .line 214
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xa

    .line 215
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "OvershootHorizontal"

    invoke-virtual {p0, p2, p1, p3}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OvershootVertical(Lcom/google/appinventor/components/runtime/AndroidViewComponent;FFIF)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start a vertical overshoot animation. If \'tension\' is set to 0 you will not see a overshoot animation. Then you will see just a simple deceleration animation. The duration is set in millisecond. Use as example for 1 second \'1000\'."
    .end annotation

    .line 227
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    .line 228
    iput p5, p0, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:F

    const/4 p1, 0x0

    .line 229
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:Z

    const-string v2, "translationY"

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    .line 230
    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;Ljava/lang/String;FFI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 232
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Makeroid Animation Utilities"

    .line 233
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xb

    .line 234
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "OvershootVertical"

    invoke-virtual {p0, p2, p1, p3}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Rotation(Lcom/google/appinventor/components/runtime/AndroidViewComponent;FFI)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start a rotation on any component. Use as example in \'rotation Start Degrees\' 0, in \'rotation End Degrees\' 360 and in \'duration\' 300 (millisecond) to run a clockwise, 360 degress animation. You can also use negative numbers for the degress."
    .end annotation

    .line 158
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    const/4 p1, 0x0

    .line 159
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:Z

    const-string v2, "rotation"

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    .line 160
    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;Ljava/lang/String;FFI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 162
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Makeroid Animation Utilities"

    .line 163
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x7

    .line 164
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Rotation"

    invoke-virtual {p0, p2, p1, p3}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Zoom(Lcom/google/appinventor/components/runtime/AndroidViewComponent;FFI)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start a zoom animation.  \'tension\' is set to 0 you will not see a overshoot animation. Then you will see just a simple deceleration animation. The duration is set in millisecond. Use as example for 1 second \'1000\'."
    .end annotation

    .line 246
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    .line 1300
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, v9

    move v1, p2

    move v2, p3

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const/4 p2, 0x1

    .line 1301
    invoke-virtual {v9, p2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    int-to-long p2, p4

    .line 1302
    invoke-virtual {v9, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1303
    invoke-virtual {p1, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 249
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Makeroid Animation Utilities"

    .line 250
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xc

    .line 251
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Zoom"

    invoke-virtual {p0, p2, p1, p3}, Lcom/google/appinventor/components/runtime/MakeroidAnimationUtilities;->Error(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
