.class public Lgnu/kawa/xml/Attributes;
.super Lgnu/mapping/MethodProc;
.source "Attributes.java"


# static fields
.field public static final attributes:Lgnu/kawa/xml/Attributes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lgnu/kawa/xml/Attributes;

    invoke-direct {v0}, Lgnu/kawa/xml/Attributes;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Attributes;->attributes:Lgnu/kawa/xml/Attributes;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method

.method public static attributes(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V
    .locals 3

    .line 16
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->gotoAttributesStart(I)I

    move-result p1

    .line 17
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attributes called, at:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgnu/lists/TreeList;->dump()V

    :goto_0
    if-ltz p1, :cond_2

    shl-int/lit8 v0, p1, 0x1

    .line 21
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 25
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v1

    .line 26
    instance-of v2, p2, Lgnu/lists/PositionConsumer;

    if-eqz v2, :cond_1

    .line 27
    move-object p1, p2

    check-cast p1, Lgnu/lists/PositionConsumer;

    invoke-interface {p1, p0, v0}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p0, p1, v1, p2}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    :goto_1
    move p1, v1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public static attributes(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 1

    .line 36
    instance-of v0, p0, Lgnu/lists/TreeList;

    if-eqz v0, :cond_0

    .line 38
    check-cast p0, Lgnu/lists/TreeList;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lgnu/kawa/xml/Attributes;->attributes(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    goto :goto_0

    .line 40
    :cond_0
    instance-of v0, p0, Lgnu/lists/SeqPosition;

    if-eqz v0, :cond_1

    instance-of v0, p0, Lgnu/lists/TreePosition;

    if-nez v0, :cond_1

    .line 42
    check-cast p0, Lgnu/lists/SeqPosition;

    .line 43
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    instance-of v0, v0, Lgnu/lists/TreeList;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/lists/TreeList;

    iget p0, p0, Lgnu/lists/SeqPosition;->ipos:I

    shr-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0, p1}, Lgnu/kawa/xml/Attributes;->attributes(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 5

    .line 50
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 51
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    .line 53
    instance-of p1, v1, Lgnu/mapping/Values;

    if-eqz p1, :cond_2

    .line 55
    move-object p1, v1

    check-cast p1, Lgnu/lists/TreeList;

    const/4 v1, 0x0

    :goto_0
    shl-int/lit8 v2, v1, 0x1

    .line 59
    invoke-virtual {p1, v2}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    .line 63
    invoke-virtual {p1, v2}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lgnu/kawa/xml/Attributes;->attributes(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_1

    .line 65
    :cond_1
    invoke-static {p1, v1, v0}, Lgnu/kawa/xml/Attributes;->attributes(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    .line 66
    :goto_1
    invoke-virtual {p1, v1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v1

    goto :goto_0

    .line 70
    :cond_2
    invoke-static {v1, v0}, Lgnu/kawa/xml/Attributes;->attributes(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    :goto_2
    return-void
.end method

.method public numArgs()I
    .locals 1

    const/16 v0, 0x1001

    return v0
.end method
