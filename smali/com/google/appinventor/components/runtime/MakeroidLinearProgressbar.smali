.class public final Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:I

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

.field private o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .line 32
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const v0, -0xde690e

    .line 28
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I

    .line 29
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:I

    .line 33
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->context:Landroid/content/Context;

    .line 35
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const v4, 0x1010078

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    .line 37
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->Minimum(I)V

    const/16 p1, 0x64

    .line 40
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->Maximum(I)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->ProgressColor(I)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->IndeterminateColor(I)V

    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->Indeterminate(Z)V

    const/4 p1, -0x2

    .line 44
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->Width(I)V

    const-string p1, "Makeroid Progress bar"

    const-string v0, "Makeroid Progress bar created"

    .line 45
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final Height()I
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->getView()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v0

    return v0
.end method

.method public final Height(I)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    return-void
.end method

.method public final HeightPercent(I)V
    .locals 0

    return-void
.end method

.method public final IncrementProgressBy(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Increase the progress bar\'s progress by the specified amount."
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 115
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->ProgressChanged(I)V

    return-void
.end method

.method public final Indeterminate(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the indeterminate mode for this progress bar. In indeterminate mode, the progress is ignored and the progress bar shows an infinite animation instead."
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 153
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Indeterminate is: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Makeroid Progress bar"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final Indeterminate()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicate whether this progress bar is in indeterminate mode."
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    return v0
.end method

.method public final IndeterminateColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 143
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:I

    return v0
.end method

.method public final IndeterminateColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF2196F2"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the indeterminate color of the progress bar."
    .end annotation

    .line 136
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:I

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 138
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Indeterminate Color = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Makeroid Progress bar"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final Maximum()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    return v0
.end method

.method public final Maximum(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "100"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the upper range of the progress bar max."
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 88
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setMax = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Makeroid Progress bar"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final Minimum()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMin()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final Minimum(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the lower range of the progress bar to min. This function works only for devices with API >= 26"
    .end annotation

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "Makeroid Progress bar"

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMin(I)V

    .line 73
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setMin = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setMin of progress bar is not possible. API is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final Progress()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the progress bar\'s current level of progress."
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public final Progress(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the current progress to the specified value. Does not do anything if the progress bar is in indeterminate mode."
    .end annotation

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 104
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->ProgressChanged(I)V

    return-void
.end method

.method public final ProgressChanged(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event that indicates that the progress of the progress bar has been changed. Returns the current progress value. If \"Indeterminate\" is set to true, then it returns \"0\"."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ProgressChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final ProgressColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 129
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I

    return v0
.end method

.method public final ProgressColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF2196F2"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the progress color of the progress bar."
    .end annotation

    .line 122
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 124
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Progress Color = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Makeroid Progress bar"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final bridge synthetic getView()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->getView()Landroid/widget/ProgressBar;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/widget/ProgressBar;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    return-object v0
.end method
