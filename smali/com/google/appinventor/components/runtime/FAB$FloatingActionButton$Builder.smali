.class public Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:I

.field private YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:I

.field private final activity:Landroid/app/Activity;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/FrameLayout$LayoutParams;

.field private qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:F

.field private size:I

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x800055

    .line 362
    iput v0, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:I

    const/4 v0, -0x1

    .line 364
    iput v0, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:I

    const/4 v0, 0x0

    .line 365
    iput v0, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->size:I

    const/4 v0, 0x0

    .line 366
    iput v0, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:F

    .line 369
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:F

    const/16 v1, 0x48

    .line 370
    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(IF)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->size:I

    .line 371
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->size:I

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/FrameLayout$LayoutParams;

    .line 372
    iget v1, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 374
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->activity:Landroid/app/Activity;

    return-void
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(IF)I
    .locals 0

    int-to-float p0, p0

    mul-float p0, p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public create()Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;
    .locals 3

    .line 422
    new-instance v0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;-><init>(Landroid/content/Context;)V

    .line 423
    iget v1, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:I

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->setFloatingActionButtonColor(I)V

    .line 424
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->setFloatingActionButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 426
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->activity:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 427
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public withButtonColor(I)Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;
    .locals 0

    .line 408
    iput p1, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:I

    return-object p0
.end method

.method public withButtonSize(I)Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;
    .locals 1

    .line 416
    iget v0, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:F

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(IF)I

    move-result p1

    .line 417
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/FrameLayout$LayoutParams;

    return-object p0
.end method

.method public withDrawable(Landroid/graphics/drawable/Drawable;)Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public withGravity(I)Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;
    .locals 0

    .line 381
    iput p1, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:I

    return-object p0
.end method

.method public withMargins(IIII)Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:F

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(IF)I

    move-result p1

    iget v1, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:F

    .line 390
    invoke-static {p2, v1}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(IF)I

    move-result p2

    iget v1, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:F

    .line 391
    invoke-static {p3, v1}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(IF)I

    move-result p3

    iget v1, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:F

    .line 392
    invoke-static {p4, v1}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(IF)I

    move-result p4

    .line 389
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    return-object p0
.end method
