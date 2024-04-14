.class public final Lcom/google/appinventor/components/runtime/KodularStateProgressBar;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "in ode"
    iconName = "images/stateProgressBar.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "stateProgressBar.aar",
        "stateProgressBar.jar"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 41
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 42
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->context:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/kofigyan/stateprogressbar/StateProgressBar;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    .line 44
    new-instance v1, Lcom/google/appinventor/components/runtime/KodularStateProgressBar$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar$1;-><init>(Lcom/google/appinventor/components/runtime/KodularStateProgressBar;)V

    invoke-virtual {v0, v1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setOnStateItemClickListener(Lcom/kofigyan/stateprogressbar/listeners/OnStateItemClickListener;)V

    .line 50
    new-instance v1, Lcom/google/appinventor/components/runtime/KodularStateProgressBar$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar$2;-><init>(Lcom/google/appinventor/components/runtime/KodularStateProgressBar;)V

    invoke-virtual {v0, v1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setOnErrorListener(Lcom/kofigyan/stateprogressbar/listeners/OnStateErrorListener;)V

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 58
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const-string p1, "Item 1, Item 2, Item 3, Item 4, Item 5"

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->ElementsFromString(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateDescriptionTypeface(I)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateNumberTypeface(I)V

    const-string v0, ""

    .line 65
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateDescriptionTypefaceImport(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateNumberTypefaceImport(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateNumberIsDescending(Z)V

    const/4 p1, 0x1

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->JustifyMultilineDescription(Z)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->AnimationToCurrentState(Z)V

    const/4 v0, 0x2

    .line 72
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->MaxDescriptionLine(I)V

    const/4 v0, 0x5

    .line 76
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->MaxStateNumber(I)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->CurrentStateNumber(I)V

    const/16 p1, 0xfa

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->AnimationDuration(I)V

    const/high16 p1, 0x42200000    # 40.0f

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateProgressBarHeight(F)V

    const/high16 p1, 0x41a00000    # 20.0f

    .line 83
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateNumberTextSize(F)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateLineThickness(F)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->DescriptionTopSpaceIncrementer(F)V

    const/high16 p1, 0x41900000    # 18.0f

    .line 86
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateDescriptionSize(F)V

    const/high16 p1, 0x40a00000    # 5.0f

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->DescriptionLinesSpacing(F)V

    const p1, -0xb350b0

    .line 89
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->ForegroundColor(I)V

    const v0, -0xbbbbbc

    .line 90
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->BackgroundColor(I)V

    const/4 v1, -0x1

    .line 92
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateNumberForegroundColor(I)V

    const/high16 v1, -0x1000000

    .line 93
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateNumberBackgroundColor(I)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->CurrentStateDescriptionColor(I)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->StateDescriptionColor(I)V

    const-string p1, "Kodular StateProgress"

    const-string v0, "Kodular StateProgressBar Created"

    .line 98
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final AllStatesCompleted(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true all states are completed."
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0, p1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setAllStatesCompleted(Z)V

    return-void
.end method

.method public final AllStatesCompleted()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if \'All States Completed\' is enabled."
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->isAllStatesCompletedEnabled()Z

    move-result v0

    return v0
.end method

.method public final AnimationDuration()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the animation duration in milliseconds."
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getAnimationDuration()I

    move-result v0

    return v0
.end method

.method public final AnimationDuration(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "250"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the animation duration in milliseconds. Example:  use 1000 for 1 second."
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0, p1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setAnimationDuration(I)V

    return-void
.end method

.method public final AnimationToCurrentState(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true the states will use a animation when they changed."
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0, p1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->enableAnimationToCurrentState(Z)V

    return-void
.end method

.method public final AnimationToCurrentState()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the state number order is descending."
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->isEnableAnimationToCurrentState()Z

    move-result v0

    return v0
.end method

.method public final BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the background color."
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public final BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF444444"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the background color."
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0, p1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setBackgroundColor(I)V

    return-void
.end method

.method public final CurrentStateDescriptionColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the current state description color."
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getCurrentStateDescriptionColor()I

    move-result v0

    return v0
.end method

.method public final CurrentStateDescriptionColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF4CAF50"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the current state description color."
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0, p1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setCurrentStateDescriptionColor(I)V

    return-void
.end method

.method public final CurrentStateNumber()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the current state number."
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getCurrentStateNumber()I

    move-result v0

    return v0
.end method

.method public final CurrentStateNumber(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "state_number"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the current state number."
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getMaxStateNumber()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    if-le p1, v0, :cond_4

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    if-gt p1, v0, :cond_1

    .line 234
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    sget-object v0, Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;->TWO:Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;

    invoke-virtual {p1, v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setCurrentStateNumber(Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;)V

    return-void

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    if-gt p1, v0, :cond_2

    .line 236
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    sget-object v0, Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;->THREE:Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;

    invoke-virtual {p1, v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setCurrentStateNumber(Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;)V

    return-void

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    if-gt p1, v0, :cond_3

    .line 238
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    sget-object v0, Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;->FOUR:Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;

    invoke-virtual {p1, v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setCurrentStateNumber(Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;)V

    return-void

    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    if-gt p1, v0, :cond_4

    .line 240
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    sget-object v0, Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;->FIVE:Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;

    invoke-virtual {p1, v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setCurrentStateNumber(Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;)V

    return-void

    .line 243
    :cond_4
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    sget-object v0, Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;->ONE:Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;

    invoke-virtual {p1, v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setCurrentStateNumber(Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;)V

    return-void
.end method

.method public final DescriptionLinesSpacing()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the description lines spacing."
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getDescriptionLinesSpacing()F

    move-result v0

    return v0
.end method

.method public final DescriptionLinesSpacing(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the description lines spacing."
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0, p1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setDescriptionLinesSpacing(F)V

    return-void
.end method

.method public final DescriptionTopSpaceIncrementer()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the description top space incrementer."
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getDescriptionTopSpaceIncrementer()F

    move-result v0

    return v0
.end method

.method public final DescriptionTopSpaceIncrementer(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the description top space incrementer."
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0, p1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setDescriptionTopSpaceIncrementer(F)V

    return-void
.end method

.method public final ElementsFromString(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Item 1, Item 2, Item 3, Item 4, Item 5"
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The State Progress Bar elements specified as a string with the items separated by commas such as: Item 1, Item 2, Item 3, Item 4, Item 5. Each word before the comma will be an element in the list. You can add maximum 5 items."
    .end annotation

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0, p1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateDescriptionData([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final ErrorOccurred(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event invoked when a error occurred."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ErrorOccurred"

    .line 113
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final ForegroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the foreground color."
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getForegroundColor()I

    move-result v0

    return v0
.end method

.method public final ForegroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF4CAF50"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the foreground color."
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0, p1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setForegroundColor(I)V

    return-void
.end method

.method public final JustifyMultilineDescription(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true justify multiline description is enabled."
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0, p1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setJustifyMultilineDescription(Z)V

    return-void
.end method

.method public final JustifyMultilineDescription()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the state number order is descending."
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->isDescriptionMultiline()Z

    move-result v0

    return v0
.end method

.method public final MaxDescriptionLine()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the maximum description line."
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getMaxDescriptionLine()I

    move-result v0

    return v0
.end method

.method public final MaxDescriptionLine(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the maximum description line."
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0, p1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setMaxDescriptionLine(I)V

    return-void
.end method

.method public final MaxStateNumber()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the maximum state number."
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getMaxStateNumber()I

    move-result v0

    return v0
.end method

.method public final MaxStateNumber(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "state_number"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the maximum state number."
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 206
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    sget-object v0, Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;->ONE:Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;

    invoke-virtual {p1, v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setMaxStateNumber(Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 208
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    sget-object v0, Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;->TWO:Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;

    invoke-virtual {p1, v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setMaxStateNumber(Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;)V

    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 210
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    sget-object v0, Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;->THREE:Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;

    invoke-virtual {p1, v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setMaxStateNumber(Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;)V

    return-void

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 212
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    sget-object v0, Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;->FOUR:Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;

    invoke-virtual {p1, v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setMaxStateNumber(Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;)V

    return-void

    .line 217
    :cond_3
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    sget-object v0, Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;->FIVE:Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;

    invoke-virtual {p1, v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setMaxStateNumber(Lcom/kofigyan/stateprogressbar/StateProgressBar$StateNumber;)V

    return-void
.end method

.method public final StateDescriptionColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the state description color."
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getStateDescriptionColor()I

    move-result v0

    return v0
.end method

.method public final StateDescriptionColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF444444"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the state description color."
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0, p1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateDescriptionColor(I)V

    return-void
.end method

.method public final StateDescriptionSize()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the state description size."
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getStateDescriptionSize()F

    move-result v0

    return v0
.end method

.method public final StateDescriptionSize(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "18.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the state description size."
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0, p1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateDescriptionSize(F)V

    return-void
.end method

.method public final StateDescriptionTypeface(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getTitleBarTypeFace(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateDescriptionTypefaceFile(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final StateDescriptionTypefaceImport(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font for state description typeface."
    .end annotation

    if-eqz p1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getTitleBarCustomTypeFace(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateDescriptionTypefaceFile(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public final StateItemClick(IZ)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event invoked when a state item was clicked."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "StateItemClick"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final StateLineThickness()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the state line thickness."
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getStateLineThickness()F

    move-result v0

    return v0
.end method

.method public final StateLineThickness(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the state line thickness."
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0, p1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateLineThickness(F)V

    return-void
.end method

.method public final StateNumberBackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the state number background color."
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getStateNumberBackgroundColor()I

    move-result v0

    return v0
.end method

.method public final StateNumberBackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the state number background color."
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0, p1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateNumberBackgroundColor(I)V

    return-void
.end method

.method public final StateNumberForegroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the state number foreground color."
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getStateNumberForegroundColor()I

    move-result v0

    return v0
.end method

.method public final StateNumberForegroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the state number foreground color."
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0, p1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateNumberForegroundColor(I)V

    return-void
.end method

.method public final StateNumberIsDescending(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true the state number is in descending order."
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0, p1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateNumberIsDescending(Z)V

    return-void
.end method

.method public final StateNumberIsDescending()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the state number order is descending."
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getStateNumberIsDescending()Z

    move-result v0

    return v0
.end method

.method public final StateNumberTextSize()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the state number text size."
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getStateNumberTextSize()F

    move-result v0

    return v0
.end method

.method public final StateNumberTextSize(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "20.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the state number text size."
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0, p1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateNumberTextSize(F)V

    return-void
.end method

.method public final StateNumberTypeface(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getTitleBarTypeFace(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateNumberTypefaceFile(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final StateNumberTypefaceImport(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font for state number typeface."
    .end annotation

    if-eqz p1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getTitleBarCustomTypeFace(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateNumberTypefaceFile(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public final StateProgressBarHeight()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the state progress bar height."
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->getStateSize()F

    move-result v0

    return v0
.end method

.method public final StateProgressBarHeight(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "40.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the state progress bar height."
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    invoke-virtual {v0, p1}, Lcom/kofigyan/stateprogressbar/StateProgressBar;->setStateSize(F)V

    return-void
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kofigyan/stateprogressbar/StateProgressBar;

    return-object v0
.end method
