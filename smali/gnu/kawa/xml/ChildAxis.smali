.class public Lgnu/kawa/xml/ChildAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "ChildAxis.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/ChildAxis;
    .locals 1

    .line 13
    new-instance v0, Lgnu/kawa/xml/ChildAxis;

    invoke-direct {v0}, Lgnu/kawa/xml/ChildAxis;-><init>()V

    .line 14
    iput-object p0, v0, Lgnu/kawa/xml/ChildAxis;->type:Lgnu/lists/NodePredicate;

    return-object v0
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .locals 3

    .line 20
    iget-object v0, p0, Lgnu/kawa/xml/ChildAxis;->type:Lgnu/lists/NodePredicate;

    invoke-virtual {p1, p2, v0}, Lgnu/lists/AbstractSequence;->firstChildPos(ILgnu/lists/ItemPredicate;)I

    move-result p2

    :goto_0
    if-eqz p2, :cond_0

    .line 23
    invoke-interface {p3, p1, p2}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 24
    iget-object v0, p0, Lgnu/kawa/xml/ChildAxis;->type:Lgnu/lists/NodePredicate;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Lgnu/lists/AbstractSequence;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result p2

    goto :goto_0

    :cond_0
    return-void
.end method
