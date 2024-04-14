.class public final Lcom/google/appinventor/components/runtime/KodularDynamicSpace;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->DYNAMIC:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component to create dynamic space in Arrangements."
    iconName = "images/space.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private kodularDynamicModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 38
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, "KodularDynamicSpace"

    .line 34
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->LOG_TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->kodularDynamicModelList:Ljava/util/List;

    .line 39
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->context:Landroid/content/Context;

    .line 40
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->form:Lcom/google/appinventor/components/runtime/Form;

    return-void
.end method


# virtual methods
.method public final CreateSpace(ILcom/google/appinventor/components/runtime/AndroidViewComponent;II)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a new space component dynamically. Use for width/height \'-1\' for wrap content or \'-2\' for fill parent."
    .end annotation

    .line 46
    :try_start_0
    new-instance v0, Landroid/widget/Space;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 1126
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->context:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v1

    .line 1127
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->context:Landroid/content/Context;

    invoke-static {v2, p4}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-ne p3, v4, :cond_0

    const/4 v1, -0x2

    goto :goto_0

    :cond_0
    if-ne p3, v3, :cond_1

    const/4 v1, -0x1

    :cond_1
    :goto_0
    if-ne p4, v4, :cond_2

    const/4 v2, -0x2

    goto :goto_1

    :cond_2
    if-ne p4, v3, :cond_3

    const/4 v2, -0x1

    .line 1140
    :cond_3
    :goto_1
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    invoke-virtual {v0, p3}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->kodularDynamicModelList:Ljava/util/List;

    new-instance p4, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;

    invoke-direct {p4, p1, v0, p2}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 52
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 54
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "KodularDynamicSpace"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final DeleteSpace(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a space component with the given id."
    .end annotation

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    .line 63
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getViewHolderById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 65
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->removeItemById(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 69
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "KodularDynamicSpace"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final GetHeight(I)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Height of a space component."
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Space;

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Landroid/widget/Space;->getHeight()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final GetSpaceById(I)Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the space referenced by its id."
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Space;

    if-eqz p1, :cond_0

    .line 77
    new-instance v0, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final GetWidth(I)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Width of a space component."
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Space;

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/widget/Space;->getWidth()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final SetHeight(II)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Height of a space component."
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Space;

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 109
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->context:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p2

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 110
    invoke-virtual {p1, v0}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-virtual {p1}, Landroid/widget/Space;->invalidate()V

    :cond_0
    return-void
.end method

.method public final SetWidth(II)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Width of a space component."
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Space;

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 89
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicSpace;->context:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p2

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 90
    invoke-virtual {p1, v0}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    invoke-virtual {p1}, Landroid/widget/Space;->invalidate()V

    :cond_0
    return-void
.end method
