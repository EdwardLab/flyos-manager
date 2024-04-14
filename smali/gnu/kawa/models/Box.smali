.class public abstract Lgnu/kawa/models/Box;
.super Lgnu/kawa/models/Model;
.source "Box.java"

# interfaces
.implements Lgnu/kawa/models/Viewable;
.implements Ljava/io/Serializable;


# instance fields
.field cellSpacing:Lgnu/kawa/models/Viewable;

.field components:[Lgnu/kawa/models/Viewable;

.field numComponents:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lgnu/kawa/models/Model;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lgnu/kawa/models/Viewable;)V
    .locals 4

    .line 55
    iget-object v0, p0, Lgnu/kawa/models/Box;->components:[Lgnu/kawa/models/Viewable;

    .line 56
    iget v1, p0, Lgnu/kawa/models/Box;->numComponents:I

    if-nez v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Lgnu/kawa/models/Viewable;

    .line 58
    iput-object v0, p0, Lgnu/kawa/models/Box;->components:[Lgnu/kawa/models/Viewable;

    goto :goto_0

    .line 59
    :cond_0
    array-length v2, v0

    if-gt v2, v1, :cond_1

    mul-int/lit8 v2, v1, 0x2

    .line 61
    new-array v2, v2, [Lgnu/kawa/models/Viewable;

    iput-object v2, p0, Lgnu/kawa/models/Box;->components:[Lgnu/kawa/models/Viewable;

    const/4 v3, 0x0

    .line 62
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    :cond_1
    :goto_0
    iget-object v0, p0, Lgnu/kawa/models/Box;->components:[Lgnu/kawa/models/Viewable;

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 66
    iput v1, p0, Lgnu/kawa/models/Box;->numComponents:I

    return-void
.end method

.method public abstract getAxis()I
.end method

.method public getCellSpacing()Lgnu/kawa/models/Viewable;
    .locals 1

    .line 15
    iget-object v0, p0, Lgnu/kawa/models/Box;->cellSpacing:Lgnu/kawa/models/Viewable;

    return-object v0
.end method

.method public final getComponent(I)Lgnu/kawa/models/Viewable;
    .locals 1

    .line 50
    iget-object v0, p0, Lgnu/kawa/models/Box;->components:[Lgnu/kawa/models/Viewable;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getComponentCount()I
    .locals 1

    .line 45
    iget v0, p0, Lgnu/kawa/models/Box;->numComponents:I

    return v0
.end method

.method public makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V
    .locals 0

    .line 71
    invoke-virtual {p1, p0, p2}, Lgnu/kawa/models/Display;->addBox(Lgnu/kawa/models/Box;Ljava/lang/Object;)V

    return-void
.end method

.method public setCellSpacing(Ljava/lang/Object;)V
    .locals 2

    .line 19
    instance-of v0, p1, Lgnu/math/IntNum;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    check-cast p1, Lgnu/kawa/models/Viewable;

    iput-object p1, p0, Lgnu/kawa/models/Box;->cellSpacing:Lgnu/kawa/models/Viewable;

    goto :goto_2

    .line 22
    :cond_1
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 23
    invoke-virtual {p0}, Lgnu/kawa/models/Box;->getAxis()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, p1, v1}, Ljava/awt/Dimension;-><init>(II)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, v1, p1}, Ljava/awt/Dimension;-><init>(II)V

    .line 25
    :goto_1
    invoke-static {v0}, Lgnu/kawa/models/Spacer;->rigidArea(Ljava/awt/geom/Dimension2D;)Lgnu/kawa/models/Spacer;

    move-result-object p1

    iput-object p1, p0, Lgnu/kawa/models/Box;->cellSpacing:Lgnu/kawa/models/Viewable;

    :goto_2
    return-void
.end method
