.class public final Lcom/google/appinventor/components/runtime/KodularLottie;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A new component "
    iconName = "images/makeroidLottie.png"
    nonVisible = false
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "lottie.aar",
        "lottie.jar"
    }
.end annotation


# instance fields
.field private clickable:Z

.field private context:Landroid/content/Context;

.field private f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/airbnb/lottie/LottieAnimationView;

.field private isCompanion:Z

.field private moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:F

.field private xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .line 48
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 41
    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:F

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Z

    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->clickable:Z

    .line 44
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->isCompanion:Z

    .line 49
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->context:Landroid/content/Context;

    .line 51
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    instance-of v1, v1, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v1, :cond_0

    .line 52
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->isCompanion:Z

    .line 55
    :cond_0
    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/airbnb/lottie/LottieAnimationView;

    .line 56
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Lcom/google/appinventor/components/runtime/KodularLottie$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/KodularLottie$1;-><init>(Lcom/google/appinventor/components/runtime/KodularLottie;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 79
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Lcom/google/appinventor/components/runtime/KodularLottie$2;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/KodularLottie$2;-><init>(Lcom/google/appinventor/components/runtime/KodularLottie;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Lcom/google/appinventor/components/runtime/KodularLottie$3;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/KodularLottie$3;-><init>(Lcom/google/appinventor/components/runtime/KodularLottie;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 98
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 99
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 101
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/KodularLottie;->Height(I)V

    .line 102
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/KodularLottie;->Width(I)V

    .line 104
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularLottie;->Source(Ljava/lang/String;)V

    .line 105
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Z

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularLottie;->LoopAnimation(Z)V

    .line 106
    iget p1, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:F

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularLottie;->AnimationSpeed(F)V

    .line 107
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/KodularLottie;->Clickable(Z)V

    const-string p1, "Lottie"

    const-string v0, "Lottie Created"

    .line 109
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularLottie;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->clickable:Z

    return p0
.end method


# virtual methods
.method public final AnimationEnd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the animation ends."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnimationEnd"

    .line 248
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final AnimationRepeat()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the animation repeated."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnimationRepeat"

    .line 253
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final AnimationSpeed()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the speed of the animation."
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getSpeed()F

    move-result v0

    return v0
.end method

.method public final AnimationSpeed(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the speed of the animation."
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    return-void
.end method

.method public final AnimationStart()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the animation starts."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnimationStart"

    .line 243
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the components was clicked."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Click"

    .line 233
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final Clickable(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the component clickable or not clickable."
    .end annotation

    .line 221
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->clickable:Z

    return-void
.end method

.method public final Clickable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the component is clickable."
    .end annotation

    .line 226
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->clickable:Z

    return v0
.end method

.method public final EndFrame(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the frame where you want the animation to end."
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setMaxFrame(I)V

    return-void
.end method

.method public final GetCurrentFrame()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the frame where the animation is now."
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getFrame()I

    move-result v0

    return v0
.end method

.method public final GetFrameCount()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the count of frames in the animation."
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getMaxFrame()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public final IsAnimating()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check if the Lottie component is animating."
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    return v0
.end method

.method public final LongClick()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the components was long clicked."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LongClick"

    .line 238
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final LoopAnimation(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set to true if you want to loop the animation."
    .end annotation

    .line 151
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Z

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    return-void
.end method

.method public final LoopAnimation()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get whether the animation loops."
    .end annotation

    .line 157
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Z

    return v0
.end method

.method public final PauseAnimation()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pause the animation on the Lottie component."
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    return-void
.end method

.method public final ResumeAnimation()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resume the animation on the Lottie component."
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    return-void
.end method

.method public final SetCurrentFrame(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the frame where you want the animation to be now."
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    return-void
.end method

.method public final Source()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the file or url of the file that you loaded."
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:Ljava/lang/String;

    return-object v0
.end method

.method public final Source(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the file or url of the file you want to load."
    .end annotation

    const-string v0, "Lottie"

    .line 117
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:Ljava/lang/String;

    .line 119
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "http://"

    .line 120
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->isCompanion:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    .line 125
    :try_start_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getAssetFilePath(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1

    .line 127
    new-instance v1, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 129
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Landroid/util/JsonReader;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 131
    :try_start_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    .line 121
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_1
    return-void

    :catch_1
    move-exception p1

    .line 139
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final StartAnimation()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the animation on the Lottie component."
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method public final StartFrame(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the frame where you want the animation to start."
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setMinFrame(I)V

    return-void
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularLottie;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/airbnb/lottie/LottieAnimationView;

    return-object v0
.end method
