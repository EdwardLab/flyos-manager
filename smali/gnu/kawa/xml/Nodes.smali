.class public Lgnu/kawa/xml/Nodes;
.super Lgnu/mapping/Values;
.source "Nodes.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# static fields
.field static final POS_SIZE:I = 0x5


# instance fields
.field count:I

.field curFragment:Lgnu/xml/XMLFilter;

.field curNode:Lgnu/xml/NodeTree;

.field inAttribute:Z

.field nesting:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lgnu/mapping/Values;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lgnu/kawa/xml/Nodes;->nesting:I

    return-void
.end method

.method private maybeEndNonTextNode()V
    .locals 1

    .line 178
    iget v0, p0, Lgnu/kawa/xml/Nodes;->nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/kawa/xml/Nodes;->nesting:I

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->finishFragment()V

    :cond_0
    return-void
.end method

.method private maybeStartNonTextNode()V
    .locals 1

    .line 169
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    if-eqz v0, :cond_0

    iget v0, p0, Lgnu/kawa/xml/Nodes;->nesting:I

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->finishFragment()V

    .line 171
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    if-nez v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->startFragment()V

    .line 173
    :cond_1
    iget v0, p0, Lgnu/kawa/xml/Nodes;->nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/kawa/xml/Nodes;->nesting:I

    return-void
.end method

.method public static root(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;
    .locals 2

    .line 342
    iget p1, p0, Lgnu/xml/NodeTree;->gapStart:I

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-le p1, v1, :cond_0

    iget-object p1, p0, Lgnu/xml/NodeTree;->data:[C

    aget-char p1, p1, v0

    const v1, 0xf112

    if-ne p1, v1, :cond_0

    const/16 v0, 0xa

    .line 347
    :cond_0
    invoke-static {p0, v0}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 1

    .line 139
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->maybeStartTextNode()V

    .line 140
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write(Ljava/lang/CharSequence;II)V

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/xml/Nodes;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public beginEntity(Ljava/lang/Object;)V
    .locals 1

    .line 245
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 246
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->beginEntity(Ljava/lang/Object;)V

    return-void
.end method

.method public endAttribute()V
    .locals 1

    .line 203
    iget-boolean v0, p0, Lgnu/kawa/xml/Nodes;->inAttribute:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lgnu/kawa/xml/Nodes;->inAttribute:Z

    .line 206
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 207
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    return-void
.end method

.method public endDocument()V
    .locals 1

    .line 239
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->endDocument()V

    .line 240
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    return-void
.end method

.method public endElement()V
    .locals 1

    .line 190
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->endElement()V

    .line 191
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    return-void
.end method

.method public endEntity()V
    .locals 1

    .line 251
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->endEntity()V

    .line 252
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    return-void
.end method

.method public find(Ljava/lang/Object;)I
    .locals 2

    .line 38
    iget v0, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    if-lez v0, :cond_0

    .line 40
    iget v0, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    add-int/lit8 v0, v0, -0x5

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v0

    .line 41
    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    .line 45
    :cond_0
    iget v0, p0, Lgnu/kawa/xml/Nodes;->gapEnd:I

    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->data:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 47
    iget v0, p0, Lgnu/kawa/xml/Nodes;->gapEnd:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v0

    .line 48
    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    return v0

    .line 51
    :cond_1
    invoke-super {p0, p1}, Lgnu/mapping/Values;->find(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method finishFragment()V
    .locals 1

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lgnu/kawa/xml/Nodes;->curNode:Lgnu/xml/NodeTree;

    .line 265
    iput-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    mul-int/lit8 p1, p1, 0x5

    .line 281
    iget v0, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    if-lt p1, v0, :cond_0

    .line 282
    iget v0, p0, Lgnu/kawa/xml/Nodes;->gapEnd:I

    iget v1, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    :cond_0
    if-ltz p1, :cond_2

    .line 283
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->data:[C

    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 286
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->data:[C

    aget-char v0, v0, p1

    const v1, 0xf10f

    if-ne v0, v1, :cond_1

    .line 288
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->objects:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Lgnu/xml/NodeTree;

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result p1

    invoke-static {v0, p1}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object p1

    return-object p1

    .line 287
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "internal error - unexpected data"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getLength()I
    .locals 1

    .line 275
    iget v0, p0, Lgnu/kawa/xml/Nodes;->count:I

    return v0
.end method

.method public getPos(I)I
    .locals 2

    mul-int/lit8 p1, p1, 0x5

    .line 331
    iget v0, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    if-lt p1, v0, :cond_0

    .line 332
    iget v0, p0, Lgnu/kawa/xml/Nodes;->gapEnd:I

    iget v1, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 334
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->data:[C

    aget-char v0, v0, p1

    const v1, 0xf10f

    if-ne v0, v1, :cond_1

    add-int/lit8 p1, p1, 0x3

    .line 336
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result p1

    return p1

    .line 335
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "internal error - unexpected data"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .locals 2

    .line 303
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/Nodes;->posToDataIndex(I)I

    move-result p1

    .line 304
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->data:[C

    array-length v0, v0

    if-ne p1, v0, :cond_0

    .line 305
    sget-object p1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    return-object p1

    .line 306
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->data:[C

    aget-char v0, v0, p1

    const v1, 0xf10f

    if-ne v0, v1, :cond_1

    .line 308
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->objects:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Lgnu/xml/NodeTree;

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result p1

    invoke-static {v0, p1}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object p1

    return-object p1

    .line 307
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "internal error - unexpected data"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSeq(I)Lgnu/lists/AbstractSequence;
    .locals 2

    mul-int/lit8 p1, p1, 0x5

    .line 317
    iget v0, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    if-lt p1, v0, :cond_0

    .line 318
    iget v0, p0, Lgnu/kawa/xml/Nodes;->gapEnd:I

    iget v1, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    :cond_0
    if-ltz p1, :cond_3

    .line 319
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->data:[C

    array-length v0, v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 322
    :cond_1
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->data:[C

    aget-char v0, v0, p1

    const v1, 0xf10f

    if-ne v0, v1, :cond_2

    .line 324
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->objects:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result p1

    aget-object p1, v0, p1

    check-cast p1, Lgnu/lists/AbstractSequence;

    return-object p1

    .line 323
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "internal error - unexpected data"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method handleNonNode()V
    .locals 2

    .line 94
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    if-eqz v0, :cond_0

    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "atomic value where node is required"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1

    .line 294
    iget v0, p0, Lgnu/kawa/xml/Nodes;->count:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 297
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/Nodes;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Node;

    return-object p1
.end method

.method maybeStartTextNode()V
    .locals 2

    .line 86
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "non-node where node required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 270
    iget v0, p0, Lgnu/kawa/xml/Nodes;->count:I

    return v0
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 1

    .line 196
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 197
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->startAttribute(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 198
    iput-boolean p1, p0, Lgnu/kawa/xml/Nodes;->inAttribute:Z

    return-void
.end method

.method public startDocument()V
    .locals 1

    .line 233
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 234
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->startDocument()V

    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 1

    .line 184
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 185
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->startElement(Ljava/lang/Object;)V

    return-void
.end method

.method startFragment()V
    .locals 2

    .line 257
    new-instance v0, Lgnu/xml/NodeTree;

    invoke-direct {v0}, Lgnu/xml/NodeTree;-><init>()V

    iput-object v0, p0, Lgnu/kawa/xml/Nodes;->curNode:Lgnu/xml/NodeTree;

    .line 258
    new-instance v1, Lgnu/xml/XMLFilter;

    invoke-direct {v1, v0}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    iput-object v1, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    .line 259
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curNode:Lgnu/xml/NodeTree;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/xml/Nodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    return-void
.end method

.method public write(I)V
    .locals 1

    .line 132
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->maybeStartTextNode()V

    .line 133
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->write(I)V

    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 1

    .line 157
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->maybeStartTextNode()V

    .line 158
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1

    .line 163
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->maybeStartTextNode()V

    .line 164
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public write([CII)V
    .locals 1

    .line 147
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->maybeStartTextNode()V

    .line 148
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write([CII)V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1

    .line 126
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 127
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->writeBoolean(Z)V

    return-void
.end method

.method public writeCDATA([CII)V
    .locals 1

    .line 219
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 220
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/xml/XMLFilter;->writeCDATA([CII)V

    return-void
.end method

.method public writeComment([CII)V
    .locals 1

    .line 212
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 213
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/xml/XMLFilter;->writeComment([CII)V

    .line 214
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    return-void
.end method

.method public writeDouble(D)V
    .locals 1

    .line 108
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 109
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2}, Lgnu/xml/XMLFilter;->writeDouble(D)V

    return-void
.end method

.method public writeFloat(F)V
    .locals 1

    .line 102
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 103
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->writeFloat(F)V

    return-void
.end method

.method public writeInt(I)V
    .locals 1

    .line 120
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 121
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->writeInt(I)V

    return-void
.end method

.method public writeLong(J)V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 115
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2}, Lgnu/xml/XMLFilter;->writeLong(J)V

    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    if-eqz v0, :cond_2

    .line 58
    iget v1, p0, Lgnu/kawa/xml/Nodes;->nesting:I

    if-nez v1, :cond_1

    instance-of v1, p1, Lgnu/lists/SeqPosition;

    if-nez v1, :cond_0

    instance-of v1, p1, Lgnu/lists/TreeList;

    if-eqz v1, :cond_1

    .line 60
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->finishFragment()V

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->writeObject(Ljava/lang/Object;)V

    return-void

    .line 67
    :cond_2
    :goto_0
    instance-of v0, p1, Lgnu/lists/SeqPosition;

    if-eqz v0, :cond_3

    .line 69
    check-cast p1, Lgnu/lists/SeqPosition;

    .line 70
    iget-object v0, p1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget p1, p1, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {p0, v0, p1}, Lgnu/kawa/xml/Nodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    return-void

    .line 73
    :cond_3
    instance-of v0, p1, Lgnu/lists/TreeList;

    if-eqz v0, :cond_4

    .line 75
    check-cast p1, Lgnu/lists/TreeList;

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, p1, v0}, Lgnu/kawa/xml/Nodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    return-void

    .line 79
    :cond_4
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 80
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 1

    .line 31
    iget v0, p0, Lgnu/kawa/xml/Nodes;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/kawa/xml/Nodes;->count:I

    .line 32
    invoke-super {p0, p1, p2}, Lgnu/mapping/Values;->writePosition(Lgnu/lists/AbstractSequence;I)V

    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;[CII)V
    .locals 1

    .line 226
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 227
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lgnu/xml/XMLFilter;->writeProcessingInstruction(Ljava/lang/String;[CII)V

    .line 228
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    return-void
.end method
