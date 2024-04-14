.class public final Lcom/google/appinventor/components/runtime/KodularDynamicCardView;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->DYNAMIC:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component to create dynamic cardviews in Arrangements."
    iconName = "images/cardview.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;
    }
.end annotation


# instance fields
.field private KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:I

.field private final LOG_TAG:Ljava/lang/String;

.field private PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:F

.field private SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:I

.field private SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:I

.field private XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:I

.field private backgroundColor:I

.field private context:Landroid/content/Context;

.field private eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:I

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private fullClick:Z

.field private kodularDynamicModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;",
            ">;"
        }
    .end annotation
.end field

.field private muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

.field private oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

.field private yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 56
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, "KodularDynamicCardView"

    .line 40
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->LOG_TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->backgroundColor:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 44
    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:F

    .line 45
    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->fullClick:Z

    const/16 v0, 0x8

    .line 47
    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

    .line 48
    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:I

    .line 49
    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:I

    .line 50
    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:I

    const v0, -0x333334

    .line 51
    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 52
    iput v1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:F

    .line 53
    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:I

    .line 57
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    .line 58
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->form:Lcom/google/appinventor/components/runtime/Form;

    return-void
.end method


# virtual methods
.method public final AddComponentToCardView(ILcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a component into the card view component with the given id."
    .end annotation

    const-string v0, "KodularDynamicCardView"

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    .line 111
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v2}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getChildViewHolderById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 114
    :try_start_1
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v2

    .line 115
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 117
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->invalidate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 120
    :try_start_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 122
    :try_start_3
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 123
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 125
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->invalidate()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 128
    :try_start_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception p1

    .line 132
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final BackgroundColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the cards\'s background color."
    .end annotation

    .line 282
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->backgroundColor:I

    return-void
.end method

.method public final Click(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user has done a simple click on a card view component with the specific id."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 343
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Click"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final ContentPadding(IIIII)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the content padding of a card view component."
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    if-eqz p1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    .line 220
    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    .line 221
    invoke-static {v0, p3}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    .line 222
    invoke-static {v0, p4}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p4

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    .line 223
    invoke-static {v0, p5}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p5

    .line 219
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setContentPadding(IIII)V

    :cond_0
    return-void
.end method

.method public final ContentPaddingBottom(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "8"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the bottom padding between the card\'s edges and the children of card view."
    .end annotation

    .line 338
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:I

    return-void
.end method

.method public final ContentPaddingLeft(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "8"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the left padding between the card\'s edges and the children of card view."
    .end annotation

    .line 314
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

    return-void
.end method

.method public final ContentPaddingRight(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "8"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the right padding between the card\'s edges and the children of card view."
    .end annotation

    .line 330
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:I

    return-void
.end method

.method public final ContentPaddingTop(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "8"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the top padding between the card\'s edges and the children of card view."
    .end annotation

    .line 322
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:I

    return-void
.end method

.method public final CornerRadius(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The corner radius from the card view."
    .end annotation

    .line 289
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:F

    return-void
.end method

.method public final CreateCardView(ILcom/google/appinventor/components/runtime/AndroidViewComponent;II)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a new card view component dynamically. Use for width/height \'-1\' for wrap content or \'-2\' for fill parent."
    .end annotation

    .line 64
    :try_start_0
    new-instance v0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;-><init>(Lcom/google/appinventor/components/runtime/KodularDynamicCardView;Landroid/content/Context;)V

    .line 1460
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v1

    .line 1461
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

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

    .line 1474
    :cond_3
    :goto_1
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1476
    iget-object p4, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    const/16 v1, 0x8

    invoke-static {p4, v1}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p4

    .line 1477
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v1

    .line 1478
    invoke-virtual {p3, p4, v1, p4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 65
    invoke-virtual {v0, p3}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance p3, Landroid/widget/LinearLayout;

    iget-object p4, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    invoke-direct {p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p4, 0x1

    .line 68
    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 69
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    new-instance v2, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;

    invoke-direct {v2, p1, v0, p2, p3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 75
    invoke-virtual {v0, p3}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->addView(Landroid/view/View;)V

    .line 76
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2428
    new-instance p2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$1;

    invoke-direct {p2, p0, p1}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$1;-><init>(Lcom/google/appinventor/components/runtime/KodularDynamicCardView;I)V

    invoke-virtual {v0, p2}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2435
    new-instance p2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$2;

    invoke-direct {p2, p0, p1}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$2;-><init>(Lcom/google/appinventor/components/runtime/KodularDynamicCardView;I)V

    invoke-virtual {v0, p2}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2443
    new-instance p2, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$3;

    invoke-direct {p2, p0, p1}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$3;-><init>(Lcom/google/appinventor/components/runtime/KodularDynamicCardView;I)V

    invoke-virtual {v0, p2}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3086
    invoke-virtual {v0, p4}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setClickable(Z)V

    .line 3087
    invoke-virtual {v0, p4}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setUseCompatPadding(Z)V

    .line 3088
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setPreventCornerOverlap(Z)V

    .line 3090
    iget p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->backgroundColor:I

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setCardBackgroundColor(I)V

    .line 3091
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    iget p2, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:F

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setRadius(F)V

    .line 3092
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    iget p2, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setCardElevation(F)V

    .line 3093
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    iget p2, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setMaxCardElevation(F)V

    .line 3094
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->fullClick:Z

    iput-boolean p1, v0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->fullClick:Z

    .line 3095
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    iget p2, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:I

    .line 3096
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    iget p3, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:I

    .line 3097
    invoke-static {p2, p3}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p2

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    iget p4, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:I

    .line 3098
    invoke-static {p3, p4}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p3

    iget-object p4, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    iget v1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:I

    .line 3099
    invoke-static {p4, v1}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p4

    .line 3095
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setContentPadding(IIII)V

    .line 3100
    iget p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:I

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setStrokeColor(I)V

    .line 3101
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    iget p2, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:F

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setStrokeWidth(I)V

    .line 3102
    iget p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->backgroundColor:I

    iget p2, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:I

    invoke-static {v0, p1, p2}, Lcom/google/appinventor/components/runtime/util/KodularRippleDrawable;->setRippleDrawable(Landroid/view/View;II)V

    .line 3104
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 81
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "KodularDynamicCardView"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final DeleteCardView(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a card view component with the given id."
    .end annotation

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    .line 141
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getViewHolderById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 142
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 143
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->removeItemById(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 147
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "KodularDynamicCardView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final Elevation(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The card view elevation value."
    .end annotation

    .line 296
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    return-void
.end method

.method public final FullClickable(IZ)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "If set to true, the card will consume all click events. This means if you have added as example buttons into the card, then will the card consume the touch event on the button. And this means that the button would not be clickable, but only the entire card."
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    if-eqz p1, :cond_0

    .line 234
    iput-boolean p2, p1, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->fullClick:Z

    :cond_0
    return-void
.end method

.method public final FullClickable(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true, the card will consume all click events. This means if you have added as example buttons into the card, then will the card consume the touch event on the button. And this means that the button would not be clickable, but only the entire card."
    .end annotation

    .line 306
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->fullClick:Z

    return-void
.end method

.method public final GetBackgroundColor(I)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the background color of a card view component."
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->getCardBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final GetCardViewById(I)Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the card view referenced by its id."
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    if-eqz p1, :cond_0

    .line 155
    new-instance v0, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final GetCornerRadius(I)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the corner radius of a card view component."
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->getRadius()F

    move-result p1

    float-to-int p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final GetElevation(I)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the elevation of a card view component."
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->getCardElevation()F

    move-result p1

    float-to-int p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final GetHeight(I)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the height of a card view component."
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    if-eqz p1, :cond_0

    .line 273
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->getHeight()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final GetWidth(I)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the width of a card view component."
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->getWidth()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final LongClick(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user has done a simple long click on a card view component with the specific id."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "LongClick"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final SetBackgroundColor(II)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the background color of a card view component."
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setCardBackgroundColor(I)V

    .line 167
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final SetCornerRadius(IF)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the corner radius of a card view component."
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    if-eqz p1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setRadius(F)V

    :cond_0
    return-void
.end method

.method public final SetElevation(IF)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the elevation of a card view component."
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    if-eqz p1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setCardElevation(F)V

    .line 202
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setMaxCardElevation(F)V

    :cond_0
    return-void
.end method

.method public final SetHeight(II)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the height of a card view component."
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 263
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p2

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 264
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final SetWidth(II)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the width of a card view component."
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 243
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p2

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 244
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final StrokeColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The stroke width for the card view."
    .end annotation

    .line 392
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:I

    return-void
.end method

.method public final StrokeColor(II)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the stroke color to a card view component with the specific id."
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    if-eqz p1, :cond_0

    .line 399
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setStrokeColor(I)V

    :cond_0
    return-void
.end method

.method public final StrokeWidth(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The stroke width for the card view."
    .end annotation

    .line 377
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:F

    return-void
.end method

.method public final StrokeWidth(IF)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the stroke width to a card view component with the specific id."
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;

    if-eqz p1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->setStrokeWidth(I)V

    :cond_0
    return-void
.end method

.method public final TouchColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the touch color also known as ripple color to a card view component."
    .end annotation

    if-eqz p1, :cond_0

    .line 367
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:I

    return-void

    :cond_0
    const p1, -0x333334

    .line 369
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:I

    return-void
.end method

.method public final TouchDown(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user has done a simple touch down on a card view component with the specific id."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 358
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "TouchDown"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final TouchUp(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user has done a simple touch up on a card view component with the specific id."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 353
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "TouchUp"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
