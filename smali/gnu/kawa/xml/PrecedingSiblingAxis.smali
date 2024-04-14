.class public Lgnu/kawa/xml/PrecedingSiblingAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "PrecedingSiblingAxis.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/PrecedingSiblingAxis;
    .locals 1

    .line 13
    new-instance v0, Lgnu/kawa/xml/PrecedingSiblingAxis;

    invoke-direct {v0}, Lgnu/kawa/xml/PrecedingSiblingAxis;-><init>()V

    .line 14
    iput-object p0, v0, Lgnu/kawa/xml/PrecedingSiblingAxis;->type:Lgnu/lists/NodePredicate;

    return-object v0
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .locals 3

    .line 20
    invoke-virtual {p1}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v0

    .line 21
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->parentPos(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-virtual {p1, v1}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 27
    :cond_1
    iget-object v1, p0, Lgnu/kawa/xml/PrecedingSiblingAxis;->type:Lgnu/lists/NodePredicate;

    invoke-interface {v1, p1, v0}, Lgnu/lists/NodePredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    invoke-interface {p3, p1, v0}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 31
    :cond_2
    :goto_0
    iget-object v1, p0, Lgnu/kawa/xml/PrecedingSiblingAxis;->type:Lgnu/lists/NodePredicate;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p2, v2}, Lgnu/lists/AbstractSequence;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 34
    :cond_3
    invoke-interface {p3, p1, v0}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_0
.end method
