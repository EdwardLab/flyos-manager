.class public Lcom/google/appinventor/components/runtime/MakeroidCardView;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "write in ode"
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "cardview.jar, cardview.aar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;
    }
.end annotation


# instance fields
.field private KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:I

.field private PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:F

.field private SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:I

.field private SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:I

.field private XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:I

.field private final activity:Landroid/app/Activity;

.field private alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

.field private final androidUIHandler:Landroid/os/Handler;

.field private backgroundColor:I

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private dTbjShrSvDZnDCeVo9i3X83sAePZ6DkuyHJPQ6B7WbRWcPLJlbxhZYnAC0mU9DUR:Z

.field private eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:I

.field private horizontalAlignment:I

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

.field private final mainLayout:Landroid/view/ViewGroup;

.field private muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

.field private oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

.field private verticalAlignment:I

.field private final viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

.field private yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8

    .line 63
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->androidUIHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->backgroundColor:I

    const/high16 v1, 0x40000000    # 2.0f

    .line 45
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:F

    .line 46
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    const/16 v1, 0x8

    .line 47
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

    .line 48
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:I

    .line 49
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:I

    .line 50
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:I

    const v2, -0x333334

    .line 51
    iput v2, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:I

    const/4 v3, 0x0

    .line 52
    iput v3, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:F

    .line 53
    iput v2, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:I

    const/4 v2, 0x0

    .line 54
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->dTbjShrSvDZnDCeVo9i3X83sAePZ6DkuyHJPQ6B7WbRWcPLJlbxhZYnAC0mU9DUR:Z

    const/4 v3, 0x1

    .line 56
    iput v3, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->verticalAlignment:I

    .line 57
    iput v3, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->horizontalAlignment:I

    .line 64
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 65
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    .line 66
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->activity:Landroid/app/Activity;

    .line 68
    new-instance v4, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    .line 69
    invoke-virtual {v4, v3}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setClickable(Z)V

    .line 70
    invoke-virtual {v4, v3}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setLongClickable(Z)V

    .line 71
    invoke-virtual {v4, v3}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setFocusable(Z)V

    .line 72
    invoke-virtual {v4, p0}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {v4, p0}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 74
    invoke-virtual {v4, p0}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 76
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 77
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v1

    .line 78
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v6

    .line 79
    invoke-virtual {v5, v1, v6, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 80
    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    invoke-virtual {v4, v3}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setUseCompatPadding(Z)V

    .line 82
    invoke-virtual {v4, v2}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setPreventCornerOverlap(Z)V

    .line 84
    new-instance v1, Lcom/google/appinventor/components/runtime/LinearLayout;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    const/16 v6, 0x64

    .line 85
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 86
    invoke-direct {v1, v5, v3, v7, v7}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 88
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/LinearLayout;->setBaselineAligned(Z)V

    .line 90
    new-instance v2, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-direct {v2, v1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    .line 91
    iget v3, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->horizontalAlignment:I

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 92
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    iget v3, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->verticalAlignment:I

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 94
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1, v2}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->mainLayout:Landroid/view/ViewGroup;

    .line 97
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 102
    iget p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->backgroundColor:I

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->BackgroundColor(I)V

    .line 103
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->UpdateCard()V

    .line 104
    iget p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:F

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->CornerRadius(F)V

    .line 105
    iget p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->Elevation(F)V

    .line 106
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->dTbjShrSvDZnDCeVo9i3X83sAePZ6DkuyHJPQ6B7WbRWcPLJlbxhZYnAC0mU9DUR:Z

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->FullClickable(Z)V

    .line 108
    iget p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:F

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->StrokeWidth(F)V

    .line 109
    iget p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:I

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->StrokeColor(I)V

    .line 110
    iget p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:I

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->TouchColor(I)V

    const-string p1, "Card View"

    const-string v0, "Card View Created"

    .line 112
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/LinearLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public AlignHorizontal()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how contents of the arrangement are aligned  horizontally. The choices are: 1 = left aligned, 2 = right aligned,  3 = horizontally centered.  Alignment has no effect if the arrangement\'s width is automatic."
    .end annotation

    .line 411
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->horizontalAlignment:I

    return v0
.end method

.method public AlignHorizontal(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "horizontal_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 397
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->horizontalAlignment:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 399
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0x579

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 400
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "HorizontalAlignment"

    .line 399
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public AlignVertical(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 422
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->verticalAlignment:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 424
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0x57a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 425
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "VerticalAlignment"

    .line 424
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 351
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the card view background color."
    .end annotation

    .line 238
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->backgroundColor:I

    .line 239
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setCardBackgroundColor(I)V

    .line 240
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->invalidate()V

    return-void
.end method

.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user has done a simple \"Click\"."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Click"

    .line 216
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ContentPaddingBottom()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 381
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:I

    return v0
.end method

.method public ContentPaddingBottom(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "8"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the bottom padding between the card view edges and the children of CardView."
    .end annotation

    .line 292
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:I

    .line 293
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->UpdateCard()V

    return-void
.end method

.method public ContentPaddingLeft()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 366
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

    return v0
.end method

.method public ContentPaddingLeft(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "8"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the left padding between the card view edges and the children of card view."
    .end annotation

    .line 265
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

    .line 266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->UpdateCard()V

    return-void
.end method

.method public ContentPaddingRight()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 376
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:I

    return v0
.end method

.method public ContentPaddingRight(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "8"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the right padding between the card view edges and the children of card view."
    .end annotation

    .line 283
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:I

    .line 284
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->UpdateCard()V

    return-void
.end method

.method public ContentPaddingTop()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 371
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:I

    return v0
.end method

.method public ContentPaddingTop(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "8"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the top padding between the card view edges and the children of card view."
    .end annotation

    .line 274
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:I

    .line 275
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->UpdateCard()V

    return-void
.end method

.method public CornerRadius()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 356
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:F

    return v0
.end method

.method public CornerRadius(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The corner radius from the card view."
    .end annotation

    .line 247
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:F

    .line 248
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setRadius(F)V

    return-void
.end method

.method public Elevation()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 361
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    return v0
.end method

.method public Elevation(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The card view elevation value."
    .end annotation

    .line 255
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    .line 256
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setCardElevation(F)V

    .line 257
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setMaxCardElevation(F)V

    return-void
.end method

.method public FullClickable(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true, the card will consume all click events. This means if you have added as example buttons into the card, then will the card consume the touch event on the button. And this means that the button would not be clickable, but only the entire card."
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    iput-boolean p1, v0, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->fullClick:Z

    .line 306
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->dTbjShrSvDZnDCeVo9i3X83sAePZ6DkuyHJPQ6B7WbRWcPLJlbxhZYnAC0mU9DUR:Z

    return-void
.end method

.method public FullClickable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->fullClick:Z

    return v0
.end method

.method public LongClick()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user has done a simple \"Long click\"."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LongClick"

    .line 221
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public StrokeColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the stroke color from the card view."
    .end annotation

    .line 346
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:I

    return v0
.end method

.method public StrokeColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The stroke color for the card view."
    .end annotation

    .line 340
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:I

    .line 341
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setStrokeColor(I)V

    return-void
.end method

.method public StrokeWidth()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the stroke width from the card view."
    .end annotation

    .line 333
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:F

    return v0
.end method

.method public StrokeWidth(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The stroke width for the card view."
    .end annotation

    .line 327
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:F

    .line 328
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setStrokeWidth(I)V

    return-void
.end method

.method public TouchColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the touch color also known as ripple color to the card view component."
        userVisible = false
    .end annotation

    if-eqz p1, :cond_0

    .line 316
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:I

    goto :goto_0

    :cond_0
    const v0, -0x333334

    .line 318
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:I

    .line 320
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->backgroundColor:I

    invoke-static {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/KodularRippleDrawable;->setRippleDrawable(Landroid/view/View;II)V

    return-void
.end method

.method public TouchDown()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user has done a simple touch down on the card."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TouchDown"

    .line 231
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TouchUp()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user has done a simple touch up on the card."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TouchUp"

    .line 226
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UpdateCard()V
    .locals 6

    .line 209
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    iget v2, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    iget v3, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:I

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    iget v4, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:I

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->context:Landroid/content/Context;

    iget v5, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:I

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->setContentPadding(IIII)V

    .line 211
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->invalidate()V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->mainLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getViewHelper()Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;

    return-object v0
.end method

.method public getViewLayout()Lcom/google/appinventor/components/runtime/LinearLayout;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 187
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->Click()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 192
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->LongClick()V

    const/4 p1, 0x1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 199
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->TouchDown()V

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 202
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->TouchUp()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 5

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/MakeroidCardView$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/appinventor/components/runtime/MakeroidCardView$2;-><init>(Lcom/google/appinventor/components/runtime/MakeroidCardView;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/16 v1, -0x3e8

    if-gt p2, v1, :cond_1

    add-int/lit16 p2, p2, 0x3e8

    neg-int p2, p2

    mul-int v0, v0, p2

    .line 179
    div-int/lit8 p2, v0, 0x64

    .line 181
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 182
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/MakeroidCardView;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V
    .locals 5

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x2

    if-ge p3, v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/MakeroidCardView$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/MakeroidCardView$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidCardView;Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/16 p3, -0x3e8

    if-gt p2, p3, :cond_1

    add-int/lit16 p2, p2, 0x3e8

    neg-int p2, p2

    mul-int v0, v0, p2

    .line 160
    div-int/lit8 p2, v0, 0x64

    .line 162
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 163
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    return-void
.end method
