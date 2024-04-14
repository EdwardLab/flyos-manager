.class public Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->VIEWS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/viewFlipper.png"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private backgroundColor:I

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

.field private interval:I

.field private swipeable:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .line 49
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 50
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 51
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->context:Landroid/content/Context;

    .line 52
    new-instance v0, Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    .line 53
    invoke-virtual {v0, p0}, Landroid/widget/ViewFlipper;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->context:Landroid/content/Context;

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->context:Landroid/content/Context;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const-wide/16 v2, 0xc8

    .line 57
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 58
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 60
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 61
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 63
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const-string p1, ""

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->AddImagesFromString(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->BackgroundColor(I)V

    const/16 p1, 0x3e8

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->FlipInterval(I)V

    const/4 p1, 0x1

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->Swipeable(Z)V

    const-string p1, "Makeroid View Flipper"

    const-string v0, "Makeroid View Flipper Created"

    .line 70
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public AddComponentToView(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a component to the view flipper. The first added component will be the first visible component on the screen."
    .end annotation

    .line 170
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 174
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Makeroid View Flipper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public AddImagesFromString(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Use this function if you try to create a image view flipper. Use images separated by commas such as: Image1.png,Image2.png,Image3.png."
    .end annotation

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, " *, *"

    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    .line 204
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->AddImagesToView(Lcom/google/appinventor/components/runtime/util/YailList;)V

    :cond_0
    return-void
.end method

.method public AddImagesToView(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this function if you try to create a image view flipper. Please use a \'make a list\' block."
    .end annotation

    .line 180
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 181
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    .line 183
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 185
    :try_start_0
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 186
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    .line 187
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    .line 188
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 189
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    invoke-virtual {v4, v3}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unable to load "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Makeroid View Flipper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 218
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the view flippers background color."
    .end annotation

    .line 212
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->backgroundColor:I

    .line 213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->setBackgroundColor(I)V

    return-void
.end method

.method public FlipInterval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 139
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->interval:I

    return v0
.end method

.method public FlipInterval(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1000"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "How long to wait before flipping to the next view in milliseconds."
    .end annotation

    .line 133
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->interval:I

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->setFlipInterval(I)V

    return-void
.end method

.method public Height(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 95
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public ShowNext()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the next view."
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    return-void
.end method

.method public ShowPrevious()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the previous view."
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    return-void
.end method

.method public StartFlipping()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start a timer to cycle through child views."
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->startFlipping()V

    return-void
.end method

.method public StopFlipping()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "No more flips."
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    return-void
.end method

.method public Swipeable(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true you can swipe with your fingers through views."
    .end annotation

    .line 122
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->swipeable:Z

    return-void
.end method

.method public Swipeable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 127
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->swipeable:Z

    return v0
.end method

.method public Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 86
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->getView()Landroid/widget/ViewFlipper;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/widget/ViewFlipper;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method public isFlipping()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the child views are flipping."
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->isFlipping()Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 101
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float v0, p2, p1

    if-gez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    :cond_1
    cmpl-float p1, p2, p1

    if-lez p1, :cond_2

    .line 112
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 116
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->swipeable:Z

    return p1
.end method
