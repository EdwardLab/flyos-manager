.class public Lgnu/xml/NodeTree;
.super Lgnu/lists/TreeList;
.source "NodeTree.java"


# static fields
.field static counter:I


# instance fields
.field id:I

.field idCount:I

.field idNames:[Ljava/lang/String;

.field idOffsets:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lgnu/lists/TreeList;-><init>()V

    return-void
.end method

.method public static make()Lgnu/xml/NodeTree;
    .locals 1

    .line 33
    new-instance v0, Lgnu/xml/NodeTree;

    invoke-direct {v0}, Lgnu/xml/NodeTree;-><init>()V

    return-object v0
.end method


# virtual methods
.method public ancestorAttribute(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    :goto_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 210
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/NodeTree;->getAttributeI(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 213
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->parentPos(I)I

    move-result p1

    goto :goto_0
.end method

.method public baseUriOfPos(IZ)Lgnu/text/Path;
    .locals 5

    .line 221
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 224
    :goto_0
    iget-object v3, p0, Lgnu/xml/NodeTree;->data:[C

    array-length v3, v3

    if-ne v0, v3, :cond_0

    return-object v1

    .line 226
    :cond_0
    iget-object v3, p0, Lgnu/xml/NodeTree;->data:[C

    aget-char v3, v3, v0

    const v4, 0xf112

    if-ne v3, v4, :cond_1

    add-int/lit8 p1, v0, 0x1

    .line 230
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getIntN(I)I

    move-result p1

    if-ltz p1, :cond_4

    .line 232
    iget-object v3, p0, Lgnu/xml/NodeTree;->objects:[Ljava/lang/Object;

    aget-object p1, v3, p1

    invoke-static {p1}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object p1

    goto :goto_1

    :cond_1
    const v4, 0xa000

    if-lt v3, v4, :cond_2

    const v4, 0xafff

    if-le v3, v4, :cond_3

    :cond_2
    const v4, 0xf108

    if-ne v3, v4, :cond_4

    :cond_3
    const-string v3, "http://www.w3.org/XML/1998/namespace"

    const-string v4, "base"

    .line 238
    invoke-virtual {p0, p1, v3, v4}, Lgnu/xml/NodeTree;->getAttributeI(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_4

    .line 240
    invoke-static {p0, p1}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_8

    if-eqz v2, :cond_6

    if-nez p2, :cond_5

    goto :goto_2

    .line 244
    :cond_5
    invoke-virtual {p1, v2}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object p1

    :cond_6
    :goto_2
    move-object v2, p1

    .line 245
    invoke-virtual {v2}, Lgnu/text/Path;->isAbsolute()Z

    move-result p1

    if-nez p1, :cond_7

    if-nez p2, :cond_8

    :cond_7
    return-object v2

    .line 248
    :cond_8
    invoke-virtual {p0, v0}, Lgnu/xml/NodeTree;->parentOrEntityI(I)I

    move-result v0

    const/4 p1, -0x1

    if-ne v0, p1, :cond_9

    return-object v2

    :cond_9
    shl-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method enterID(Ljava/lang/String;I)V
    .locals 6

    .line 302
    iget-object v0, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    .line 303
    iget-object v1, p0, Lgnu/xml/NodeTree;->idOffsets:[I

    if-nez v0, :cond_0

    const/16 v2, 0x40

    new-array v3, v2, [Ljava/lang/String;

    .line 307
    iput-object v3, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    new-array v3, v2, [I

    .line 308
    iput-object v3, p0, Lgnu/xml/NodeTree;->idOffsets:[I

    goto :goto_1

    .line 310
    :cond_0
    iget v2, p0, Lgnu/xml/NodeTree;->idCount:I

    mul-int/lit8 v2, v2, 0x4

    array-length v3, v0

    mul-int/lit8 v4, v3, 0x3

    if-lt v2, v4, :cond_3

    mul-int/lit8 v2, v3, 0x2

    .line 312
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    .line 313
    new-array v4, v2, [I

    iput-object v4, p0, Lgnu/xml/NodeTree;->idOffsets:[I

    const/4 v4, 0x0

    .line 314
    iput v4, p0, Lgnu/xml/NodeTree;->idCount:I

    :cond_1
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2

    .line 317
    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    .line 319
    aget v5, v1, v3

    invoke-virtual {p0, v4, v5}, Lgnu/xml/NodeTree;->enterID(Ljava/lang/String;I)V

    goto :goto_0

    .line 321
    :cond_2
    iget-object v0, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    .line 322
    iget-object v1, p0, Lgnu/xml/NodeTree;->idOffsets:[I

    goto :goto_1

    :cond_3
    move v2, v3

    .line 325
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/lit8 v2, v2, -0x1

    and-int v4, v3, v2

    not-int v3, v3

    shl-int/lit8 v3, v3, 0x1

    or-int/lit8 v3, v3, 0x1

    .line 332
    :goto_2
    aget-object v5, v0, v4

    if-nez v5, :cond_4

    .line 335
    aput-object p1, v0, v4

    .line 336
    aput p2, v1, v4

    .line 346
    iget p1, p0, Lgnu/xml/NodeTree;->idCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgnu/xml/NodeTree;->idCount:I

    return-void

    .line 339
    :cond_4
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    return-void

    :cond_5
    add-int/2addr v4, v3

    and-int/2addr v4, v2

    goto :goto_2
.end method

.method public getAttribute(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Lgnu/xml/NodeTree;->getAttributeI(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getAttributeI(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 163
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->firstAttributePos(I)I

    move-result p1

    :goto_0
    if-eqz p1, :cond_4

    .line 166
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_1

    .line 168
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v0

    if-ne v0, p3, :cond_2

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    if-ne v0, p2, :cond_2

    goto :goto_1

    .line 171
    :cond_2
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->nextPos(I)I

    move-result p1

    goto :goto_0

    :cond_3
    :goto_1
    return p1

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public getId()I
    .locals 1

    .line 42
    iget v0, p0, Lgnu/xml/NodeTree;->id:I

    if-nez v0, :cond_0

    .line 43
    sget v0, Lgnu/xml/NodeTree;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/xml/NodeTree;->counter:I

    iput v0, p0, Lgnu/xml/NodeTree;->id:I

    .line 44
    :cond_0
    iget v0, p0, Lgnu/xml/NodeTree;->id:I

    return v0
.end method

.method public getIteratorAtPos(I)Lgnu/lists/SeqPosition;
    .locals 0

    .line 68
    invoke-static {p0, p1}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object p1

    return-object p1
.end method

.method public lookupID(Ljava/lang/String;)I
    .locals 6

    .line 357
    iget-object v0, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    .line 358
    iget-object v1, p0, Lgnu/xml/NodeTree;->idOffsets:[I

    .line 359
    array-length v2, v0

    .line 360
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/lit8 v2, v2, -0x1

    and-int v4, v3, v2

    not-int v3, v3

    shl-int/lit8 v3, v3, 0x1

    or-int/lit8 v3, v3, 0x1

    .line 367
    :goto_0
    aget-object v5, v0, v4

    if-nez v5, :cond_0

    const/4 p1, -0x1

    return p1

    .line 370
    :cond_0
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 372
    aget p1, v1, v4

    return p1

    :cond_1
    add-int/2addr v4, v3

    and-int/2addr v4, v2

    goto :goto_0
.end method

.method public makeIDtableIfNeeded()V
    .locals 4

    .line 275
    iget-object v0, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x40

    new-array v1, v0, [Ljava/lang/String;

    .line 280
    iput-object v1, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    new-array v0, v0, [I

    .line 281
    iput-object v0, p0, Lgnu/xml/NodeTree;->idOffsets:[I

    .line 282
    invoke-virtual {p0}, Lgnu/xml/NodeTree;->endPos()I

    move-result v0

    const/4 v1, 0x0

    .line 286
    :cond_1
    :goto_0
    sget-object v2, Lgnu/kawa/xml/ElementType;->anyElement:Lgnu/kawa/xml/ElementType;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v0, v3}, Lgnu/xml/NodeTree;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const-string v2, "http://www.w3.org/XML/1998/namespace"

    const-string v3, "id"

    .line 291
    invoke-virtual {p0, v1, v2, v3}, Lgnu/xml/NodeTree;->getAttributeI(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    invoke-static {p0, v2}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lgnu/xml/NodeTree;->enterID(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public nextPos(I)I
    .locals 1

    .line 22
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result p1

    const v0, 0x7fffffff

    .line 23
    invoke-virtual {p0, p1, v0}, Lgnu/xml/NodeTree;->nextNodeIndex(II)I

    move-result v0

    if-eq v0, p1, :cond_0

    shl-int/lit8 p1, v0, 0x1

    return p1

    .line 26
    :cond_0
    iget-object v0, p0, Lgnu/xml/NodeTree;->data:[C

    array-length v0, v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public posFirstChild(I)I
    .locals 3

    .line 124
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->gotoChildrenStart(I)I

    move-result p1

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    .line 127
    :cond_0
    iget-object v1, p0, Lgnu/xml/NodeTree;->data:[C

    aget-char v1, v1, p1

    const v2, 0xf10b

    if-eq v1, v2, :cond_2

    const v2, 0xf10c

    if-eq v1, v2, :cond_2

    const v2, 0xf111

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    shl-int/lit8 p1, p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public posHasAttributes(I)Z
    .locals 2

    .line 136
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->gotoAttributesStart(I)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    if-ltz p1, :cond_1

    .line 139
    iget-object v1, p0, Lgnu/xml/NodeTree;->data:[C

    aget-char p1, v1, p1

    const v1, 0xf109

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public posIsDefaultNamespace(ILjava/lang/String;)Z
    .locals 0

    .line 102
    new-instance p1, Ljava/lang/Error;

    const-string p2, "posIsDefaultNamespace not implemented"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public posLocalName(I)Ljava/lang/String;
    .locals 2

    .line 92
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 93
    instance-of v1, v0, Lgnu/xml/XName;

    if-eqz v1, :cond_0

    .line 94
    check-cast v0, Lgnu/xml/XName;

    invoke-virtual {v0}, Lgnu/xml/XName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 95
    :cond_0
    instance-of v1, v0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_1

    .line 96
    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 97
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getNextTypeName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public posLookupNamespaceURI(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 107
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_1

    .line 110
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object p1

    .line 111
    instance-of v0, p1, Lgnu/xml/XName;

    if-eqz v0, :cond_0

    .line 112
    check-cast p1, Lgnu/xml/XName;

    invoke-virtual {p1, p2}, Lgnu/xml/XName;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 109
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "argument must be an element"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public posLookupPrefix(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 119
    new-instance p1, Ljava/lang/Error;

    const-string p2, "posLookupPrefix not implemented"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public posNamespaceURI(I)Ljava/lang/String;
    .locals 1

    .line 73
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object p1

    .line 74
    instance-of v0, p1, Lgnu/xml/XName;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Lgnu/xml/XName;

    invoke-virtual {p1}, Lgnu/xml/XName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 76
    :cond_0
    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_1

    .line 77
    check-cast p1, Lgnu/mapping/Symbol;

    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public posPrefix(I)Ljava/lang/String;
    .locals 2

    .line 83
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getNextTypeName(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x3a

    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public posTarget(I)Ljava/lang/String;
    .locals 2

    .line 192
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result p1

    .line 193
    iget-object v0, p0, Lgnu/xml/NodeTree;->data:[C

    aget-char v0, v0, p1

    const v1, 0xf114

    if-ne v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lgnu/xml/NodeTree;->objects:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getIntN(I)I

    move-result p1

    aget-object p1, v0, p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 194
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "expected process-instruction"

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stableCompare(Lgnu/lists/AbstractSequence;)I
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 56
    :cond_0
    invoke-super {p0, p1}, Lgnu/lists/TreeList;->stableCompare(Lgnu/lists/AbstractSequence;)I

    move-result v1

    if-nez v1, :cond_3

    .line 57
    instance-of v2, p1, Lgnu/xml/NodeTree;

    if-eqz v2, :cond_3

    .line 59
    invoke-virtual {p0}, Lgnu/xml/NodeTree;->getId()I

    move-result v1

    .line 60
    check-cast p1, Lgnu/xml/NodeTree;

    invoke-virtual {p1}, Lgnu/xml/NodeTree;->getId()I

    move-result p1

    if-ge v1, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-le v1, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    move v1, v0

    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 257
    new-instance v0, Lgnu/mapping/CharArrayOutPort;

    invoke-direct {v0}, Lgnu/mapping/CharArrayOutPort;-><init>()V

    .line 258
    new-instance v1, Lgnu/xml/XMLPrinter;

    invoke-direct {v1, v0}, Lgnu/xml/XMLPrinter;-><init>(Ljava/io/Writer;)V

    .line 259
    invoke-virtual {p0, v1}, Lgnu/xml/NodeTree;->consume(Lgnu/lists/Consumer;)V

    .line 260
    invoke-virtual {v0}, Lgnu/mapping/CharArrayOutPort;->close()V

    .line 261
    invoke-virtual {v0}, Lgnu/mapping/CharArrayOutPort;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typedValue(I)Ljava/lang/Object;
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 180
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lgnu/xml/NodeTree;->stringValue(ILjava/lang/StringBuffer;)I

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result p1

    const/16 v1, 0x25

    if-eq p1, v1, :cond_1

    const/16 v1, 0x24

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    new-instance p1, Lgnu/kawa/xml/UntypedAtomic;

    invoke-direct {p1, v0}, Lgnu/kawa/xml/UntypedAtomic;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method
