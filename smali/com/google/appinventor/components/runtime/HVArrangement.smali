.class public Lcom/google/appinventor/components/runtime/HVArrangement;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/animation/AlphaAnimation;

.field private final JG8vik3adkKEwGQS5cMPy19gFsDVhfFFU9AjX5Lm2B7MWziHu9erYgT687JlCqd:I

.field private Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:Z

.field private alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

.field private final androidUIHandler:Landroid/os/Handler;

.field private backgroundColor:I

.field private backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field private clickable:Z

.field private eaS298peKlTpqlGRGLMTdk3sY259qoFGMqAzTE98DZy2JVNgCwB414XzHrUPTC:Z

.field private horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/Drawable;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AlphaAnimation;

.field private imagePath:Ljava/lang/String;

.field private scrollable:Z

.field private scrollbar:Z

.field private size:I

.field private verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

.field public final viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;IZ)V
    .locals 7

    .line 84
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->scrollable:Z

    .line 55
    sget-object v1, Lcom/google/appinventor/components/common/HorizontalAlignment;->Left:Lcom/google/appinventor/components/common/HorizontalAlignment;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    .line 56
    sget-object v1, Lcom/google/appinventor/components/common/VerticalAlignment;->Top:Lcom/google/appinventor/components/common/VerticalAlignment;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

    const-string v1, ""

    .line 63
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    .line 65
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->androidUIHandler:Landroid/os/Handler;

    .line 67
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->clickable:Z

    const/4 v1, 0x1

    .line 68
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->scrollbar:Z

    .line 69
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->eaS298peKlTpqlGRGLMTdk3sY259qoFGMqAzTE98DZy2JVNgCwB414XzHrUPTC:Z

    .line 70
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:Z

    const/16 v2, 0x8

    .line 73
    iput v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->size:I

    .line 85
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    .line 87
    iput p2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->JG8vik3adkKEwGQS5cMPy19gFsDVhfFFU9AjX5Lm2B7MWziHu9erYgT687JlCqd:I

    .line 88
    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->scrollable:Z

    .line 90
    new-instance v3, Lcom/google/appinventor/components/runtime/LinearLayout;

    const/16 v4, 0x64

    .line 91
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 92
    invoke-direct {v3, v2, p2, v5, v5}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 94
    invoke-virtual {v3, v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->setBaselineAligned(Z)V

    .line 95
    new-instance v5, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-direct {v5, v3}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    .line 96
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(Lcom/google/appinventor/components/common/HorizontalAlignment;)V

    .line 97
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(Lcom/google/appinventor/components/common/VerticalAlignment;)V

    const-string v5, "HVArrangement"

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "Setting up frameContainer = ScrollView()"

    .line 102
    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance p2, Landroid/widget/ScrollView;

    invoke-direct {p2, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    const-string p2, "Setting up frameContainer = HorizontalScrollView()"

    .line 106
    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance p2, Landroid/widget/HorizontalScrollView;

    invoke-direct {p2, v2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    const-string p2, "Setting up frameContainer = FrameLayout()"

    .line 111
    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    .line 115
    :goto_0
    iget p2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->size:I

    invoke-static {v2, p2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->size:I

    .line 116
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object p3

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/HVArrangement;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/Drawable;

    .line 123
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 124
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/HVArrangement;->BackgroundColor(I)V

    .line 125
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/HVArrangement;->setAnimation()V

    .line 126
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/HVArrangement;->UseRoundCard(Z)V

    .line 127
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/HVArrangement;->isCard(Z)V

    .line 128
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/HVArrangement;->Clickable(Z)V

    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/HVArrangement;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HVArrangement;)Landroid/view/ViewGroup;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HVArrangement;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HVArrangement;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->clickable:Z

    return p0
.end method

.method private updateAppearance()V
    .locals 4

    .line 595
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 596
    iget v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    if-nez v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 603
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 605
    :goto_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->eaS298peKlTpqlGRGLMTdk3sY259qoFGMqAzTE98DZy2JVNgCwB414XzHrUPTC:Z

    if-eqz v0, :cond_3

    .line 606
    iget v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    const v1, 0xffffff

    if-ne v0, v1, :cond_1

    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 607
    :goto_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:Z

    invoke-static {v2, v0, v1, v3}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setShape(Landroid/view/View;IIZ)V

    return-void

    .line 611
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/LinearLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public AlignHorizontal()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/HorizontalAlignment;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how contents of the arrangement are aligned  horizontally. The choices are: 1 = left aligned, 2 = right aligned,  3 = horizontally centered.  Alignment has no effect if the arrangement\'s width is automatic."
    .end annotation

    .line 279
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/HVArrangement;->AlignHorizontalAbstract()Lcom/google/appinventor/components/common/HorizontalAlignment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/HorizontalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public AlignHorizontal(I)V
    .locals 4
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/HorizontalAlignment;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "horizontal_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 310
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/HorizontalAlignment;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/HorizontalAlignment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0x579

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 313
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "HorizontalAlignment"

    .line 312
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 316
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/HVArrangement;->AlignHorizontalAbstract(Lcom/google/appinventor/components/common/HorizontalAlignment;)V

    return-void
.end method

.method public AlignHorizontalAbstract()Lcom/google/appinventor/components/common/HorizontalAlignment;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    return-object v0
.end method

.method public AlignHorizontalAbstract(Lcom/google/appinventor/components/common/HorizontalAlignment;)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(Lcom/google/appinventor/components/common/HorizontalAlignment;)V

    .line 297
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    return-void
.end method

.method public AlignVertical()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/VerticalAlignment;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how the contents of the arrangement are aligned  vertically. The choices are: 1 = aligned at the top, 2 = vertically centered, 3 = aligned at the bottom.  Alignment has no effect if the arrangement\'s height is automatic."
    .end annotation

    .line 331
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/HVArrangement;->AlignVerticalAbstract()Lcom/google/appinventor/components/common/VerticalAlignment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/VerticalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public AlignVertical(I)V
    .locals 4
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/VerticalAlignment;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 362
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/VerticalAlignment;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/VerticalAlignment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0x57a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 365
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "VerticalAlignment"

    .line 364
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 368
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/HVArrangement;->AlignVerticalAbstract(Lcom/google/appinventor/components/common/VerticalAlignment;)V

    return-void
.end method

.method public AlignVerticalAbstract()Lcom/google/appinventor/components/common/VerticalAlignment;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

    return-object v0
.end method

.method public AlignVerticalAbstract(Lcom/google/appinventor/components/common/VerticalAlignment;)V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(Lcom/google/appinventor/components/common/VerticalAlignment;)V

    .line 349
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the component\'s background color"
    .end annotation

    .line 380
    iget v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the component\'s background color. The background color will not be visible if an Image is being displayed."
    .end annotation

    .line 396
    iput p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    .line 397
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/HVArrangement;->updateAppearance()V

    return-void
.end method

.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Click listener event."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Click"

    .line 474
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Clickable(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the component clickable or not clickable."
    .end annotation

    .line 485
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->clickable:Z

    .line 486
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 487
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->clickable:Z

    if-eqz p1, :cond_0

    .line 488
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 489
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/HVArrangement;->getSelectedItemDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 490
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    new-instance v0, Lcom/google/appinventor/components/runtime/HVArrangement$4;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/HVArrangement$4;-><init>(Lcom/google/appinventor/components/runtime/HVArrangement;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    new-instance v0, Lcom/google/appinventor/components/runtime/HVArrangement$5;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/HVArrangement$5;-><init>(Lcom/google/appinventor/components/runtime/HVArrangement;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    .line 505
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 506
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 508
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    return-void
.end method

.method public Clickable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 514
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->clickable:Z

    return v0
.end method

.method public FullClickable(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
        userVisible = false
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public Height(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 235
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 237
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    instance-of v0, p1, Landroid/widget/ScrollView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 238
    check-cast p1, Landroid/widget/ScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 240
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    instance-of v0, p1, Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_1

    .line 241
    check-cast p1, Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    :cond_1
    return-void
.end method

.method public HeightPercent(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 249
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->HeightPercent(I)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 251
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    instance-of v0, p1, Landroid/widget/ScrollView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 252
    check-cast p1, Landroid/widget/ScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    instance-of v0, p1, Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_1

    .line 255
    check-cast p1, Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    :cond_1
    return-void
.end method

.method public Image()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public Image(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the path of the component\'s image.  If there is both an Image and a BackgroundColor, only the Image will be visible."
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 572
    :cond_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 575
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 578
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 580
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :catch_0
    :cond_2
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/HVArrangement;->updateAppearance()V

    return-void
.end method

.method public LongClick()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Long click listener event."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LongClick"

    .line 479
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Scrollbar(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether to display a scrollbar"
    .end annotation

    .line 530
    iget v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->JG8vik3adkKEwGQS5cMPy19gFsDVhfFFU9AjX5Lm2B7MWziHu9erYgT687JlCqd:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 531
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 535
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->scrollbar:Z

    return-void
.end method

.method public Scrollbar()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 540
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->scrollbar:Z

    return v0
.end method

.method public UseRoundCard(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled the card layout will have then round corners."
    .end annotation

    .line 412
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:Z

    return-void
.end method

.method public UseRoundCard()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 417
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:Z

    return v0
.end method

.method public Width(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 207
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 209
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    instance-of v0, p1, Landroid/widget/ScrollView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 210
    check-cast p1, Landroid/widget/ScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    instance-of v0, p1, Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_1

    .line 213
    check-cast p1, Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    :cond_1
    return-void
.end method

.method public WidthPercent(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 221
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->WidthPercent(I)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 223
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    instance-of v0, p1, Landroid/widget/ScrollView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 224
    check-cast p1, Landroid/widget/ScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    instance-of v0, p1, Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_1

    .line 227
    check-cast p1, Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    :cond_1
    return-void
.end method

.method public getSelectedItemDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101030e

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 519
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 521
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 523
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isCard(Z)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled the arrangement will be convert to a card view. You can detect clicks on it with the \"Click\" event."
    .end annotation

    .line 424
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->eaS298peKlTpqlGRGLMTdk3sY259qoFGMqAzTE98DZy2JVNgCwB414XzHrUPTC:Z

    .line 425
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->clickable:Z

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    if-eqz p1, :cond_1

    .line 427
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 428
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 429
    iget p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    const v1, 0xffffff

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 430
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:Z

    invoke-static {v1, p1, v0, v2}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setShape(Landroid/view/View;IIZ)V

    .line 431
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 432
    iget v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->size:I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v1

    iget v3, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->size:I

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 433
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    iget v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->size:I

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 437
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    new-instance v0, Lcom/google/appinventor/components/runtime/HVArrangement$3;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/HVArrangement$3;-><init>(Lcom/google/appinventor/components/runtime/HVArrangement;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    .line 458
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 459
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    iget v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 460
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 461
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 462
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 463
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public isCard()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 469
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->eaS298peKlTpqlGRGLMTdk3sY259qoFGMqAzTE98DZy2JVNgCwB414XzHrUPTC:Z

    return v0
.end method

.method public setAnimation()V
    .locals 3

    .line 401
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AlphaAnimation;

    .line 402
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/animation/AlphaAnimation;

    .line 403
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 404
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 405
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 406
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    return-void
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/HVArrangement$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/appinventor/components/runtime/HVArrangement$2;-><init>(Lcom/google/appinventor/components/runtime/HVArrangement;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/16 v1, -0x3e8

    if-gt p2, v1, :cond_1

    add-int/lit16 p2, p2, 0x3e8

    neg-int p2, p2

    mul-int v0, v0, p2

    .line 192
    div-int/lit8 p2, v0, 0x64

    .line 195
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 197
    iget v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->JG8vik3adkKEwGQS5cMPy19gFsDVhfFFU9AjX5Lm2B7MWziHu9erYgT687JlCqd:I

    if-nez v0, :cond_2

    .line 198
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForHorizontalLayout(Landroid/view/View;I)V

    return-void

    .line 200
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/HVArrangement;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x2

    if-ge p3, v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/HVArrangement$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/HVArrangement$1;-><init>(Lcom/google/appinventor/components/runtime/HVArrangement;Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/16 p3, -0x3e8

    if-gt p2, p3, :cond_1

    .line 165
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "HVArrangement.setChildWidth(): width = "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " parent Width = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " child = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "HVArrangement"

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit16 p2, p2, 0x3e8

    neg-int p2, p2

    mul-int v0, v0, p2

    .line 166
    div-int/lit8 p2, v0, 0x64

    .line 169
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 171
    iget p3, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->JG8vik3adkKEwGQS5cMPy19gFsDVhfFFU9AjX5Lm2B7MWziHu9erYgT687JlCqd:I

    if-nez p3, :cond_2

    .line 172
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForHorizontalLayout(Landroid/view/View;I)V

    return-void

    .line 174
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    return-void
.end method
