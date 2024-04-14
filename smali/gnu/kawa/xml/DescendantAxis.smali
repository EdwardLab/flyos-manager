.class public Lgnu/kawa/xml/DescendantAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "DescendantAxis.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/DescendantAxis;
    .locals 1

    .line 13
    new-instance v0, Lgnu/kawa/xml/DescendantAxis;

    invoke-direct {v0}, Lgnu/kawa/xml/DescendantAxis;-><init>()V

    .line 14
    iput-object p0, v0, Lgnu/kawa/xml/DescendantAxis;->type:Lgnu/lists/NodePredicate;

    return-object v0
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .locals 3

    .line 20
    instance-of v0, p1, Lgnu/lists/TreeList;

    if-nez v0, :cond_2

    .line 22
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result p2

    :goto_0
    if-eqz p2, :cond_1

    .line 25
    iget-object v0, p0, Lgnu/kawa/xml/DescendantAxis;->type:Lgnu/lists/NodePredicate;

    invoke-interface {v0, p1, p2}, Lgnu/lists/NodePredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {p3, p1, p2}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 27
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/xml/DescendantAxis;->scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V

    .line 28
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result p2

    goto :goto_0

    :cond_1
    return-void

    .line 32
    :cond_2
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    .line 36
    :goto_1
    iget-object v1, p0, Lgnu/kawa/xml/DescendantAxis;->type:Lgnu/lists/NodePredicate;

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v1, v0, v2}, Lgnu/lists/AbstractSequence;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result p2

    if-nez p2, :cond_3

    return-void

    .line 39
    :cond_3
    invoke-interface {p3, p1, p2}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_1
.end method
