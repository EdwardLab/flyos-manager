.class public Lgnu/kawa/xml/AncestorAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "AncestorAxis.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/AncestorAxis;
    .locals 1

    .line 13
    new-instance v0, Lgnu/kawa/xml/AncestorAxis;

    invoke-direct {v0}, Lgnu/kawa/xml/AncestorAxis;-><init>()V

    .line 14
    iput-object p0, v0, Lgnu/kawa/xml/AncestorAxis;->type:Lgnu/lists/NodePredicate;

    return-object v0
.end method

.method private static scan(Lgnu/lists/AbstractSequence;IILgnu/lists/NodePredicate;Lgnu/lists/PositionConsumer;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->parentPos(I)I

    move-result p1

    if-eq p1, p2, :cond_0

    .line 24
    invoke-static {p0, p1, p2, p3, p4}, Lgnu/kawa/xml/AncestorAxis;->scan(Lgnu/lists/AbstractSequence;IILgnu/lists/NodePredicate;Lgnu/lists/PositionConsumer;)V

    .line 25
    invoke-interface {p3, p0, p1}, Lgnu/lists/NodePredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 26
    invoke-interface {p4, p0, p1}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .locals 2

    .line 32
    invoke-virtual {p1}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v0

    iget-object v1, p0, Lgnu/kawa/xml/AncestorAxis;->type:Lgnu/lists/NodePredicate;

    invoke-static {p1, p2, v0, v1, p3}, Lgnu/kawa/xml/AncestorAxis;->scan(Lgnu/lists/AbstractSequence;IILgnu/lists/NodePredicate;Lgnu/lists/PositionConsumer;)V

    return-void
.end method
