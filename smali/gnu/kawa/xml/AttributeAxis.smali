.class public Lgnu/kawa/xml/AttributeAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "AttributeAxis.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/AttributeAxis;
    .locals 1

    .line 13
    new-instance v0, Lgnu/kawa/xml/AttributeAxis;

    invoke-direct {v0}, Lgnu/kawa/xml/AttributeAxis;-><init>()V

    .line 14
    iput-object p0, v0, Lgnu/kawa/xml/AttributeAxis;->type:Lgnu/lists/NodePredicate;

    return-object v0
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .locals 2

    .line 20
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->firstAttributePos(I)I

    move-result p2

    :goto_0
    if-eqz p2, :cond_2

    .line 21
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    .line 23
    iget-object v0, p0, Lgnu/kawa/xml/AttributeAxis;->type:Lgnu/lists/NodePredicate;

    invoke-interface {v0, p1, p2}, Lgnu/lists/NodePredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {p3, p1, p2}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    goto :goto_2

    .line 27
    :cond_1
    :goto_1
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result p2

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
