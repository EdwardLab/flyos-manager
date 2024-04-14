.class public Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "swiperefreshlayout.jar, swiperefreshlayout.aar"
.end annotation


# instance fields
.field private AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:Z

.field private RC7PBJGdnqEffr8752ypFkbK8qZYkmQ3ci6maWfntRZXmeHa8bLhdKUgkXcpRo6T:I

.field private Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:Z

.field private YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:Z

.field private final activity:Landroid/app/Activity;

.field private alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

.field private final androidUIHandler:Landroid/os/Handler;

.field private backgroundColor:I

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private horizontalAlignment:I

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private final mainLayout:Landroid/view/ViewGroup;

.field private sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Lcom/google/appinventor/components/runtime/util/YailList;

.field private verticalAlignment:I

.field private final viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8

    .line 59
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->androidUIHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->RC7PBJGdnqEffr8752ypFkbK8qZYkmQ3ci6maWfntRZXmeHa8bLhdKUgkXcpRo6T:I

    const/4 v1, 0x1

    .line 44
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:Z

    const/4 v2, 0x0

    .line 45
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:Z

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const v4, -0xde690e

    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const v4, -0xb350b0

    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const v4, -0x115c5

    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const v4, -0xcbcca

    .line 51
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 46
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 55
    iput v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->backgroundColor:I

    .line 56
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:Z

    .line 60
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 61
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->context:Landroid/content/Context;

    .line 62
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->activity:Landroid/app/Activity;

    .line 64
    new-instance v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 65
    invoke-virtual {v3, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 67
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v4, Lcom/google/appinventor/components/runtime/LinearLayout;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->context:Landroid/content/Context;

    const/16 v6, 0x64

    .line 71
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 72
    invoke-direct {v4, v5, v1, v7, v7}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 74
    invoke-virtual {v4, v2}, Lcom/google/appinventor/components/runtime/LinearLayout;->setBaselineAligned(Z)V

    .line 76
    new-instance v5, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-direct {v5, v4}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    .line 77
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->horizontalAlignment:I

    .line 78
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->verticalAlignment:I

    .line 79
    invoke-virtual {v5, v1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 80
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    iget v7, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->verticalAlignment:I

    invoke-virtual {v5, v7}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 82
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->mainLayout:Landroid/view/ViewGroup;

    .line 85
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 91
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->Enabled(Z)V

    .line 92
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->ProgressAnimationColors(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 93
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->ProgressBackgroundColor(I)V

    .line 94
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->LargeSize(Z)V

    .line 95
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->BackgroundColor(I)V

    .line 96
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->NestedScrolling(Z)V

    const-string p1, "Swipe Refresh Layout"

    const-string v0, "Swipe Refresh Layout Created"

    .line 98
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/LinearLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

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

    .line 283
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->horizontalAlignment:I

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

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 269
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->horizontalAlignment:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 271
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0x579

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 272
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "HorizontalAlignment"

    .line 271
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public AlignVertical()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how the contents of the arrangement are aligned  vertically. The choices are: 1 = aligned at the top, 2 = vertically centered, 3 = aligned at the bottom.  Alignment has no effect if the arrangement\'s height is automatic."
    .end annotation

    .line 308
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->verticalAlignment:I

    return v0
.end method

.method public AlignVertical(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 294
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->verticalAlignment:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 296
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0x57a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 297
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "VerticalAlignment"

    .line 296
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The background color of the swipe refresh layout."
    .end annotation

    .line 323
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 315
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->backgroundColor:I

    .line 316
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->mainLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method

.method public Enabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true the swpipe refresh layout is enabled."
    .end annotation

    .line 239
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:Z

    .line 240
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if enabled."
    .end annotation

    .line 245
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:Z

    return v0
.end method

.method public IsRefreshing()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if is actively showing refresh progress."
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    return v0
.end method

.method public LargeSize(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled is set to true the pull size will be large, else the size is default."
    .end annotation

    .line 226
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:Z

    .line 227
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setSize(I)V

    return-void
.end method

.method public LargeSize()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if large size is used."
    .end annotation

    .line 232
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:Z

    return v0
.end method

.method public NestedScrolling(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Enable or disable nested scrolling for this view."
    .end annotation

    .line 252
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:Z

    .line 253
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public NestedScrolling()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if nested scrolling is enabled."
    .end annotation

    .line 258
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:Z

    return v0
.end method

.method public OnRefresh()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect when a refresh is triggered via the swipe gesture."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnRefresh"

    .line 173
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ProgressAnimationColors()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the used colors als list."
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public ProgressAnimationColors(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the colors used in the progress animation. Use a \'make a list\' block. The first color on the list is than the first spinner color."
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 194
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 196
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 197
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 198
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method public ProgressBackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the pull to refresh background color."
    .end annotation

    .line 186
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->RC7PBJGdnqEffr8752ypFkbK8qZYkmQ3ci6maWfntRZXmeHa8bLhdKUgkXcpRo6T:I

    return v0
.end method

.method public ProgressBackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the pull to refresh background color."
    .end annotation

    .line 180
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->RC7PBJGdnqEffr8752ypFkbK8qZYkmQ3ci6maWfntRZXmeHa8bLhdKUgkXcpRo6T:I

    .line 181
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    return-void
.end method

.method public Refreshing(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Notify the widget that refresh state has changed. Do not call this when refresh is triggered by a swipe gesture."
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->mainLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onRefresh()V
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->OnRefresh()V

    :cond_0
    return-void
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 5

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout$2;-><init>(Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/16 v1, -0x3e8

    if-gt p2, v1, :cond_1

    add-int/lit16 p2, p2, 0x3e8

    neg-int p2, p2

    mul-int v0, v0, p2

    .line 157
    div-int/lit8 p2, v0, 0x64

    .line 159
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 160
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V
    .locals 5

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x2

    if-ge p3, v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/16 p3, -0x3e8

    if-gt p2, p3, :cond_1

    add-int/lit16 p2, p2, 0x3e8

    neg-int p2, p2

    mul-int v0, v0, p2

    .line 138
    div-int/lit8 p2, v0, 0x64

    .line 140
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 141
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    return-void
.end method
