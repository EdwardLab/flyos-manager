.class public Lcom/google/appinventor/components/runtime/TableLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Layout;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final layoutManager:Landroid/widget/TableLayout;

.field private numColumns:I

.field private numRows:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 6

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/widget/TableLayout;

    invoke-direct {v0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    .line 41
    iput p2, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    .line 42
    iput p3, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    .line 46
    new-instance v2, Landroid/widget/TableRow;

    invoke-direct {v2, p1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellView()Landroid/view/View;

    move-result-object v4

    invoke-static {}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellLayoutParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 50
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    new-instance v4, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v4}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    invoke-virtual {v3, v2, v1, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/TableLayout;Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/TableLayout;->addChild(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method private addChild(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 4

    .line 131
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Row()I

    move-result v0

    .line 132
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Column()I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "TableLayout"

    if-ltz v0, :cond_2

    .line 139
    iget v3, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    if-ge v0, v3, :cond_2

    if-ltz v1, :cond_1

    .line 140
    iget v3, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    if-ge v1, v3, :cond_1

    .line 141
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v2, v0}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->removeViewAt(I)V

    .line 143
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 146
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Child has illegal Column property: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 149
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Child has illegal Row property: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 135
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/TableLayout;->addChildLater(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method private addChildLater(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/TableLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/TableLayout$1;-><init>(Lcom/google/appinventor/components/runtime/TableLayout;Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static newCellLayoutParams()Landroid/widget/TableRow$LayoutParams;
    .locals 1

    .line 163
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    return-object v0
.end method

.method private static newEmptyCellLayoutParams()Landroid/widget/TableRow$LayoutParams;
    .locals 2

    .line 159
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private newEmptyCellView()Landroid/view/View;
    .locals 2

    .line 155
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 2

    .line 115
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/TableLayout;->newCellLayoutParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/TableLayout;->addChildLater(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method public getLayoutManager()Landroid/view/ViewGroup;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    return-object v0
.end method

.method getNumColumns()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    return v0
.end method

.method getNumRows()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    return v0
.end method

.method setNumColumns(I)V
    .locals 5

    .line 59
    iget v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    const/4 v1, 0x0

    if-le p1, v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    .line 62
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    if-ge v1, v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 64
    iget v2, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    :goto_1
    if-ge v2, p1, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellView()Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellLayoutParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_1
    iput p1, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    return-void

    :cond_2
    if-ge p1, v0, :cond_4

    .line 72
    :goto_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    if-ge v1, v0, :cond_3

    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 74
    iget v2, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, p1, v2}, Landroid/widget/TableRow;->removeViews(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 76
    :cond_3
    iput p1, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    :cond_4
    return-void
.end method

.method setNumRows(I)V
    .locals 6

    .line 85
    iget v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    if-le p1, v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    iget v1, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    :goto_0
    if-ge v1, p1, :cond_1

    .line 89
    new-instance v2, Landroid/widget/TableRow;

    invoke-direct {v2, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 90
    :goto_1
    iget v4, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    if-ge v3, v4, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellView()Landroid/view/View;

    move-result-object v4

    invoke-static {}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellLayoutParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 93
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    new-instance v4, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v4}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    invoke-virtual {v3, v2, v1, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_1
    iput p1, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    return-void

    :cond_2
    if-ge p1, v0, :cond_3

    .line 98
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    sub-int/2addr v0, p1

    invoke-virtual {v1, p1, v0}, Landroid/widget/TableLayout;->removeViews(II)V

    .line 99
    iput p1, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    :cond_3
    return-void
.end method
