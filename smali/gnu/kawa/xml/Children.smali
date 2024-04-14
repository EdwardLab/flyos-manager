.class public Lgnu/kawa/xml/Children;
.super Lgnu/mapping/MethodProc;
.source "Children.java"


# static fields
.field public static final children:Lgnu/kawa/xml/Children;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lgnu/kawa/xml/Children;

    invoke-direct {v0}, Lgnu/kawa/xml/Children;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Children;->children:Lgnu/kawa/xml/Children;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method

.method public static children(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V
    .locals 4

    .line 16
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->gotoChildrenStart(I)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result p1

    :goto_0
    shl-int/lit8 v1, v0, 0x1

    .line 24
    invoke-virtual {p0, v0, p1}, Lgnu/lists/TreeList;->nextNodeIndex(II)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 28
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v2

    :cond_1
    if-gez v2, :cond_2

    return-void

    .line 31
    :cond_2
    instance-of v3, p2, Lgnu/lists/PositionConsumer;

    if-eqz v3, :cond_3

    .line 32
    move-object v0, p2

    check-cast v0, Lgnu/lists/PositionConsumer;

    invoke-interface {v0, p0, v1}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_1

    .line 34
    :cond_3
    invoke-virtual {p0, v0, v2, p2}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    :goto_1
    move v0, v2

    goto :goto_0
.end method

.method public static children(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 1

    .line 41
    instance-of v0, p0, Lgnu/lists/TreeList;

    if-eqz v0, :cond_0

    .line 43
    check-cast p0, Lgnu/lists/TreeList;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lgnu/kawa/xml/Children;->children(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    goto :goto_0

    .line 45
    :cond_0
    instance-of v0, p0, Lgnu/lists/SeqPosition;

    if-eqz v0, :cond_1

    instance-of v0, p0, Lgnu/lists/TreePosition;

    if-nez v0, :cond_1

    .line 47
    check-cast p0, Lgnu/lists/SeqPosition;

    .line 48
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    instance-of v0, v0, Lgnu/lists/TreeList;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/lists/TreeList;

    iget p0, p0, Lgnu/lists/SeqPosition;->ipos:I

    shr-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0, p1}, Lgnu/kawa/xml/Children;->children(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 5

    .line 55
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 56
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    .line 58
    instance-of p1, v1, Lgnu/mapping/Values;

    if-eqz p1, :cond_2

    .line 60
    move-object p1, v1

    check-cast p1, Lgnu/lists/TreeList;

    const/4 v1, 0x0

    :goto_0
    shl-int/lit8 v2, v1, 0x1

    .line 64
    invoke-virtual {p1, v2}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    .line 68
    invoke-virtual {p1, v2}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lgnu/kawa/xml/Children;->children(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_1

    .line 70
    :cond_1
    invoke-static {p1, v1, v0}, Lgnu/kawa/xml/Children;->children(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    .line 71
    :goto_1
    invoke-virtual {p1, v1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v1

    goto :goto_0

    .line 75
    :cond_2
    invoke-static {v1, v0}, Lgnu/kawa/xml/Children;->children(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    :goto_2
    return-void
.end method

.method public numArgs()I
    .locals 1

    const/16 v0, 0x1001

    return v0
.end method
