.class public final Lcom/google/appinventor/components/runtime/Canvas;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A two-dimensional touch-sensitive rectangular panel on which drawing can be done and sprites can be moved.</p> <p>The <code>BackgroundColor</code>, <code>PaintColor</code>, <code>BackgroundImage</code>, <code>Width</code>, and <code>Height</code> of the Canvas can be set in either the Designer or in the Blocks Editor.  The <code>Width</code> and <code>Height</code> are measured in pixels and must be positive.</p><p>Any location on the Canvas can be specified as a pair of (X, Y) values, where <ul> <li>X is the number of pixels away from the left edge of the Canvas</li><li>Y is the number of pixels away from the top edge of the Canvas</li></ul>.</p> <p>There are events to tell when and where a Canvas has been touched or a <code>Sprite</code> (<code>ImageSprite</code> or <code>Ball</code>) has been dragged.  There are also methods for drawing points, lines, and circles.</p>"
    version = 0xf
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Canvas$a;,
        Lcom/google/appinventor/components/runtime/Canvas$CanvasView;,
        Lcom/google/appinventor/components/runtime/Canvas$b;,
        Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;
    }
.end annotation


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;",
            ">;"
        }
    .end annotation
.end field

.field private PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

.field private backgroundColor:I

.field private backgroundImagePath:Ljava/lang/String;

.field private f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Z

.field private fontTypeface:I

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private havePermission:Z

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/GestureDetector;

.field final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$b;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/PolyUtil;

.field private mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

.field private sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Z

.field private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:I

.field private final vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .line 726
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->fontTypeface:I

    const-string v1, ""

    .line 136
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;

    .line 138
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Z

    .line 163
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/Set;

    .line 165
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 168
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->havePermission:Z

    .line 727
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    .line 730
    new-instance v1, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;-><init>(Lcom/google/appinventor/components/runtime/Canvas;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    .line 731
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 733
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    const/4 v2, 0x1

    .line 734
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFlags(I)V

    const/high16 v3, 0x40000000    # 2.0f

    .line 737
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v3, -0x1000000

    .line 738
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Canvas;->PaintColor(I)V

    const/4 v3, -0x1

    .line 739
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Canvas;->BackgroundColor(I)V

    .line 740
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Canvas;->TextAlignment(I)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 741
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Canvas;->FontSize(F)V

    .line 742
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 743
    iget p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    invoke-static {v1, p1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypefaceCanvas(Landroid/graphics/Paint;IZZ)V

    .line 745
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/List;

    .line 746
    new-instance p1, Lcom/google/appinventor/components/runtime/Canvas$b;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/Canvas$b;-><init>(Lcom/google/appinventor/components/runtime/Canvas;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$b;

    .line 747
    new-instance p1, Landroid/view/GestureDetector;

    new-instance v1, Lcom/google/appinventor/components/runtime/Canvas$a;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Canvas$a;-><init>(Lcom/google/appinventor/components/runtime/Canvas;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/GestureDetector;

    .line 748
    new-instance p1, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;-><init>(Lcom/google/appinventor/components/runtime/Canvas;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;

    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Canvas;)Z
    .locals 1

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Z

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)I
    .locals 0

    .line 111
    iget p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundColor:I

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;I)I
    .locals 0

    .line 111
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundColor:I

    return p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/graphics/Paint;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/view/GestureDetector;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$CanvasView;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$b;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$b;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;

    return-object p1
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ScopedFile;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1624
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->havePermission:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsWritePermission(Lcom/google/appinventor/components/runtime/util/ScopedFile;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1625
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance p2, Lcom/google/appinventor/components/runtime/Canvas$1;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/Canvas$1;-><init>(Lcom/google/appinventor/components/runtime/Canvas;)V

    const-string p3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, p3, p2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 1631
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    invoke-direct {p1}, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;-><init>()V

    throw p1

    .line 1634
    :cond_1
    :goto_0
    new-instance v8, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v8}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 1635
    new-instance v9, Lcom/google/appinventor/components/runtime/Canvas$2;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v0, v9

    move-object v1, p0

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/Canvas$2;-><init>(Lcom/google/appinventor/components/runtime/Canvas;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/ScopedFile;Lcom/google/appinventor/components/runtime/util/Synchronizer;Landroid/graphics/Bitmap$CompressFormat;)V

    .line 1642
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/Canvas$2;->run()V

    .line 1644
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/FileNotFoundException;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 1645
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    const/16 v2, 0x2c3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 1647
    invoke-static {v3, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 1645
    invoke-virtual {p2, p0, p3, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1648
    :cond_2
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_3

    .line 1649
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/16 p2, 0x2c4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1650
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1649
    invoke-virtual {p1, p0, p3, p2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1651
    :cond_3
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    if-eqz p2, :cond_4

    .line 1652
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    .line 1653
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    .line 1652
    invoke-virtual {p1, p0, p3, p2}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    goto :goto_1

    .line 1654
    :cond_4
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;

    if-eqz p2, :cond_5

    .line 1655
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    .line 1656
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result p2

    new-array v0, v1, [Ljava/lang/Object;

    .line 1655
    invoke-virtual {p1, p0, p3, p2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1657
    :cond_5
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1658
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    const-string p1, ""

    return-object p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/List;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/Set;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Z

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;Z)Z
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->havePermission:Z

    return p1
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;)[[F
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 1420
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1423
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v4, 0x0

    aput v0, v2, v4

    const-class v0, F

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 1426
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    array-length v2, p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    aget-object v7, p0, v5

    .line 1427
    instance-of v8, v7, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v8, :cond_1

    .line 1428
    check-cast v7, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1429
    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v8

    if-ne v8, v1, :cond_0

    .line 1431
    :try_start_0
    aget-object v8, v0, v6

    invoke-virtual {v7, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v8, v4

    .line 1432
    aget-object v8, v0, v6

    invoke-virtual {v7, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v8, v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1435
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1438
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "length of item YailList("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is not 2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1441
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "item("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") in YailList is not a YailList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object v0

    .line 1421
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1

    .line 851
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Canvas.$add() called"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final $context()Landroid/app/Activity;
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    return-object v0
.end method

.method public final $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the canvas background."
    .end annotation

    .line 987
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundColor:I

    return v0
.end method

.method public final BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1003
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackgroundColor(I)V

    return-void
.end method

.method public final BackgroundImage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The name of a file containing the background image for the canvas"
    .end annotation

    .line 1015
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public final BackgroundImage(Ljava/lang/String;)V
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
    .end annotation

    .line 1027
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;)V

    return-void
.end method

.method public final Clear()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears anything drawn on this Canvas but not any background color or image."
    .end annotation

    .line 1320
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)V

    return-void
.end method

.method public final Dragged(FFFFFFZ)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 1307
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 1308
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v0, p2

    const-string p1, "Dragged"

    .line 1307
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final DrawArc(IIIIFFZZ)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw an arc on Canvas, by drawing an arc from a specified oval (specified by left, top, right & bottom). Start angle is 0 when heading to the right, and increase when rotate clockwise. When useCenter is true, a sector will be drawed instead of an arc. When fill is true, a filled arc (or sector) will be drawed instead of just an outline."
    .end annotation

    .line 1469
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    .line 1470
    new-instance v6, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    invoke-direct {v6, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    if-eqz p8, :cond_0

    .line 1471
    sget-object p8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object p8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v6, p8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1472
    iget-object p8, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {p8}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    int-to-float p1, p1

    mul-float p1, p1, v0

    int-to-float p2, p2

    mul-float p2, p2, v0

    int-to-float p3, p3

    mul-float p3, p3, v0

    int-to-float p4, p4

    mul-float v0, v0, p4

    invoke-direct {v2, p1, p2, p3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1476
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    return-void
.end method

.method public final DrawCircle(IIFZ)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    int-to-float p1, p1

    .line 1347
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float p1, p1, v0

    int-to-float p2, p2

    .line 1348
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float p2, p2, v0

    .line 1349
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float p3, p3, v0

    .line 1350
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    if-eqz p4, :cond_0

    .line 1351
    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object p4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1352
    iget-object p4, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {p4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1353
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    return-void
.end method

.method public final DrawLine(IIII)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    int-to-float p1, p1

    .line 1366
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float v2, p1, v0

    int-to-float p1, p2

    .line 1367
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result p2

    mul-float v3, p1, p2

    int-to-float p1, p3

    .line 1368
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result p2

    mul-float v4, p1, p2

    int-to-float p1, p4

    .line 1369
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result p2

    mul-float v5, p1, p2

    .line 1370
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v1

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1371
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    return-void
.end method

.method public final DrawPoint(II)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    int-to-float p1, p1

    .line 1331
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float p1, p1, v0

    int-to-float p2, p2

    .line 1332
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float p2, p2, v0

    .line 1333
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 1334
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    return-void
.end method

.method public final DrawPolygon(FFIFFFZZ)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Creates a polygon with with specified number of sides from a radius."
    .end annotation

    move-object v0, p0

    .line 1704
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/PolyUtil;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/appinventor/components/runtime/util/PolyUtil;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/PolyUtil;-><init>()V

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/PolyUtil;

    :cond_0
    if-eqz p8, :cond_1

    .line 1707
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)V

    .line 1709
    :cond_1
    new-instance v10, Landroid/graphics/Paint;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    invoke-direct {v10, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    if-eqz p7, :cond_2

    .line 1710
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1712
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/PolyUtil;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    .line 1713
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v3

    .line 1715
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    mul-float v5, p1, v1

    .line 1716
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    mul-float v6, p2, v1

    .line 1717
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    mul-float v7, p4, v1

    .line 1718
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    mul-float v8, p5, v1

    move v4, p3

    move/from16 v9, p6

    .line 1712
    invoke-virtual/range {v2 .. v10}, Lcom/google/appinventor/components/runtime/util/PolyUtil;->drawPolygon(Landroid/graphics/Canvas;IFFFFFLandroid/graphics/Paint;)V

    .line 1722
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    return-void
.end method

.method public final DrawShape(Lcom/google/appinventor/components/runtime/util/YailList;Z)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draws a shape on the canvas. pointList should be a list contains sub-lists with two number which represents a coordinate. The first point and last point does not need to be the same. e.g. ((x1 y1) (x2 y2) (x3 y3)) When fill is true, the shape will be filled."
    .end annotation

    const/4 v0, 0x0

    .line 1392
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;)[[F

    move-result-object p1

    .line 2405
    array-length v1, p1

    if-eqz v1, :cond_2

    .line 2408
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    .line 2410
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 2411
    aget-object v3, p1, v0

    aget v4, v3, v0

    mul-float v4, v4, v1

    const/4 v5, 0x1

    aget v3, v3, v5

    mul-float v3, v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v3, 0x1

    .line 2412
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 2413
    aget-object v4, p1, v3

    aget v6, v4, v0

    mul-float v6, v6, v1

    aget v4, v4, v5

    mul-float v4, v4, v1

    invoke-virtual {v2, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1397
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 1398
    new-instance p1, Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    if-eqz p2, :cond_1

    .line 1399
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_1

    :cond_1
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_1
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1400
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object p2

    invoke-virtual {p2, v2, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1401
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    return-void

    .line 2406
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1394
    :catch_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/16 p2, 0x3ec

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DrawShape"

    invoke-virtual {p1, p0, v1, p2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public final DrawText(Ljava/lang/String;II)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draws the specified text relative to the specified coordinates using the values of the FontSize and TextAlignment properties."
    .end annotation

    .line 1492
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    int-to-float p2, p2

    mul-float p2, p2, v0

    int-to-float p3, p3

    mul-float p3, p3, v0

    .line 1495
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1496
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    return-void
.end method

.method public final DrawTextAtAngle(Ljava/lang/String;IIF)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draws the specified text starting at the specified coordinates at the specified angle using the values of the FontSize and TextAlignment properties."
    .end annotation

    int-to-float p2, p2

    .line 1512
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    int-to-float p3, p3

    .line 1513
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float p3, p3, v0

    float-to-int p3, p3

    .line 1514
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;Ljava/lang/String;IIF)V

    return-void
.end method

.method public final ExtendMovesOutsideCanvas(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .line 1216
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Z

    return-void
.end method

.method public final ExtendMovesOutsideCanvas()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines whether moves can extend beyond the canvas borders.   Default is false. This should normally be false, and the property is provided for backwards compatibility."
        userVisible = true
    .end annotation

    .line 1210
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Z

    return v0
.end method

.method public final Flung(FFFFFFZ)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 1284
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v0, p2

    const-string p1, "Flung"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final FontBold(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 1113
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    .line 1114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypefaceCanvas(Landroid/graphics/Paint;IZZ)V

    return-void
.end method

.method public final FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 1119
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    return v0
.end method

.method public final FontItalic(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 1125
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    .line 1126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypefaceCanvas(Landroid/graphics/Paint;IZZ)V

    return-void
.end method

.method public final FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 1131
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    return v0
.end method

.method public final FontSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The font size of text drawn on the canvas."
    .end annotation

    .line 1078
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    .line 1079
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    div-float/2addr v1, v0

    return v1
.end method

.method public final FontSize(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1085
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    .line 1086
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    mul-float p1, p1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public final FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 1107
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->fontTypeface:I

    return v0
.end method

.method public final FontTypeface(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 1102
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->fontTypeface:I

    return-void
.end method

.method public final FontTypefaceImport(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font."
    .end annotation

    if-eqz p1, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypefaceCanvas(Lcom/google/appinventor/components/runtime/Form;Landroid/graphics/Paint;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public final GetBackgroundPixelColor(II)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the color of the specified point. This includes the background and any drawn points, lines, or circles but not sprites."
    .end annotation

    int-to-float p1, p1

    .line 1529
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-float p2, p2

    .line 1530
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 1531
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I

    move-result p1

    return p1
.end method

.method public final GetPixelColor(II)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the color of the specified point."
    .end annotation

    int-to-float p1, p1

    .line 1563
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-float p2, p2

    .line 1564
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 1565
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I

    move-result p1

    return p1
.end method

.method public final Height(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-gtz p1, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/16 v0, -0x3e8

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 969
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/16 v0, 0x3eb

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Height"

    invoke-virtual {p1, p0, v2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 966
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public final Initialize()V
    .locals 3

    .line 752
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsWritePermission(Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->havePermission:Z

    return-void

    .line 755
    :cond_0
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->havePermission:Z

    return-void
.end method

.method public final LineWidth()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The width of lines drawn on the canvas."
    .end annotation

    .line 1140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final LineWidth(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public final PaintColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color in which lines are drawn"
    .end annotation

    .line 1042
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:I

    return v0
.end method

.method public final PaintColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1057
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:I

    .line 1058
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    if-eqz p1, :cond_1

    const v1, 0xffffff

    if-eq p1, v1, :cond_0

    .line 2071
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    return-void

    .line 2068
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaintTransparent(Landroid/graphics/Paint;)V

    return-void

    :cond_1
    const/high16 p1, -0x1000000

    .line 2065
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    return-void
.end method

.method public final Save()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves a picture of this Canvas to the device\'s external storage. If an error occurs, the Screen\'s ErrorOccurred event will be called."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.WRITE_EXTERNAL_STORAGE"
        }
    .end annotation

    .line 1580
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "png"

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getScopedPictureFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/ScopedFile;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v2, "Save"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ScopedFile;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final SaveAs(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves a picture of this Canvas to the device\'s external storage in the file named fileName. fileName must end with one of .jpg, .jpeg, or .png, which determines the file type."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.WRITE_EXTERNAL_STORAGE"
        }
    .end annotation

    const-string v0, ".jpg"

    .line 1600
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "SaveAs"

    if-nez v0, :cond_3

    const-string v0, ".jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ".png"

    .line 1602
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1603
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    :cond_1
    const-string v2, "."

    .line 1604
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1606
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    .line 1608
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/16 v0, 0x2c2

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1, v0, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const-string p1, ""

    return-object p1

    .line 1601
    :cond_3
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 1612
    :goto_1
    new-instance v2, Lcom/google/appinventor/components/runtime/util/ScopedFile;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;-><init>(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)V

    invoke-direct {p0, v2, v0, v1}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ScopedFile;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final Scale(D)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is invoked when two-finger pinches. ScaleFactor is the ratio of the average distance between two-fingers from current and previous scale event."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1618
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "Scale"

    .line 1619
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final SetBackgroundPixelColor(III)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the color of the specified point. This differs from DrawPoint by having an argument for color."
    .end annotation

    .line 1545
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1546
    invoke-static {v0, p3}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    int-to-float p1, p1

    .line 1547
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result p3

    mul-float p1, p1, p3

    float-to-int p1, p1

    int-to-float p2, p2

    .line 1548
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result p3

    mul-float p2, p2, p3

    float-to-int p2, p2

    .line 1549
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object p3

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p3, p1, p2, v0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 1550
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    return-void
.end method

.method public final TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the alignment of the text drawn by DrawText() or DrawAngle() with respect to the point specified by that command: point at the left of the text, point at the center of the text, or point at the right of the text."
        userVisible = true
    .end annotation

    .line 1172
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

    return v0
.end method

.method public final TextAlignment(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .line 1189
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1198
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :goto_0
    return-void

    .line 1195
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void

    .line 1192
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method public final TouchDown(FF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1247
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "TouchDown"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final TouchUp(FF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1260
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "TouchUp"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final Touched(FFZ)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1234
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "Touched"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final Width(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-gtz p1, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/16 v0, -0x3e8

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 946
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/16 v0, 0x3ea

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Width"

    invoke-virtual {p1, p0, v2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 943
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method protected final findSpriteCollisions(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 3

    .line 896
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Sprite;

    if-eq v1, p1, :cond_0

    .line 899
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/Sprite;->CollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 901
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 902
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 903
    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->colliding(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 904
    :cond_1
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/Sprite;->NoLongerCollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 905
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->NoLongerCollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    goto :goto_0

    .line 911
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 912
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 913
    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->colliding(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 915
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/Sprite;->CollidedWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 916
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->CollidedWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final getContext()Landroid/app/Activity;
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    return-object v0
.end method

.method final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 6

    const/4 v0, 0x0

    .line 807
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 808
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Sprite;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Z()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Z()D

    move-result-wide v3

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    .line 809
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 815
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ready()Z
    .locals 1

    .line 789
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Z

    return v0
.end method

.method public final registerCustomGestureDetector(Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;)V
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeCustomGestureDetector(Ljava/lang/Object;)V
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 0

    .line 861
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Canvas.setChildHeight() called"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 0

    .line 856
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Canvas.setChildWidth() called"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 874
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->findSpriteCollisions(Lcom/google/appinventor/components/runtime/Sprite;)V

    return-void
.end method
