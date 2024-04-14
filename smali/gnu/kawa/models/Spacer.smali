.class public Lgnu/kawa/models/Spacer;
.super Lgnu/kawa/models/Model;
.source "Spacer.java"

# interfaces
.implements Lgnu/kawa/models/Viewable;
.implements Ljava/io/Serializable;


# instance fields
.field maxSize:Ljava/awt/geom/Dimension2D;

.field minSize:Ljava/awt/geom/Dimension2D;

.field preferredSize:Ljava/awt/geom/Dimension2D;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lgnu/kawa/models/Model;-><init>()V

    return-void
.end method

.method public static rigidArea(II)Lgnu/kawa/models/Spacer;
    .locals 1

    .line 50
    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, p0, p1}, Ljava/awt/Dimension;-><init>(II)V

    invoke-static {v0}, Lgnu/kawa/models/Spacer;->rigidArea(Ljava/awt/geom/Dimension2D;)Lgnu/kawa/models/Spacer;

    move-result-object p0

    return-object p0
.end method

.method public static rigidArea(Ljava/awt/geom/Dimension2D;)Lgnu/kawa/models/Spacer;
    .locals 1

    .line 41
    new-instance v0, Lgnu/kawa/models/Spacer;

    invoke-direct {v0}, Lgnu/kawa/models/Spacer;-><init>()V

    .line 42
    iput-object p0, v0, Lgnu/kawa/models/Spacer;->minSize:Ljava/awt/geom/Dimension2D;

    .line 43
    iput-object p0, v0, Lgnu/kawa/models/Spacer;->maxSize:Ljava/awt/geom/Dimension2D;

    .line 44
    iput-object p0, v0, Lgnu/kawa/models/Spacer;->preferredSize:Ljava/awt/geom/Dimension2D;

    return-object v0
.end method


# virtual methods
.method public getMaximumSize()Ljava/awt/Dimension;
    .locals 1

    .line 26
    iget-object v0, p0, Lgnu/kawa/models/Spacer;->maxSize:Ljava/awt/geom/Dimension2D;

    invoke-static {v0}, Lgnu/kawa/models/Display;->asDimension(Ljava/awt/geom/Dimension2D;)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumSize2D()Ljava/awt/geom/Dimension2D;
    .locals 1

    .line 19
    iget-object v0, p0, Lgnu/kawa/models/Spacer;->maxSize:Ljava/awt/geom/Dimension2D;

    return-object v0
.end method

.method public getMinimumSize()Ljava/awt/Dimension;
    .locals 1

    .line 22
    iget-object v0, p0, Lgnu/kawa/models/Spacer;->minSize:Ljava/awt/geom/Dimension2D;

    invoke-static {v0}, Lgnu/kawa/models/Display;->asDimension(Ljava/awt/geom/Dimension2D;)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumSize2D()Ljava/awt/geom/Dimension2D;
    .locals 1

    .line 15
    iget-object v0, p0, Lgnu/kawa/models/Spacer;->minSize:Ljava/awt/geom/Dimension2D;

    return-object v0
.end method

.method public getPreferredSize()Ljava/awt/Dimension;
    .locals 1

    .line 24
    iget-object v0, p0, Lgnu/kawa/models/Spacer;->preferredSize:Ljava/awt/geom/Dimension2D;

    invoke-static {v0}, Lgnu/kawa/models/Display;->asDimension(Ljava/awt/geom/Dimension2D;)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredSize2D()Ljava/awt/geom/Dimension2D;
    .locals 1

    .line 17
    iget-object v0, p0, Lgnu/kawa/models/Spacer;->preferredSize:Ljava/awt/geom/Dimension2D;

    return-object v0
.end method

.method public isRigid()Z
    .locals 6

    .line 30
    iget-object v0, p0, Lgnu/kawa/models/Spacer;->minSize:Ljava/awt/geom/Dimension2D;

    iget-object v1, p0, Lgnu/kawa/models/Spacer;->maxSize:Ljava/awt/geom/Dimension2D;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 32
    invoke-virtual {v0}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v0

    iget-object v3, p0, Lgnu/kawa/models/Spacer;->maxSize:Ljava/awt/geom/Dimension2D;

    invoke-virtual {v3}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v3

    cmpl-double v5, v0, v3

    if-nez v5, :cond_1

    iget-object v0, p0, Lgnu/kawa/models/Spacer;->minSize:Ljava/awt/geom/Dimension2D;

    invoke-virtual {v0}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v0

    iget-object v3, p0, Lgnu/kawa/models/Spacer;->maxSize:Ljava/awt/geom/Dimension2D;

    invoke-virtual {v3}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v3

    cmpl-double v5, v0, v3

    if-nez v5, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V
    .locals 0

    .line 55
    invoke-virtual {p1, p0, p2}, Lgnu/kawa/models/Display;->addSpacer(Lgnu/kawa/models/Spacer;Ljava/lang/Object;)V

    return-void
.end method
