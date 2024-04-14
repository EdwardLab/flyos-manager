.class public abstract Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.super Lcom/google/appinventor/components/runtime/VisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private column:I

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private lastSetHeight:I

.field private lastSetWidth:I

.field private percentHeightHolder:I

.field private percentWidthHolder:I

.field private row:I


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VisibleComponent;-><init>()V

    const/4 v0, -0x3

    .line 31
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentWidthHolder:I

    .line 32
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentHeightHolder:I

    .line 33
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetWidth:I

    .line 34
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetHeight:I

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->column:I

    .line 37
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->row:I

    .line 45
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-void
.end method


# virtual methods
.method public Column()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 231
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->column:I

    return v0
.end method

.method public Column(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 241
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->column:I

    return-void
.end method

.method public CopyHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimplePropertyCopier;
    .end annotation

    .line 221
    iget p1, p1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetHeight:I

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public CopyWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimplePropertyCopier;
    .end annotation

    .line 163
    iget p1, p1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetWidth:I

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public Height()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 174
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public Height(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 186
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetHeight:I

    const/16 v0, -0x3e8

    if-gt p1, v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    sget-object v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->HEIGHT:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/appinventor/components/runtime/Form;->registerPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V

    :cond_0
    return-void
.end method

.method public HeightPercent(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-ltz p1, :cond_1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    neg-int p1, p1

    add-int/lit16 p1, p1, -0x3e8

    .line 207
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void

    .line 202
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xaf1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 203
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "HeightPercent"

    .line 202
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public Row()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 251
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->row:I

    return v0
.end method

.method public Row(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 261
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->row:I

    return-void
.end method

.method public Visible(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "visibility"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the component should be visible on the screen. Value is true if the component is showing and false if hidden."
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public Visible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Width()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public Width(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 100
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetWidth:I

    const/16 v0, -0x3e8

    if-gt p1, v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    sget-object v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->WIDTH:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/appinventor/components/runtime/Form;->registerPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V

    :cond_0
    return-void
.end method

.method public WidthPercent(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-ltz p1, :cond_1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    neg-int p1, p1

    add-int/lit16 p1, p1, -0x3e8

    .line 121
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void

    .line 116
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xaf1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "WidthPercent"

    .line 116
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public getSetHeight()I
    .locals 2

    .line 145
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentHeightHolder:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSetWidth()I
    .locals 2

    .line 131
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentWidthHolder:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width()I

    move-result v0

    :cond_0
    return v0
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public setLastHeight(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentHeightHolder:I

    return-void
.end method

.method public setLastWidth(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentWidthHolder:I

    return-void
.end method
