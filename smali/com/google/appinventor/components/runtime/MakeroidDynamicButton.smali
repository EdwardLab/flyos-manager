.class public final Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->DYNAMIC:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component to create dynamic buttons in Arrangements"
    iconName = "images/button.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/res/ColorStateList;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/Drawable;

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

    .line 50
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    const-string v0, "MakeroidDynamicButton"

    .line 47
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->LOG_TAG:Ljava/lang/String;

    .line 51
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->context:Landroid/content/Context;

    .line 52
    new-instance p1, Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {p1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public final ButtonClick(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Trigger when a Dynamic Button is clicked."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 273
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ButtonClick"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final ButtonLongClick(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Trigger when a Dynamic Button is long clicked."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 278
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ButtonLongClick"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final CreateButton(ILcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a Dynamic Button."
    .end annotation

    .line 65
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 68
    invoke-static {v0, v1, v1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 69
    new-instance v2, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton$1;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    new-instance v2, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton$2;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton$2;-><init>(Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 99
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    new-instance v3, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;

    invoke-direct {v3, p1, v0, p2}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 101
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 102
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final DeleteButton(ILcom/google/appinventor/components/runtime/HVArrangement;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This block is DEPRECATED! Please use instead the \'Delete Button\' block without arrangement parameter."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 126
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/HVArrangement;->getView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 128
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 130
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->removeItemById(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 132
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MakeroidDynamicButton"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final DeleteButtonNew(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Delete a Dynamic Button."
    .end annotation

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 110
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getViewHolderById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 111
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 112
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->removeItemById(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 116
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MakeroidDynamicButton"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final GetButtonById(I)Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the button referenced by its id."
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 140
    new-instance v0, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final GetEnabled(I)Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Enabled status of a button."
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 230
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->isEnabled(Landroid/widget/TextView;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final GetFontSize(I)F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Font Size of a button."
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->context:Landroid/content/Context;

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
        description = "Get the Height of a button."
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p1}, Landroid/widget/Button;->getHeight()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final GetText(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Text of a button."
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 264
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
        description = "Get the Width of a button."
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {p1}, Landroid/widget/Button;->getWidth()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final SetBackgroundColor(II)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Background Color of a button."
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public final SetEnabled(IZ)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Enabled status of a button."
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 222
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    :cond_0
    return-void
.end method

.method public final SetFont(IZZ)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Font of a button."
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 174
    invoke-static {p1, v0, p2, p3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    :cond_0
    return-void
.end method

.method public final SetFontSize(IF)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Font Size of a button."
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 239
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    :cond_0
    return-void
.end method

.method public final SetHeight(II)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Height of a button."
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 203
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 204
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    invoke-virtual {p1}, Landroid/widget/Button;->invalidate()V

    :cond_0
    return-void
.end method

.method public final SetText(ILjava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Text of a button."
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 256
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final SetTextColor(II)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Text Color of a button."
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 163
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    return-void

    .line 165
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/res/ColorStateList;

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColors(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public final SetWidth(II)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Width of a button."
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidDynamicButton;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 183
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 184
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    invoke-virtual {p1}, Landroid/widget/Button;->invalidate()V

    :cond_0
    return-void
.end method
