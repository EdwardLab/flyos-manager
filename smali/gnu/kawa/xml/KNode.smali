.class public abstract Lgnu/kawa/xml/KNode;
.super Lgnu/lists/SeqPosition;
.source "KNode.java"

# interfaces
.implements Lorg/w3c/dom/Node;
.implements Lgnu/lists/Consumable;


# direct methods
.method public constructor <init>(Lgnu/xml/NodeTree;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lgnu/lists/SeqPosition;-><init>(Lgnu/lists/AbstractSequence;I)V

    return-void
.end method

.method public static atomicValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 28
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_0

    .line 30
    check-cast p0, Lgnu/kawa/xml/KNode;

    .line 31
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget p0, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v0, p0}, Lgnu/xml/NodeTree;->typedValue(I)Ljava/lang/Object;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static coerce(Ljava/lang/Object;)Lgnu/kawa/xml/KNode;
    .locals 1

    .line 39
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_0

    .line 40
    check-cast p0, Lgnu/kawa/xml/KNode;

    return-object p0

    .line 41
    :cond_0
    instance-of v0, p0, Lgnu/xml/NodeTree;

    if-eqz v0, :cond_1

    .line 43
    check-cast p0, Lgnu/xml/NodeTree;

    .line 44
    invoke-virtual {p0}, Lgnu/xml/NodeTree;->startPos()I

    move-result v0

    invoke-static {p0, v0}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object p0

    return-object p0

    .line 46
    :cond_1
    instance-of v0, p0, Lgnu/lists/SeqPosition;

    if-eqz v0, :cond_2

    instance-of v0, p0, Lgnu/lists/TreePosition;

    if-nez v0, :cond_2

    .line 49
    check-cast p0, Lgnu/lists/SeqPosition;

    .line 50
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    instance-of v0, v0, Lgnu/xml/NodeTree;

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget p0, p0, Lgnu/lists/SeqPosition;->ipos:I

    invoke-static {v0, p0}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;
    .locals 1

    .line 159
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 160
    invoke-static {p0, p1, v0}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;ILjava/lang/StringBuffer;)V

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNodeValue(Lgnu/xml/NodeTree;ILjava/lang/StringBuffer;)V
    .locals 0

    .line 166
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lgnu/xml/NodeTree;->stringValue(ILjava/lang/StringBuffer;)I

    return-void
.end method

.method public static make(Lgnu/xml/NodeTree;)Lgnu/kawa/xml/KNode;
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-static {p0, v0}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object p0

    return-object p0
.end method

.method public static make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;
    .locals 3

    .line 58
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v0

    .line 60
    :goto_0
    iget-object v1, p0, Lgnu/xml/NodeTree;->data:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lgnu/xml/NodeTree;->data:[C

    aget-char v1, v1, v0

    const v2, 0xf112

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x5

    .line 63
    iget p1, p0, Lgnu/xml/NodeTree;->gapStart:I

    if-ne v0, p1, :cond_0

    .line 64
    iget p1, p0, Lgnu/xml/NodeTree;->gapEnd:I

    move v0, p1

    :cond_0
    shl-int/lit8 p1, v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/xml/NodeTree;->getNextKindI(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 81
    :pswitch_0
    new-instance v0, Lgnu/kawa/xml/KProcessingInstruction;

    invoke-direct {v0, p0, p1}, Lgnu/kawa/xml/KProcessingInstruction;-><init>(Lgnu/xml/NodeTree;I)V

    return-object v0

    .line 79
    :pswitch_1
    new-instance v0, Lgnu/kawa/xml/KComment;

    invoke-direct {v0, p0, p1}, Lgnu/kawa/xml/KComment;-><init>(Lgnu/xml/NodeTree;I)V

    return-object v0

    .line 73
    :pswitch_2
    new-instance v0, Lgnu/kawa/xml/KAttr;

    invoke-direct {v0, p0, p1}, Lgnu/kawa/xml/KAttr;-><init>(Lgnu/xml/NodeTree;I)V

    return-object v0

    .line 75
    :pswitch_3
    new-instance v0, Lgnu/kawa/xml/KDocument;

    invoke-direct {v0, p0, p1}, Lgnu/kawa/xml/KDocument;-><init>(Lgnu/xml/NodeTree;I)V

    return-object v0

    .line 71
    :pswitch_4
    new-instance v0, Lgnu/kawa/xml/KElement;

    invoke-direct {v0, p0, p1}, Lgnu/kawa/xml/KElement;-><init>(Lgnu/xml/NodeTree;I)V

    return-object v0

    .line 77
    :cond_2
    new-instance v0, Lgnu/kawa/xml/KCDATASection;

    invoke-direct {v0, p0, p1}, Lgnu/kawa/xml/KCDATASection;-><init>(Lgnu/xml/NodeTree;I)V

    return-object v0

    .line 83
    :cond_3
    invoke-virtual {p0}, Lgnu/xml/NodeTree;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 87
    :cond_4
    :goto_1
    new-instance v0, Lgnu/kawa/xml/KText;

    invoke-direct {v0, p0, p1}, Lgnu/kawa/xml/KText;-><init>(Lgnu/xml/NodeTree;I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 329
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    const-string v1, "appendChild not supported"

    invoke-direct {p1, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public baseURI()Lgnu/text/Path;
    .locals 3

    .line 397
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/xml/NodeTree;->baseUriOfPos(IZ)Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 2

    if-eqz p1, :cond_0

    .line 346
    new-instance p1, Lgnu/xml/NodeTree;

    invoke-direct {p1}, Lgnu/xml/NodeTree;-><init>()V

    .line 347
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v0, v1, p1}, Lgnu/xml/NodeTree;->consumeNext(ILgnu/lists/Consumer;)Z

    .line 348
    invoke-static {p1}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;)Lgnu/kawa/xml/KNode;

    move-result-object p1

    return-object p1

    .line 345
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "shallow cloneNode not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 404
    instance-of v0, p1, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_1

    .line 407
    check-cast p1, Lgnu/kawa/xml/KNode;

    .line 408
    iget-object v0, p1, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    .line 409
    iget-object v1, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    if-ne v1, v0, :cond_0

    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    iget p1, p1, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v0, v1, p1}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p1, v0}, Lgnu/lists/AbstractSequence;->stableCompare(Lgnu/lists/AbstractSequence;)I

    move-result p1

    :goto_0
    int-to-short p1, p1

    return p1

    .line 405
    :cond_1
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "other Node is a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public consume(Lgnu/lists/Consumer;)V
    .locals 2

    .line 446
    instance-of v0, p1, Lgnu/lists/PositionConsumer;

    if-eqz v0, :cond_0

    .line 447
    check-cast p1, Lgnu/lists/PositionConsumer;

    invoke-interface {p1, p0}, Lgnu/lists/PositionConsumer;->consume(Lgnu/lists/SeqPosition;)V

    goto :goto_0

    .line 449
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v0, v1, p1}, Lgnu/xml/NodeTree;->consumeNext(ILgnu/lists/Consumer;)Z

    :goto_0
    return-void
.end method

.method public copy()Lgnu/kawa/xml/KNode;
    .locals 3

    .line 94
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget-object v1, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/kawa/xml/KNode;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v1

    invoke-static {v0, v1}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lgnu/lists/SeqPosition;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lgnu/kawa/xml/KNode;->copy()Lgnu/kawa/xml/KNode;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 2

    .line 361
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getAttributes not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 3

    .line 391
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/xml/NodeTree;->baseUriOfPos(IZ)Lgnu/text/Path;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 392
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 3

    .line 258
    new-instance v0, Lgnu/kawa/xml/SortedNodes;

    invoke-direct {v0}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    .line 259
    iget-object v1, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    iget v2, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    .line 262
    iget-object v2, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/xml/Nodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 263
    iget-object v2, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v2, v1}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    .line 271
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getElementsByTagName not implemented yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 2

    .line 240
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/xml/NodeTree;->posFirstChild(I)I

    move-result v0

    .line 241
    iget-object v1, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    invoke-static {v1, v0}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v0

    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 3

    .line 247
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 251
    iget-object v1, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v1, v0}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v1

    move v2, v1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 253
    :cond_1
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    invoke-static {v0, v1}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 2

    .line 154
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 2

    .line 144
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 2

    .line 233
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/xml/NodeTree;->nextPos(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 234
    :cond_0
    iget-object v1, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    invoke-static {v1, v0}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 2

    .line 119
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->getNextTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeNameObject()Ljava/lang/Object;
    .locals 2

    .line 139
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/xml/NodeTree;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNodeSymbol()Lgnu/mapping/Symbol;
    .locals 2

    .line 127
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/xml/NodeTree;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_0
    instance-of v1, v0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_1

    .line 131
    check-cast v0, Lgnu/mapping/Symbol;

    return-object v0

    .line 132
    :cond_1
    sget-object v1, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public abstract getNodeType()S
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    .line 171
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 172
    invoke-virtual {p0, v0}, Lgnu/kawa/xml/KNode;->getNodeValue(Ljava/lang/StringBuffer;)V

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeValue(Ljava/lang/StringBuffer;)V
    .locals 2

    .line 178
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-static {v0, v1, p1}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;ILjava/lang/StringBuffer;)V

    return-void
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 3

    .line 353
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 355
    new-instance v0, Lgnu/kawa/xml/KDocument;

    iget-object v1, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/KDocument;-><init>(Lgnu/xml/NodeTree;I)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 2

    .line 202
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->parentPos(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 205
    :cond_0
    iget-object v1, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    invoke-static {v1, v0}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    .line 149
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/xml/NodeTree;->posPrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 4

    .line 210
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->parentPos(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 213
    :cond_0
    iget-object v1, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    iget v2, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v1

    .line 214
    iget-object v2, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v2, v0}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result v0

    .line 219
    :goto_0
    iget-object v2, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v2, v0}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 222
    :cond_1
    iget-object v3, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v3, Lgnu/xml/NodeTree;

    invoke-virtual {v3, v2}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 225
    :cond_2
    iget-object v1, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    invoke-static {v1, v0}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1

    .line 188
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 189
    invoke-virtual {p0, v0}, Lgnu/kawa/xml/KNode;->getTextContent(Ljava/lang/StringBuffer;)V

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTextContent(Ljava/lang/StringBuffer;)V
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/KNode;->getNodeValue(Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasAttributes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 2

    .line 183
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/xml/NodeTree;->posFirstChild(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 305
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x7

    const-string v0, "insertBefore not supported"

    invoke-direct {p1, p2, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 2

    .line 376
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v0, v1, p1}, Lgnu/xml/NodeTree;->posIsDefaultNamespace(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 1

    .line 425
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getAttributesisEqualNode not implemented yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 3

    .line 415
    instance-of v0, p1, Lgnu/kawa/xml/KNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 417
    :cond_0
    check-cast p1, Lgnu/kawa/xml/KNode;

    .line 418
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    iget-object v2, p1, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    if-eq v0, v2, :cond_1

    return v1

    .line 420
    :cond_1
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    iget p1, p1, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v0, v1, p1}, Lgnu/lists/AbstractSequence;->equals(II)Z

    move-result p1

    return p1
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 381
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v0, v1, p1}, Lgnu/xml/NodeTree;->posLookupNamespaceURI(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 386
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v0, v1, p1}, Lgnu/xml/NodeTree;->posLookupPrefix(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public normalize()V
    .locals 0

    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 321
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    const-string v1, "removeChild not supported"

    invoke-direct {p1, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 313
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x7

    const-string v0, "replaceChild not supported"

    invoke-direct {p1, p2, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 290
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    const-string v1, "setNodeValue not supported"

    invoke-direct {p1, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 297
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    const-string v1, "setPrefix not supported"

    invoke-direct {p1, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 337
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    const-string v1, "setTextContent not supported"

    invoke-direct {p1, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 0

    .line 455
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "setUserData not implemented yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 431
    new-instance v0, Lgnu/mapping/CharArrayOutPort;

    invoke-direct {v0}, Lgnu/mapping/CharArrayOutPort;-><init>()V

    .line 432
    new-instance v1, Lgnu/xml/XMLPrinter;

    invoke-direct {v1, v0}, Lgnu/xml/XMLPrinter;-><init>(Ljava/io/Writer;)V

    .line 433
    iget-object v2, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/xml/NodeTree;

    iget v3, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v2, v3, v1}, Lgnu/xml/NodeTree;->consumeNext(ILgnu/lists/Consumer;)Z

    .line 434
    invoke-virtual {v1}, Lgnu/xml/XMLPrinter;->close()V

    .line 435
    invoke-virtual {v0}, Lgnu/mapping/CharArrayOutPort;->close()V

    .line 436
    invoke-virtual {v0}, Lgnu/mapping/CharArrayOutPort;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
