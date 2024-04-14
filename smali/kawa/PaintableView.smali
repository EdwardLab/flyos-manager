.class Lkawa/PaintableView;
.super Ljavax/swing/text/View;
.source "ReplPane.java"


# instance fields
.field bounds:Ljava/awt/geom/Rectangle2D;

.field p:Lgnu/kawa/models/Paintable;


# direct methods
.method public constructor <init>(Ljavax/swing/text/Element;Lgnu/kawa/models/Paintable;)V
    .locals 0

    .line 238
    invoke-direct {p0, p1}, Ljavax/swing/text/View;-><init>(Ljavax/swing/text/Element;)V

    .line 239
    iput-object p2, p0, Lkawa/PaintableView;->p:Lgnu/kawa/models/Paintable;

    .line 240
    invoke-interface {p2}, Lgnu/kawa/models/Paintable;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    iput-object p1, p0, Lkawa/PaintableView;->bounds:Ljava/awt/geom/Rectangle2D;

    return-void
.end method


# virtual methods
.method public getAlignment(I)F
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 269
    invoke-super {p0, p1}, Ljavax/swing/text/View;->getAlignment(I)F

    move-result p1

    return p1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getPreferredSpan(I)F
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 278
    iget-object p1, p0, Lkawa/PaintableView;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v0

    :goto_0
    double-to-float p1, v0

    return p1

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid axis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_1
    iget-object p1, p0, Lkawa/PaintableView;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v0

    goto :goto_0
.end method

.method public modelToView(ILjava/awt/Shape;Ljavax/swing/text/Position$Bias;)Ljava/awt/Shape;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Lkawa/PaintableView;->getStartOffset()I

    move-result p3

    .line 286
    invoke-virtual {p0}, Lkawa/PaintableView;->getEndOffset()I

    move-result v0

    if-lt p1, p3, :cond_1

    if-gt p1, v0, :cond_1

    .line 288
    invoke-interface {p2}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object p2

    if-ne p1, v0, :cond_0

    .line 290
    iget p1, p2, Ljava/awt/Rectangle;->x:I

    iget p3, p2, Ljava/awt/Rectangle;->width:I

    add-int/2addr p1, p3

    iput p1, p2, Ljava/awt/Rectangle;->x:I

    :cond_0
    const/4 p1, 0x0

    .line 292
    iput p1, p2, Ljava/awt/Rectangle;->width:I

    return-object p2

    .line 295
    :cond_1
    new-instance p2, Ljavax/swing/text/BadLocationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not in range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljavax/swing/text/BadLocationException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public paint(Ljava/awt/Graphics;Ljava/awt/Shape;)V
    .locals 3

    .line 245
    check-cast p1, Ljava/awt/Graphics2D;

    .line 246
    invoke-interface {p2}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object p2

    .line 247
    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    .line 248
    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getPaint()Ljava/awt/Paint;

    move-result-object v1

    .line 251
    :try_start_0
    iget v2, p2, Ljava/awt/Rectangle;->x:I

    iget p2, p2, Ljava/awt/Rectangle;->y:I

    invoke-virtual {p1, v2, p2}, Ljava/awt/Graphics2D;->translate(II)V

    .line 252
    sget-object p2, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 253
    iget-object p2, p0, Lkawa/PaintableView;->p:Lgnu/kawa/models/Paintable;

    invoke-interface {p2, p1}, Lgnu/kawa/models/Paintable;->paint(Ljava/awt/Graphics2D;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 258
    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    return-void

    :catchall_0
    move-exception p2

    .line 257
    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 258
    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    throw p2
.end method

.method public viewToModel(FFLjava/awt/Shape;[Ljavax/swing/text/Position$Bias;)I
    .locals 0

    .line 299
    check-cast p3, Ljava/awt/Rectangle;

    .line 300
    iget p2, p3, Ljava/awt/Rectangle;->x:I

    iget p3, p3, Ljava/awt/Rectangle;->width:I

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    int-to-float p2, p2

    const/4 p3, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    .line 301
    sget-object p1, Ljavax/swing/text/Position$Bias;->Forward:Ljavax/swing/text/Position$Bias;

    aput-object p1, p4, p3

    .line 302
    invoke-virtual {p0}, Lkawa/PaintableView;->getStartOffset()I

    move-result p1

    return p1

    .line 304
    :cond_0
    sget-object p1, Ljavax/swing/text/Position$Bias;->Backward:Ljavax/swing/text/Position$Bias;

    aput-object p1, p4, p3

    .line 305
    invoke-virtual {p0}, Lkawa/PaintableView;->getEndOffset()I

    move-result p1

    return p1
.end method
