.class public Lgnu/xquery/util/NodeUtils;
.super Ljava/lang/Object;
.source "NodeUtils.java"


# static fields
.field static collectionNamespace:Ljava/lang/String; = "http://gnu.org/kawa/cached-collections"

.field public static final collectionResolverSymbol:Lgnu/mapping/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "http://www.w3.org/2005/xquery-local-functions"

    const-string v1, "collection-resolver"

    const-string v2, "qexo"

    .line 370
    invoke-static {v0, v1, v2}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/NodeUtils;->collectionResolverSymbol:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static availableCached(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "doc-available"

    .line 456
    invoke-static {p0, p1, v0}, Lgnu/xquery/util/NodeUtils;->resolve(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 461
    :cond_0
    :try_start_0
    invoke-static {p0}, Lgnu/kawa/xml/Document;->parseCached(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    return p1
.end method

.method public static baseUri(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    if-eqz p0, :cond_3

    .line 201
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_2

    .line 205
    check-cast p0, Lgnu/kawa/xml/KNode;

    invoke-virtual {p0}, Lgnu/kawa/xml/KNode;->baseURI()Lgnu/text/Path;

    move-result-object p0

    if-nez p0, :cond_1

    .line 207
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :cond_1
    return-object p0

    .line 204
    :cond_2
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "base-uri"

    const-string v3, "node()?"

    invoke-direct {v0, v2, v1, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static collection(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "collection"

    .line 376
    invoke-static {p0, p1, v0}, Lgnu/xquery/util/NodeUtils;->resolve(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 377
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object p1

    .line 378
    sget-object v0, Lgnu/xquery/util/NodeUtils;->collectionResolverSymbol:Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    .line 379
    invoke-virtual {p1, v0, v1, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 382
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lgnu/mapping/Symbol;->makeWithUnknownNamespace(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    .line 390
    invoke-static {p0}, Lgnu/xquery/util/NodeUtils;->getSavedCollection(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 392
    :cond_1
    instance-of p1, v2, Ljava/lang/String;

    const-string v0, "invalid collection-resolver: "

    if-nez p1, :cond_2

    instance-of p1, v2, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz p1, :cond_4

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_4

    const/4 v2, 0x0

    .line 395
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    .line 396
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 400
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/ClassType;

    .line 411
    sget-object v4, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    invoke-static {v1, p1, v2, v4}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 413
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid collection-resolver: no method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 408
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 404
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid collection-resolver: class "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 415
    :cond_4
    :goto_0
    instance-of p1, v2, Lgnu/mapping/Procedure;

    if-eqz p1, :cond_5

    .line 417
    check-cast v2, Lgnu/mapping/Procedure;

    invoke-virtual {v2, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 416
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static data$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 2

    .line 111
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 112
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    .line 114
    check-cast p0, Lgnu/mapping/Values;

    .line 115
    invoke-virtual {p0}, Lgnu/mapping/Values;->startPos()I

    move-result v0

    .line 116
    :goto_0
    invoke-virtual {p0, v0}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p0, v0}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static docCached(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "doc"

    .line 442
    invoke-static {p0, p1, v0}, Lgnu/xquery/util/NodeUtils;->resolve(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    .line 444
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p0

    .line 445
    :cond_0
    invoke-static {p0}, Lgnu/kawa/xml/Document;->parseCached(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;

    move-result-object p0

    return-object p0
.end method

.method public static documentUri(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    if-eqz p0, :cond_3

    .line 179
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_2

    .line 183
    check-cast p0, Lgnu/kawa/xml/KNode;

    .line 184
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget p0, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v0, p0}, Lgnu/xml/NodeTree;->documentUriOfPos(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    .line 185
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :cond_1
    return-object p0

    .line 182
    :cond_2
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "xs:document-uri"

    const-string v3, "node()?"

    invoke-direct {v0, v2, v1, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-object p0
.end method

.method static getIDs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 222
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_0

    .line 223
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 224
    :cond_0
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_1

    .line 226
    check-cast p0, Lgnu/mapping/Values;

    invoke-virtual {p0}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object p0

    .line 227
    array-length v0, p0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_a

    .line 228
    aget-object v1, p0, v0

    invoke-static {v1, p1}, Lgnu/xquery/util/NodeUtils;->getIDs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v0, "fn:id"

    const/4 v1, 0x1

    const-string v2, ""

    .line 232
    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 233
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_a

    add-int/lit8 v2, v1, 0x1

    .line 237
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 238
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_1

    .line 240
    :cond_2
    invoke-static {v1}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v1, v2, -0x1

    :cond_3
    :goto_2
    if-ge v2, v0, :cond_6

    .line 243
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 244
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    if-ge v1, v0, :cond_3

    .line 247
    invoke-static {v3}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_5
    move v1, v0

    goto :goto_2

    :cond_6
    :goto_3
    if-ge v1, v0, :cond_9

    .line 252
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_7

    move-object p1, v1

    goto :goto_5

    .line 258
    :cond_7
    instance-of v3, p1, Ljava/util/Stack;

    if-eqz v3, :cond_8

    .line 259
    move-object v3, p1

    check-cast v3, Ljava/util/Stack;

    goto :goto_4

    .line 262
    :cond_8
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 263
    invoke-virtual {v3, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v3

    .line 266
    :goto_4
    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_5
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    :cond_a
    return-object p1
.end method

.method public static getLang(Lgnu/kawa/xml/KNode;)Ljava/lang/String;
    .locals 3

    .line 150
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    .line 151
    iget p0, p0, Lgnu/kawa/xml/KNode;->ipos:I

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    const-string v2, "lang"

    invoke-virtual {v0, p0, v1, v2}, Lgnu/xml/NodeTree;->ancestorAttribute(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 157
    :cond_0
    invoke-static {v0, p0}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSavedCollection(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 366
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/xquery/util/NodeUtils;->getSavedCollection(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getSavedCollection(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "#default"

    .line 354
    :cond_0
    sget-object v0, Lgnu/xquery/util/NodeUtils;->collectionNamespace:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    const/4 v1, 0x0

    .line 355
    invoke-virtual {p1, v0, v1, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 357
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collection \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' not found"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static id$X(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 1

    .line 277
    check-cast p1, Lgnu/kawa/xml/KNode;

    .line 278
    iget-object v0, p1, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    .line 279
    iget p1, p1, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-static {v0, p1}, Lgnu/kawa/xml/Nodes;->root(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object p1

    check-cast p1, Lgnu/kawa/xml/KDocument;

    .line 281
    iget-object p1, p2, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    const/4 p2, 0x0

    .line 282
    invoke-static {p0, p2}, Lgnu/xquery/util/NodeUtils;->getIDs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 285
    :cond_0
    invoke-virtual {v0}, Lgnu/xml/NodeTree;->makeIDtableIfNeeded()V

    .line 286
    instance-of p2, p1, Lgnu/lists/PositionConsumer;

    if-eqz p2, :cond_2

    instance-of p2, p0, Ljava/lang/String;

    if-nez p2, :cond_1

    instance-of p2, p1, Lgnu/kawa/xml/SortedNodes;

    if-eqz p2, :cond_2

    .line 288
    :cond_1
    check-cast p1, Lgnu/lists/PositionConsumer;

    invoke-static {p0, v0, p1}, Lgnu/xquery/util/NodeUtils;->idScan(Ljava/lang/Object;Lgnu/xml/NodeTree;Lgnu/lists/PositionConsumer;)V

    goto :goto_0

    .line 289
    :cond_2
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 291
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lgnu/xml/NodeTree;->lookupID(Ljava/lang/String;)I

    move-result p0

    const/4 p2, -0x1

    if-eq p0, p2, :cond_4

    .line 293
    invoke-static {v0, p0}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object p0

    invoke-interface {p1, p0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 297
    :cond_3
    new-instance p2, Lgnu/kawa/xml/SortedNodes;

    invoke-direct {p2}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    .line 298
    invoke-static {p0, v0, p2}, Lgnu/xquery/util/NodeUtils;->idScan(Ljava/lang/Object;Lgnu/xml/NodeTree;Lgnu/lists/PositionConsumer;)V

    .line 299
    invoke-static {p2, p1}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static idScan(Ljava/lang/Object;Lgnu/xml/NodeTree;Lgnu/lists/PositionConsumer;)V
    .locals 3

    .line 305
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 307
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Lgnu/xml/NodeTree;->lookupID(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 309
    invoke-interface {p2, p1, p0}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_1

    .line 311
    :cond_0
    instance-of v0, p0, Ljava/util/Stack;

    if-eqz v0, :cond_1

    .line 313
    check-cast p0, Ljava/util/Stack;

    .line 314
    invoke-virtual {p0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 316
    invoke-virtual {p0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lgnu/xquery/util/NodeUtils;->idScan(Ljava/lang/Object;Lgnu/xml/NodeTree;Lgnu/lists/PositionConsumer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static idref(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 322
    check-cast p1, Lgnu/kawa/xml/KNode;

    .line 323
    iget-object p0, p1, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast p0, Lgnu/xml/NodeTree;

    invoke-virtual {p1}, Lgnu/kawa/xml/KNode;->getPos()I

    move-result p1

    invoke-static {p0, p1}, Lgnu/kawa/xml/Nodes;->root(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object p0

    check-cast p0, Lgnu/kawa/xml/KDocument;

    .line 325
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p0
.end method

.method public static inScopePrefixes$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 1

    .line 100
    check-cast p0, Lgnu/kawa/xml/KElement;

    .line 101
    invoke-virtual {p0}, Lgnu/kawa/xml/KElement;->getNodeNameObject()Ljava/lang/Object;

    move-result-object p0

    .line 102
    instance-of v0, p0, Lgnu/xml/XName;

    if-eqz v0, :cond_0

    .line 103
    check-cast p0, Lgnu/xml/XName;

    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-static {p0, p1}, Lgnu/xquery/util/NodeUtils;->prefixesFromNodetype(Lgnu/xml/XName;Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    const-string p1, "xml"

    invoke-interface {p0, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static lang(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    if-eqz p0, :cond_1

    .line 163
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {p0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    .line 167
    :goto_1
    check-cast p1, Lgnu/kawa/xml/KNode;

    invoke-static {p1}, Lgnu/xquery/util/NodeUtils;->getLang(Lgnu/kawa/xml/KNode;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    return v0

    .line 170
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 172
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_3

    .line 173
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 174
    :cond_3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static localName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 42
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    const-string v1, ""

    if-eq p0, v0, :cond_5

    if-nez p0, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_4

    .line 46
    check-cast p0, Lgnu/kawa/xml/KNode;

    invoke-virtual {p0}, Lgnu/kawa/xml/KNode;->getNodeNameObject()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 47
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_2

    .line 50
    check-cast p0, Lgnu/mapping/Symbol;

    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 51
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v1

    .line 45
    :cond_4
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "local-name"

    const-string v3, "node()?"

    invoke-direct {v0, v2, v1, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    return-object v1
.end method

.method public static name(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 32
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    const-string v1, ""

    if-eq p0, v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    check-cast p0, Lgnu/kawa/xml/KNode;

    invoke-virtual {p0}, Lgnu/kawa/xml/KNode;->getNodeNameObject()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 35
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static namespaceURI(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 56
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    .line 58
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_0

    .line 60
    check-cast p0, Lgnu/kawa/xml/KNode;

    invoke-virtual {p0}, Lgnu/kawa/xml/KNode;->getNodeNameObject()Ljava/lang/Object;

    move-result-object p0

    .line 61
    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_1

    .line 62
    invoke-static {p0}, Lgnu/xquery/util/QNameUtils;->namespaceURIFromQName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 59
    :cond_0
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "namespace-uri"

    const-string v3, "node()?"

    invoke-direct {v0, v2, v1, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static nilled(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    if-eqz p0, :cond_3

    .line 190
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_2

    .line 194
    instance-of p0, p0, Lgnu/kawa/xml/KElement;

    if-nez p0, :cond_1

    .line 195
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p0

    .line 196
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 193
    :cond_2
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "nilled"

    const-string v3, "node()?"

    invoke-direct {v0, v2, v1, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static nodeName(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 19
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_2

    .line 23
    check-cast p0, Lgnu/kawa/xml/KNode;

    invoke-virtual {p0}, Lgnu/kawa/xml/KNode;->getNodeSymbol()Lgnu/mapping/Symbol;

    move-result-object p0

    if-nez p0, :cond_1

    .line 25
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :cond_1
    return-object p0

    .line 22
    :cond_2
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "node-name"

    const-string v3, "node()?"

    invoke-direct {v0, v2, v1, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static prefixesFromNodetype(Lgnu/xml/XName;Lgnu/lists/Consumer;)V
    .locals 4

    .line 69
    invoke-virtual {p0}, Lgnu/xml/XName;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object p0

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_4

    .line 74
    invoke-virtual {v0}, Lgnu/xml/NamespaceBinding;->getUri()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 77
    :cond_0
    invoke-virtual {v0}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    :goto_1
    if-ne v2, v0, :cond_2

    if-nez v1, :cond_1

    const-string v1, ""

    .line 84
    :cond_1
    invoke-interface {p1, v1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_2

    .line 87
    :cond_2
    invoke-virtual {v2}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-ne v3, v1, :cond_3

    .line 72
    :goto_2
    invoke-virtual {v0}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {v2}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v2

    goto :goto_1

    :cond_4
    return-void
.end method

.method static resolve(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 423
    instance-of p1, p0, Ljava/io/File;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    instance-of p1, p0, Lgnu/text/Path;

    if-nez p1, :cond_0

    instance-of p1, p0, Ljava/net/URI;

    if-nez p1, :cond_0

    instance-of p1, p0, Ljava/net/URL;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 429
    invoke-static {p0, p2, p1, v0}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 430
    :cond_0
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    .line 432
    :cond_1
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object p1

    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p0

    invoke-virtual {p1, p0}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static root(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    if-eqz p0, :cond_2

    .line 126
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_1

    .line 130
    check-cast p0, Lgnu/kawa/xml/KNode;

    .line 131
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    invoke-virtual {p0}, Lgnu/kawa/xml/KNode;->getPos()I

    move-result p0

    invoke-static {v0, p0}, Lgnu/kawa/xml/Nodes;->root(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object p0

    return-object p0

    .line 129
    :cond_1
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "root"

    const-string v3, "node()?"

    invoke-direct {v0, v2, v1, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static rootDocument(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;
    .locals 4

    .line 139
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    const/4 v1, 0x1

    const-string v2, "root-document"

    if-eqz v0, :cond_1

    .line 141
    move-object v0, p0

    check-cast v0, Lgnu/kawa/xml/KNode;

    .line 142
    iget-object v3, v0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v3, Lgnu/xml/NodeTree;

    invoke-virtual {v0}, Lgnu/kawa/xml/KNode;->getPos()I

    move-result v0

    invoke-static {v3, v0}, Lgnu/kawa/xml/Nodes;->root(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v0

    .line 143
    instance-of v3, v0, Lgnu/kawa/xml/KDocument;

    if-eqz v3, :cond_0

    .line 145
    check-cast v0, Lgnu/kawa/xml/KDocument;

    return-object v0

    .line 144
    :cond_0
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v3, "document()"

    invoke-direct {v0, v2, v1, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v3, "node()?"

    invoke-direct {v0, v2, v1, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method

.method public static setSavedCollection(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 344
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/xquery/util/NodeUtils;->setSavedCollection(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)V

    return-void
.end method

.method public static setSavedCollection(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "#default"

    .line 337
    :cond_0
    sget-object v0, Lgnu/xquery/util/NodeUtils;->collectionNamespace:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    const/4 v0, 0x0

    .line 338
    invoke-virtual {p2, p0, v0, p1}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
