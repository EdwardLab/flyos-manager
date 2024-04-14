.class public final Lcom/dreamers/bubbletabbar/BubbleTabBar;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/dreamers/bubbletabbar/repack/c;

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:Landroid/graphics/Typeface;

.field private final k:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "container.`$context`()"

    invoke-static {p1, v0}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->a:Landroid/content/Context;

    const-string p1, "#808080"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->c:I

    const/4 p1, 0x5

    invoke-static {p1}, Lcom/dreamers/bubbletabbar/BubbleTabBar;->a(I)F

    move-result p1

    iput p1, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->d:F

    const/16 p1, 0xf

    invoke-static {p1}, Lcom/dreamers/bubbletabbar/BubbleTabBar;->a(I)F

    move-result p1

    iput p1, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->e:F

    const/16 p1, 0xa

    invoke-static {p1}, Lcom/dreamers/bubbletabbar/BubbleTabBar;->a(I)F

    move-result p1

    iput p1, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->f:F

    const/16 p1, 0x14

    invoke-static {p1}, Lcom/dreamers/bubbletabbar/BubbleTabBar;->a(I)F

    move-result p1

    iput p1, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->g:F

    const/16 p1, 0xc

    invoke-static {p1}, Lcom/dreamers/bubbletabbar/BubbleTabBar;->b(I)F

    move-result p1

    iput p1, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->h:F

    const/16 p1, 0x19

    invoke-static {p1}, Lcom/dreamers/bubbletabbar/BubbleTabBar;->a(I)F

    move-result p1

    iput p1, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->i:F

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const-string v0, "DEFAULT"

    invoke-static {p1, v0}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->j:Landroid/graphics/Typeface;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->k:Ljava/util/List;

    return-void
.end method

.method private static a(I)F
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p0, p0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    :try_start_0
    invoke-static {p0, p1}, Lcom/dreamers/bubbletabbar/BubbleTabBar;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getTypeface | Failed to get typeface from path : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with error : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BubbleTabBar"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    move-object p1, p0

    check-cast p1, Landroid/graphics/Typeface;

    :goto_0
    return-object p0
.end method

.method private static a(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/dreamers/bubbletabbar/BubbleTabBar;->b(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v1, "createFromStream(inputStream, null)"

    invoke-static {p1, v1}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "getDrawable : Error = "

    invoke-static {p1, p0}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BubbleTabBar"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0
.end method

.method public static final synthetic a(Lcom/dreamers/bubbletabbar/BubbleTabBar;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/dreamers/bubbletabbar/BubbleTabBar;->OnSelected(I)V

    return-void
.end method

.method private static b(I)F
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p0, p0

    const/4 v1, 0x2

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private static b(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v0

    instance-of p0, p0, Lcom/google/appinventor/components/runtime/ReplForm;

    const-string v1, "BubbleTabBar"

    if-eqz p0, :cond_0

    :try_start_0
    const-string v2, "context"

    invoke-static {v0, v2}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/dreamers/bubbletabbar/BubbleTabBar;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getAsset | Filepath = "

    invoke-static {v0, p1}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/io/InputStream;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getAsset | Debug Mode : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " | Error : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move-object p0, v0

    check-cast p0, Ljava/io/InputStream;

    :goto_0
    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.javaClass.name"

    invoke-static {v0, v1}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "makeroid"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/dreamers/bubbletabbar/repack/p;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "/assets/"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "/storage/emulated/0/Kodular/assets/"

    invoke-static {p0, p1}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final Add(ILjava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 9

    const-string v0, "title"

    invoke-static {p2, v0}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p3, v0}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "form"

    invoke-static {v0, v1}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p3}, Lcom/dreamers/bubbletabbar/BubbleTabBar;->a(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object p3, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->k:Ljava/util/List;

    new-instance v0, Lcom/dreamers/bubbletabbar/repack/g;

    move-object v4, p2

    check-cast v4, Ljava/lang/CharSequence;

    move-object v2, v0

    move v3, p1

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/dreamers/bubbletabbar/repack/g;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZIZ)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final CornerRadius(I)V
    .locals 0

    invoke-static {p1}, Lcom/dreamers/bubbletabbar/BubbleTabBar;->a(I)F

    move-result p1

    iput p1, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->i:F

    return-void
.end method

.method public final HorizontalPadding(I)V
    .locals 0

    invoke-static {p1}, Lcom/dreamers/bubbletabbar/BubbleTabBar;->a(I)F

    move-result p1

    iput p1, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->e:F

    return-void
.end method

.method public final IconColor(I)V
    .locals 0

    iput p1, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->c:I

    return-void
.end method

.method public final IconPadding(I)V
    .locals 0

    invoke-static {p1}, Lcom/dreamers/bubbletabbar/BubbleTabBar;->a(I)F

    move-result p1

    iput p1, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->d:F

    return-void
.end method

.method public final IconSize(I)V
    .locals 0

    invoke-static {p1}, Lcom/dreamers/bubbletabbar/BubbleTabBar;->a(I)F

    move-result p1

    iput p1, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->g:F

    return-void
.end method

.method public final Initialize(Lcom/google/appinventor/components/runtime/HVArrangement;)V
    .locals 12

    const-string v0, "layout"

    invoke-static {p1, v0}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/HVArrangement;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v0, Lcom/dreamers/bubbletabbar/repack/c;

    iget-object v1, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->a:Landroid/content/Context;

    new-instance v11, Lcom/dreamers/bubbletabbar/repack/e;

    iget v3, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->c:I

    iget v4, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->d:F

    iget v5, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->e:F

    iget v6, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->f:F

    iget v7, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->g:F

    iget v8, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->h:F

    iget v9, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->i:F

    iget-object v10, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->j:Landroid/graphics/Typeface;

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/dreamers/bubbletabbar/repack/e;-><init>(IFFFFFFLandroid/graphics/Typeface;)V

    invoke-direct {v0, v1, v11}, Lcom/dreamers/bubbletabbar/repack/c;-><init>(Landroid/content/Context;Lcom/dreamers/bubbletabbar/repack/e;)V

    iput-object v0, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->b:Lcom/dreamers/bubbletabbar/repack/c;

    iget-object v1, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/dreamers/bubbletabbar/repack/c;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->b:Lcom/dreamers/bubbletabbar/repack/c;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/dreamers/bubbletabbar/repack/a;

    invoke-direct {v1, p0}, Lcom/dreamers/bubbletabbar/repack/a;-><init>(Lcom/dreamers/bubbletabbar/BubbleTabBar;)V

    const-string v2, "onBubbleClickListener"

    invoke-static {v1, v2}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/dreamers/bubbletabbar/repack/c;->a:Lcom/dreamers/bubbletabbar/repack/f;

    :cond_0
    iget-object v0, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->b:Lcom/dreamers/bubbletabbar/repack/c;

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final OnSelected(I)V
    .locals 3

    move-object v0, p0

    check-cast v0, Lcom/google/appinventor/components/runtime/Component;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "OnSelected"

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final Select(I)V
    .locals 3

    iget-object v0, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->b:Lcom/dreamers/bubbletabbar/repack/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/dreamers/bubbletabbar/repack/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/dreamers/bubbletabbar/repack/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/dreamers/bubbletabbar/repack/b;->getId()I

    move-result v1

    iget-object v2, v0, Lcom/dreamers/bubbletabbar/repack/c;->b:Lcom/dreamers/bubbletabbar/repack/b;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/dreamers/bubbletabbar/repack/c;->b:Lcom/dreamers/bubbletabbar/repack/b;

    invoke-static {v2}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/dreamers/bubbletabbar/repack/b;->getId()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p1}, Lcom/dreamers/bubbletabbar/repack/b;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lcom/dreamers/bubbletabbar/repack/b;->setSelected(Z)V

    iget-object v1, v0, Lcom/dreamers/bubbletabbar/repack/c;->b:Lcom/dreamers/bubbletabbar/repack/b;

    invoke-static {v1}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dreamers/bubbletabbar/repack/b;->setSelected(Z)V

    :cond_0
    iput-object p1, v0, Lcom/dreamers/bubbletabbar/repack/c;->b:Lcom/dreamers/bubbletabbar/repack/b;

    iget-object v1, v0, Lcom/dreamers/bubbletabbar/repack/c;->a:Lcom/dreamers/bubbletabbar/repack/f;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/dreamers/bubbletabbar/repack/c;->a:Lcom/dreamers/bubbletabbar/repack/f;

    invoke-static {v0}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/dreamers/bubbletabbar/repack/b;->getId()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/dreamers/bubbletabbar/repack/f;->a(I)V

    :cond_1
    return-void
.end method

.method public final TitleSize(I)V
    .locals 0

    invoke-static {p1}, Lcom/dreamers/bubbletabbar/BubbleTabBar;->b(I)F

    move-result p1

    iput p1, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->h:F

    return-void
.end method

.method public final Typeface(Ljava/lang/String;)V
    .locals 1

    const-string v0, "asset"

    invoke-static {p1, v0}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/dreamers/bubbletabbar/BubbleTabBar;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const-string v0, "DEFAULT"

    invoke-static {p1, v0}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->j:Landroid/graphics/Typeface;

    return-void
.end method

.method public final VerticalPadding(I)V
    .locals 0

    invoke-static {p1}, Lcom/dreamers/bubbletabbar/BubbleTabBar;->a(I)F

    move-result p1

    iput p1, p0, Lcom/dreamers/bubbletabbar/BubbleTabBar;->f:F

    return-void
.end method
