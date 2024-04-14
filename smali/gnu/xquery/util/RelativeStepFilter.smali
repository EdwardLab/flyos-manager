.class public Lgnu/xquery/util/RelativeStepFilter;
.super Lgnu/lists/FilterConsumer;
.source "RelativeStepFilter.java"

# interfaces
.implements Lgnu/lists/PositionConsumer;


# instance fields
.field seen:C

.field snodes:Lgnu/kawa/xml/SortedNodes;


# direct methods
.method public constructor <init>(Lgnu/lists/Consumer;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    return-void
.end method


# virtual methods
.method protected beforeContent()V
    .locals 2

    .line 48
    iget-char v0, p0, Lgnu/xquery/util/RelativeStepFilter;->seen:C

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_0

    const/16 v0, 0x41

    .line 50
    iput-char v0, p0, Lgnu/xquery/util/RelativeStepFilter;->seen:C

    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "path returns mix of atoms and nodes"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public consume(Lgnu/lists/SeqPosition;)V
    .locals 1

    .line 32
    iget-object v0, p1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget p1, p1, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/util/RelativeStepFilter;->writePosition(Lgnu/lists/AbstractSequence;I)V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 65
    iget-object v0, p0, Lgnu/xquery/util/RelativeStepFilter;->snodes:Lgnu/kawa/xml/SortedNodes;

    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lgnu/xquery/util/RelativeStepFilter;->base:Lgnu/lists/Consumer;

    invoke-virtual {v0, v1}, Lgnu/kawa/xml/SortedNodes;->consume(Lgnu/lists/Consumer;)V

    :cond_0
    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lgnu/xquery/util/RelativeStepFilter;->snodes:Lgnu/kawa/xml/SortedNodes;

    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1

    .line 37
    instance-of v0, p1, Lgnu/lists/SeqPosition;

    if-eqz v0, :cond_0

    .line 39
    check-cast p1, Lgnu/lists/SeqPosition;

    .line 40
    iget-object v0, p1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget p1, p1, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/util/RelativeStepFilter;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-super {p0, p1}, Lgnu/lists/FilterConsumer;->writeObject(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 2

    .line 55
    iget-char v0, p0, Lgnu/xquery/util/RelativeStepFilter;->seen:C

    const/16 v1, 0x41

    if-eq v0, v1, :cond_1

    const/16 v0, 0x4e

    .line 57
    iput-char v0, p0, Lgnu/xquery/util/RelativeStepFilter;->seen:C

    .line 58
    iget-object v0, p0, Lgnu/xquery/util/RelativeStepFilter;->snodes:Lgnu/kawa/xml/SortedNodes;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lgnu/kawa/xml/SortedNodes;

    invoke-direct {v0}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    iput-object v0, p0, Lgnu/xquery/util/RelativeStepFilter;->snodes:Lgnu/kawa/xml/SortedNodes;

    .line 60
    :cond_0
    iget-object v0, p0, Lgnu/xquery/util/RelativeStepFilter;->snodes:Lgnu/kawa/xml/SortedNodes;

    invoke-virtual {v0, p1, p2}, Lgnu/kawa/xml/SortedNodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    return-void

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/Error;

    const-string p2, "path returns mix of atoms and nodes"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method
