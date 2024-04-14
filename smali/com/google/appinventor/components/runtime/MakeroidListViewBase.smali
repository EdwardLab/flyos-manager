.class public abstract Lcom/google/appinventor/components/runtime/MakeroidListViewBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field public static final DEFAULT_PRIMARY_TEXT_COLOR:I

.field public static final DEFAULT_SECONDARY_TEXT_COLOR:I


# instance fields
.field public backgroundColor:I

.field public container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field public context:Landroid/content/Context;

.field public dividerColor:I

.field public form:Lcom/google/appinventor/components/runtime/Form;

.field public isCompanion:Z

.field public final listViewLayout:Landroid/widget/LinearLayout;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "&HFF212121"

    .line 39
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->DEFAULT_PRIMARY_TEXT_COLOR:I

    const-string v0, "&HFF757575"

    .line 40
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->DEFAULT_SECONDARY_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;I)V
    .locals 7

    .line 43
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->backgroundColor:I

    const/4 v1, 0x0

    .line 35
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->dividerColor:I

    .line 37
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->isCompanion:Z

    .line 44
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 45
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->context:Landroid/content/Context;

    .line 46
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 48
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->listViewLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    .line 49
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51
    new-instance v4, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    new-instance v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v5, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->context:Landroid/content/Context;

    invoke-direct {v5, v6, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 55
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 56
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 58
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 60
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->context:Landroid/content/Context;

    new-instance v4, Lcom/google/appinventor/components/runtime/MakeroidListViewBase$1;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/MakeroidListViewBase$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidListViewBase;)V

    invoke-direct {p2, v2, p1, v4}, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$OnItemClickListener;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    const/4 p1, -0x2

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->Width(I)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->Height(I)V

    .line 77
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->BackgroundColor(I)V

    .line 78
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->DividerColor(I)V

    .line 80
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of p1, p1, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz p1, :cond_0

    .line 81
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->isCompanion:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the background color of the listview."
    .end annotation

    .line 102
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the background color of the listview"
    .end annotation

    .line 96
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->backgroundColor:I

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    const p1, 0xffffff

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    return-void
.end method

.method public DividerColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the divider color of the listview."
    .end annotation

    .line 116
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->dividerColor:I

    return v0
.end method

.method public DividerColor(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the divider color of the listview"
    .end annotation

    .line 110
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->dividerColor:I

    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/DividerItemDecoration;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->context:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public Height(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the height of the list on the view."
    .end annotation

    .line 127
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the width of the list on the view."
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 136
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public abstract click(I)V
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->listViewLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public abstract longClick(I)V
.end method

.method public setRecyclerViewOrientation(I)V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method
