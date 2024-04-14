.class public Lgnu/kawa/xml/DescendantOrSelfAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "DescendantOrSelfAxis.java"


# static fields
.field public static final anyNode:Lgnu/kawa/xml/DescendantOrSelfAxis;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lgnu/kawa/xml/DescendantOrSelfAxis;

    sget-object v1, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-direct {v0, v1}, Lgnu/kawa/xml/DescendantOrSelfAxis;-><init>(Lgnu/lists/NodePredicate;)V

    sput-object v0, Lgnu/kawa/xml/DescendantOrSelfAxis;->anyNode:Lgnu/kawa/xml/DescendantOrSelfAxis;

    return-void
.end method

.method private constructor <init>(Lgnu/lists/NodePredicate;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    .line 16
    iput-object p1, p0, Lgnu/kawa/xml/DescendantOrSelfAxis;->type:Lgnu/lists/NodePredicate;

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/DescendantOrSelfAxis;
    .locals 1

    .line 21
    sget-object v0, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    if-ne p0, v0, :cond_0

    .line 22
    sget-object p0, Lgnu/kawa/xml/DescendantOrSelfAxis;->anyNode:Lgnu/kawa/xml/DescendantOrSelfAxis;

    return-object p0

    .line 23
    :cond_0
    new-instance v0, Lgnu/kawa/xml/DescendantOrSelfAxis;

    invoke-direct {v0, p0}, Lgnu/kawa/xml/DescendantOrSelfAxis;-><init>(Lgnu/lists/NodePredicate;)V

    return-object v0
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .locals 3

    .line 28
    iget-object v0, p0, Lgnu/kawa/xml/DescendantOrSelfAxis;->type:Lgnu/lists/NodePredicate;

    invoke-interface {v0, p1, p2}, Lgnu/lists/NodePredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {p3, p1, p2}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 30
    :cond_0
    instance-of v0, p1, Lgnu/lists/TreeList;

    if-nez v0, :cond_2

    .line 32
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result p2

    :goto_0
    if-eqz p2, :cond_1

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/xml/DescendantOrSelfAxis;->scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V

    .line 36
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result p2

    goto :goto_0

    :cond_1
    return-void

    .line 40
    :cond_2
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    .line 44
    :goto_1
    iget-object v1, p0, Lgnu/kawa/xml/DescendantOrSelfAxis;->type:Lgnu/lists/NodePredicate;

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v1, v0, v2}, Lgnu/lists/AbstractSequence;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result p2

    if-nez p2, :cond_3

    return-void

    .line 47
    :cond_3
    invoke-interface {p3, p1, p2}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_1
.end method
