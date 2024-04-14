.class public Lgnu/xquery/util/SequenceUtils;
.super Ljava/lang/Object;
.source "SequenceUtils.java"


# static fields
.field public static final textOrElement:Lgnu/kawa/xml/NodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 163
    new-instance v0, Lgnu/kawa/xml/NodeType;

    const-string v1, "element-or-text"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/xquery/util/SequenceUtils;->textOrElement:Lgnu/kawa/xml/NodeType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2

    .line 21
    invoke-static {p0}, Lgnu/xquery/util/SequenceUtils;->isZeroOrOne(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 23
    :cond_0
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "xs:item()?"

    invoke-direct {v0, p1, p2, p0, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method

.method public static deepEqual(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z
    .locals 5

    .line 188
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v0

    .line 189
    invoke-virtual {p2, p3}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    if-eq v0, v1, :cond_b

    return v2

    .line 237
    :pswitch_1
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posTarget(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3}, Lgnu/xml/NodeTree;->posTarget(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    return v2

    .line 239
    :cond_0
    invoke-static {p0, p1}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 230
    :pswitch_2
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 233
    :cond_1
    invoke-static {p0, p1}, Lgnu/kawa/xml/KAttr;->getObjectValue(Lgnu/xml/NodeTree;I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p3}, Lgnu/kawa/xml/KAttr;->getObjectValue(Lgnu/xml/NodeTree;I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1, p4}, Lgnu/xquery/util/SequenceUtils;->deepEqualItems(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v2

    :pswitch_3
    if-eq v0, v1, :cond_3

    return v2

    .line 196
    :cond_3
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {p2, p3}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_4

    return v2

    .line 200
    :cond_4
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {p2, p3}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_5

    return v2

    .line 204
    :cond_5
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->firstAttributePos(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_9

    .line 208
    invoke-virtual {p0, v0}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 212
    invoke-virtual {p0, v0}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-virtual {p0, v0}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v4

    .line 214
    invoke-virtual {p2, p3, v4, v3}, Lgnu/xml/NodeTree;->getAttributeI(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    return v2

    .line 217
    :cond_7
    invoke-static {p0, v0}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v4

    .line 218
    invoke-static {p2, v3}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-static {v4, v3, p4}, Lgnu/xquery/util/SequenceUtils;->deepEqualItems(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    .line 221
    :cond_8
    invoke-virtual {p0, v0}, Lgnu/xml/NodeTree;->nextPos(I)I

    move-result v0

    goto :goto_1

    .line 223
    :cond_9
    :goto_2
    invoke-virtual {p2, p3}, Lgnu/xml/NodeTree;->getAttributeCount(I)I

    move-result v0

    if-eq v1, v0, :cond_a

    return v2

    .line 228
    :cond_a
    :pswitch_4
    invoke-static {p0, p1, p2, p3, p4}, Lgnu/xquery/util/SequenceUtils;->deepEqualChildren(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z

    move-result p0

    return p0

    .line 246
    :cond_b
    invoke-static {p0, p1}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static deepEqual(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z
    .locals 13

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_14

    .line 264
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v2, :cond_1

    goto/16 :goto_7

    :cond_1
    if-eqz p1, :cond_13

    .line 266
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p1, v2, :cond_2

    goto/16 :goto_6

    .line 269
    :cond_2
    instance-of v2, p0, Lgnu/mapping/Values;

    .line 270
    instance-of v3, p1, Lgnu/mapping/Values;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 271
    move-object v5, p0

    check-cast v5, Lgnu/mapping/Values;

    goto :goto_0

    :cond_3
    move-object v5, v4

    :goto_0
    if-eqz v3, :cond_4

    .line 272
    move-object v4, p1

    check-cast v4, Lgnu/mapping/Values;

    :cond_4
    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    :cond_5
    :goto_1
    if-eqz v2, :cond_7

    if-eqz v6, :cond_6

    .line 279
    invoke-virtual {v5}, Lgnu/mapping/Values;->startPos()I

    move-result v7

    .line 280
    :cond_6
    invoke-virtual {v5, v7}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v7

    :cond_7
    if-eqz v3, :cond_9

    if-eqz v6, :cond_8

    .line 285
    invoke-virtual {v4}, Lgnu/mapping/Values;->startPos()I

    move-result v8

    .line 286
    :cond_8
    invoke-virtual {v4, v8}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v8

    :cond_9
    if-eqz v7, :cond_11

    if-nez v8, :cond_a

    goto :goto_4

    :cond_a
    if-eqz v2, :cond_b

    .line 290
    invoke-virtual {v5, v7}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v9

    goto :goto_2

    :cond_b
    move-object v9, p0

    :goto_2
    if-eqz v3, :cond_c

    .line 291
    invoke-virtual {v4, v8}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v10

    goto :goto_3

    :cond_c
    move-object v10, p1

    .line 293
    :goto_3
    instance-of v11, v9, Lgnu/kawa/xml/KNode;

    if-nez v11, :cond_d

    instance-of v12, v10, Lgnu/kawa/xml/KNode;

    if-nez v12, :cond_d

    .line 297
    :try_start_0
    invoke-static {p0, p1, p2}, Lgnu/xquery/util/SequenceUtils;->deepEqualItems(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_e

    :catchall_0
    return v1

    :cond_d
    if-eqz v11, :cond_10

    .line 305
    instance-of v11, v10, Lgnu/kawa/xml/KNode;

    if-eqz v11, :cond_10

    .line 307
    check-cast v9, Lgnu/kawa/xml/KNode;

    .line 308
    check-cast v10, Lgnu/kawa/xml/KNode;

    .line 309
    iget-object v11, v9, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v11, Lgnu/xml/NodeTree;

    iget v9, v9, Lgnu/kawa/xml/KNode;->ipos:I

    iget-object v12, v10, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v12, Lgnu/xml/NodeTree;

    iget v10, v10, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-static {v11, v9, v12, v10, p2}, Lgnu/xquery/util/SequenceUtils;->deepEqual(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z

    move-result v9

    if-nez v9, :cond_e

    return v1

    :cond_e
    if-eqz v6, :cond_5

    if-nez v2, :cond_f

    const/4 v7, 0x0

    :cond_f
    const/4 v6, 0x0

    if-nez v3, :cond_5

    const/4 v8, 0x0

    goto :goto_1

    :cond_10
    return v1

    :cond_11
    :goto_4
    if-ne v7, v8, :cond_12

    goto :goto_5

    :cond_12
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_13
    :goto_6
    return v1

    :cond_14
    :goto_7
    if-eqz p1, :cond_16

    .line 265
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p1, p0, :cond_15

    goto :goto_8

    :cond_15
    const/4 v0, 0x0

    :cond_16
    :goto_8
    return v0
.end method

.method public static deepEqualChildren(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z
    .locals 3

    .line 170
    sget-object v0, Lgnu/xquery/util/SequenceUtils;->textOrElement:Lgnu/kawa/xml/NodeType;

    .line 171
    invoke-virtual {p0, p1, v0}, Lgnu/xml/NodeTree;->firstChildPos(ILgnu/lists/ItemPredicate;)I

    move-result p1

    .line 172
    invoke-virtual {p2, p3, v0}, Lgnu/xml/NodeTree;->firstChildPos(ILgnu/lists/ItemPredicate;)I

    move-result p3

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 177
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lgnu/xquery/util/SequenceUtils;->deepEqual(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v2, -0x1

    .line 179
    invoke-virtual {p0, p1, v0, v2, v1}, Lgnu/xml/NodeTree;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result p1

    .line 180
    invoke-virtual {p2, p3, v0, v2, v1}, Lgnu/xml/NodeTree;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result p3

    goto :goto_0

    :cond_2
    :goto_1
    if-ne p1, p3, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static deepEqualItems(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z
    .locals 1

    .line 254
    invoke-static {p0}, Lgnu/xquery/util/NumberValue;->isNaN(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lgnu/xquery/util/NumberValue;->isNaN(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x8

    .line 256
    invoke-static {v0, p0, p1, p2}, Lgnu/xquery/util/Compare;->atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result p0

    return p0
.end method

.method public static exactlyOne(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 41
    instance-of v0, p0, Lgnu/mapping/Values;

    if-nez v0, :cond_0

    return-object p0

    .line 42
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static exists(Ljava/lang/Object;)Z
    .locals 1

    .line 53
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_1

    check-cast p0, Lgnu/mapping/Values;

    invoke-virtual {p0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static indexOf$X(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;Lgnu/mapping/CallContext;)V
    .locals 4

    .line 147
    iget-object p3, p3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 148
    instance-of v0, p0, Lgnu/mapping/Values;

    const/16 v1, 0x48

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 150
    check-cast p0, Lgnu/mapping/Values;

    .line 151
    invoke-virtual {p0}, Lgnu/mapping/Values;->startPos()I

    move-result v0

    .line 153
    :goto_0
    invoke-virtual {p0, v0}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {p0, v0}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3, p1, p2}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    invoke-interface {p3, v2}, Lgnu/lists/Consumer;->writeInt(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    :cond_1
    invoke-static {v1, p0, p1, p2}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 160
    invoke-interface {p3, v2}, Lgnu/lists/Consumer;->writeInt(I)V

    :cond_2
    return-void
.end method

.method public static insertBefore$X(Ljava/lang/Object;JLjava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 8

    .line 59
    iget-object p4, p4, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    cmp-long v4, p1, v0

    if-gtz v4, :cond_0

    move-wide p1, v2

    .line 63
    :cond_0
    instance-of v4, p0, Lgnu/mapping/Values;

    if-eqz v4, :cond_5

    .line 65
    move-object v4, p0

    check-cast v4, Lgnu/mapping/Values;

    const/4 p0, 0x0

    move-wide v5, v0

    const/4 v0, 0x0

    .line 70
    :goto_0
    invoke-virtual {v4, p0}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    add-long/2addr v5, v2

    cmp-long v7, v5, p1

    if-nez v7, :cond_3

    .line 73
    :cond_2
    invoke-static {p3, p4}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    const/4 v0, 0x1

    :cond_3
    if-nez v1, :cond_4

    goto :goto_1

    .line 78
    :cond_4
    invoke-virtual {v4, p0, v1, p4}, Lgnu/mapping/Values;->consumePosRange(IILgnu/lists/Consumer;)V

    move p0, v1

    goto :goto_0

    :cond_5
    cmp-long v0, p1, v2

    if-gtz v0, :cond_6

    .line 85
    invoke-static {p3, p4}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 86
    :cond_6
    invoke-interface {p4, p0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    if-lez v0, :cond_7

    .line 88
    invoke-static {p3, p4}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public static isEmptySequence(Ljava/lang/Object;)Z
    .locals 1

    .line 48
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    check-cast p0, Lgnu/mapping/Values;

    invoke-virtual {p0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isZeroOrOne(Ljava/lang/Object;)Z
    .locals 1

    .line 16
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_1

    check-cast p0, Lgnu/mapping/Values;

    invoke-virtual {p0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static oneOrMore(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 33
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static remove$X(Ljava/lang/Object;JLgnu/mapping/CallContext;)V
    .locals 7

    .line 94
    iget-object p3, p3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 95
    instance-of v0, p0, Lgnu/mapping/Values;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_2

    .line 97
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    const/4 p0, 0x0

    const-wide/16 v3, 0x0

    .line 102
    :goto_0
    invoke-virtual {v0, p0}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    add-long/2addr v3, v1

    cmp-long v6, v3, p1

    if-eqz v6, :cond_1

    .line 106
    invoke-virtual {v0, p0, v5, p3}, Lgnu/mapping/Values;->consumePosRange(IILgnu/lists/Consumer;)V

    :cond_1
    move p0, v5

    goto :goto_0

    :cond_2
    cmp-long v0, p1, v1

    if-eqz v0, :cond_3

    .line 111
    invoke-interface {p3, p0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static reverse$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 5

    .line 117
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 118
    instance-of v0, p0, Lgnu/mapping/Values;

    if-nez v0, :cond_0

    .line 120
    invoke-interface {p1, p0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    return-void

    .line 123
    :cond_0
    check-cast p0, Lgnu/mapping/Values;

    const/16 v0, 0x64

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 129
    :goto_0
    array-length v4, v0

    if-lt v2, v4, :cond_1

    mul-int/lit8 v4, v2, 0x2

    .line 131
    new-array v4, v4, [I

    .line 132
    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    :cond_1
    add-int/lit8 v4, v2, 0x1

    .line 135
    aput v3, v0, v2

    .line 136
    invoke-virtual {p0, v3}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v4, v4, -0x1

    :goto_1
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_2

    .line 141
    aget v1, v0, v4

    add-int/lit8 v2, v4, 0x1

    aget v2, v0, v2

    invoke-virtual {p0, v1, v2, p1}, Lgnu/mapping/Values;->consumePosRange(IILgnu/lists/Consumer;)V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method public static zeroOrOne(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "zero-or-one"

    const/4 v1, 0x1

    .line 28
    invoke-static {p0, v0, v1}, Lgnu/xquery/util/SequenceUtils;->coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
