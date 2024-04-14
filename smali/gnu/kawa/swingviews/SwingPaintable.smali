.class public Lgnu/kawa/swingviews/SwingPaintable;
.super Ljavax/swing/JPanel;
.source "SwingPaintable.java"


# instance fields
.field dim:Ljava/awt/Dimension;

.field paintable:Lgnu/kawa/models/Paintable;


# direct methods
.method public constructor <init>(Lgnu/kawa/models/Paintable;)V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljavax/swing/JPanel;-><init>()V

    .line 16
    iput-object p1, p0, Lgnu/kawa/swingviews/SwingPaintable;->paintable:Lgnu/kawa/models/Paintable;

    .line 18
    invoke-interface {p1}, Lgnu/kawa/models/Paintable;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 20
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    .line 21
    new-instance v1, Ljava/awt/Dimension;

    invoke-direct {v1, p1, v0}, Ljava/awt/Dimension;-><init>(II)V

    iput-object v1, p0, Lgnu/kawa/swingviews/SwingPaintable;->dim:Ljava/awt/Dimension;

    return-void
.end method


# virtual methods
.method public getPreferredSize()Ljava/awt/Dimension;
    .locals 1

    .line 32
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingPaintable;->dim:Ljava/awt/Dimension;

    return-object v0
.end method

.method public paint(Ljava/awt/Graphics;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingPaintable;->paintable:Lgnu/kawa/models/Paintable;

    check-cast p1, Ljava/awt/Graphics2D;

    invoke-interface {v0, p1}, Lgnu/kawa/models/Paintable;->paint(Ljava/awt/Graphics2D;)V

    return-void
.end method
