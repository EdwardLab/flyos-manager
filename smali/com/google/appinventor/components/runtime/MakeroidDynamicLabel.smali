.class public final Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->DYNAMIC:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component to create dynamic labels in Arrangements"
    iconName = "images/label.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

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

    .line 39
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, "KodularDynamicLabel"

    .line 35
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->LOG_TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    .line 40
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final AlignmentCenter()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Center alignment (1)"
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public final AlignmentLeft()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Left alignment (0)"
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final AlignmentRight()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Right alignment (2)"
    .end annotation

    const/4 v0, 0x2

    return v0
.end method

.method public final CreateLabel(ILcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a Dynamic Label"
    .end annotation

    .line 52
    :try_start_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 53
    invoke-static {v0, v1, v1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    const/high16 v2, -0x1000000

    .line 54
    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 56
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    new-instance v3, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;

    invoke-direct {v3, p1, v0, p2}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 59
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 62
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "KodularDynamicLabel"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final DeleteLabel(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a label component with the given id."
    .end annotation

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getViewHolderById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 72
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 73
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->removeItemById(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 77
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "KodularDynamicLabel"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final GetFontSize(I)F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Font Size of a Label"
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final GetHeight(I)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Height of a Label"
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final GetLabelById(I)Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the label referenced by its id."
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 85
    new-instance v0, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final GetText(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Text of a Label"
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 193
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public final GetWidth(I)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Width of a Label"
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final SetAlignment(II)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Text Alignment of a Label. 0 = left, 1 = center and 2 = right."
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 202
    invoke-static {p1, p2, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    :cond_0
    return-void
.end method

.method public final SetBackgroundColor(II)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Background Color of a Label"
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 99
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    return-void

    :cond_0
    const p2, 0xffffff

    .line 101
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    :cond_1
    return-void
.end method

.method public final SetFont(IZZ)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Font of a Label"
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 122
    invoke-static {p1, v0, p2, p3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    :cond_0
    return-void
.end method

.method public final SetFontSize(IF)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Font Size of a Label"
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 164
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    :cond_0
    return-void
.end method

.method public final SetHeight(II)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Height of a Label"
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHeight(I)V

    :cond_0
    return-void
.end method

.method public final SetText(ILjava/lang/String;Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Text of a Label"
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 182
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextHTML(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    .line 184
    :cond_0
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final SetTextColor(II)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Text Color of a Label"
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 111
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    return-void

    :cond_0
    const/high16 p2, -0x1000000

    .line 113
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    :cond_1
    return-void
.end method

.method public final SetWidth(II)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Width of a Label"
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicLabel;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setWidth(I)V

    :cond_0
    return-void
.end method
