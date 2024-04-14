.class public Lgnu/xml/XMLFilter;
.super Ljava/lang/Object;
.source "XMLFilter.java"

# interfaces
.implements Lorg/xml/sax/DocumentHandler;
.implements Lorg/xml/sax/ContentHandler;
.implements Lgnu/text/SourceLocator;
.implements Lgnu/lists/XConsumer;
.implements Lgnu/lists/PositionConsumer;


# static fields
.field public static final COPY_NAMESPACES_INHERIT:I = 0x2

.field public static final COPY_NAMESPACES_PRESERVE:I = 0x1

.field private static final SAW_KEYWORD:I = 0x1

.field private static final SAW_WORD:I = 0x2


# instance fields
.field attrCount:I

.field attrLocalName:Ljava/lang/String;

.field attrPrefix:Ljava/lang/String;

.field base:Lgnu/lists/Consumer;

.field public transient copyNamespacesMode:I

.field currentNamespacePrefix:Ljava/lang/String;

.field protected ignoringLevel:I

.field in:Lgnu/text/LineBufferedReader;

.field inStartTag:Z

.field locator:Lgnu/text/SourceLocator;

.field mappingTable:[Lgnu/xml/MappingInfo;

.field mappingTableMask:I

.field private messages:Lgnu/text/SourceMessages;

.field mismatchReported:Z

.field namespaceBindings:Lgnu/xml/NamespaceBinding;

.field public namespacePrefixes:Z

.field protected nesting:I

.field public out:Lgnu/lists/Consumer;

.field previous:I

.field startIndexes:[I

.field protected stringizingElementNesting:I

.field protected stringizingLevel:I

.field tlist:Lgnu/lists/TreeList;

.field workStack:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgnu/lists/Consumer;)V
    .locals 4

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    const/4 v1, 0x0

    .line 73
    iput v1, p0, Lgnu/xml/XMLFilter;->previous:I

    const/4 v2, -0x1

    .line 87
    iput v2, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    const/4 v3, 0x0

    .line 95
    iput-object v3, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    .line 100
    iput v2, p0, Lgnu/xml/XMLFilter;->attrCount:I

    .line 115
    iput-boolean v1, p0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    const/16 v1, 0x80

    new-array v1, v1, [Lgnu/xml/MappingInfo;

    .line 126
    iput-object v1, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    .line 127
    array-length v1, v1

    sub-int/2addr v1, v0

    iput v1, p0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    .line 717
    iput-object p1, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .line 718
    iput-object p1, p0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    .line 719
    instance-of v0, p1, Lgnu/xml/NodeTree;

    if-eqz v0, :cond_0

    .line 720
    check-cast p1, Lgnu/xml/NodeTree;

    iput-object p1, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    goto :goto_0

    .line 722
    :cond_0
    new-instance p1, Lgnu/lists/TreeList;

    invoke-direct {p1}, Lgnu/lists/TreeList;-><init>()V

    iput-object p1, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    .line 724
    :goto_0
    sget-object p1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object p1, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    return-void
.end method

.method public static duplicateAttributeMessage(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1445
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "duplicate attribute: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1446
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1447
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x7b

    .line 1449
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v2, 0x7d

    .line 1450
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1453
    :cond_0
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_1

    const-string p0, " in <"

    .line 1456
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1457
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 p0, 0x3e

    .line 1458
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1460
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private ensureSpaceInStartIndexes(I)V
    .locals 3

    .line 1430
    iget-object v0, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    if-nez v0, :cond_0

    const/16 p1, 0x14

    new-array p1, p1, [I

    .line 1432
    iput-object p1, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    goto :goto_0

    .line 1434
    :cond_0
    array-length v1, v0

    if-lt p1, v1, :cond_1

    .line 1436
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 1437
    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1438
    iput-object v1, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    :cond_1
    :goto_0
    return-void
.end method

.method private ensureSpaceInWorkStack(I)V
    .locals 3

    .line 1416
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 p1, 0x14

    new-array p1, p1, [Ljava/lang/Object;

    .line 1418
    iput-object p1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    goto :goto_0

    .line 1420
    :cond_0
    array-length v1, v0

    if-lt p1, v1, :cond_1

    .line 1422
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1423
    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1424
    iput-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private mergeHelper(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 2

    .line 905
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    if-ne p2, v0, :cond_0

    return-object p1

    .line 907
    :cond_0
    iget-object v0, p2, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    invoke-direct {p0, p1, v0}, Lgnu/xml/XMLFilter;->mergeHelper(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object p1

    .line 908
    iget-object v0, p2, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    if-nez p1, :cond_2

    if-nez v0, :cond_1

    return-object p1

    .line 913
    :cond_1
    sget-object p1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    .line 915
    :cond_2
    iget-object p2, p2, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    .line 916
    invoke-virtual {p1, p2}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    if-nez v0, :cond_4

    goto :goto_0

    .line 917
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    return-object p1

    .line 919
    :cond_4
    invoke-virtual {p0, p2, v0, p1}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object p1

    return-object p1
.end method

.method private resolve(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    return-object v0

    .line 329
    :cond_0
    iget-object p2, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    invoke-virtual {p2, p1}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p2

    :cond_1
    if-eqz p1, :cond_2

    const/16 p2, 0x65

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown namespace prefix \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private startAttributeCommon()Z
    .locals 4

    .line 924
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 925
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    .line 926
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    const/4 v2, 0x0

    if-lez v0, :cond_1

    return v2

    .line 929
    :cond_1
    iget v0, p0, Lgnu/xml/XMLFilter;->attrCount:I

    if-gez v0, :cond_2

    .line 930
    iput v2, p0, Lgnu/xml/XMLFilter;->attrCount:I

    .line 931
    :cond_2
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget v2, p0, Lgnu/xml/XMLFilter;->attrCount:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 932
    iget v0, p0, Lgnu/xml/XMLFilter;->attrCount:I

    invoke-direct {p0, v0}, Lgnu/xml/XMLFilter;->ensureSpaceInStartIndexes(I)V

    .line 933
    iget-object v0, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    iget v2, p0, Lgnu/xml/XMLFilter;->attrCount:I

    iget-object v3, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget v3, v3, Lgnu/lists/TreeList;->gapStart:I

    aput v3, v0, v2

    .line 934
    iget v0, p0, Lgnu/xml/XMLFilter;->attrCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/xml/XMLFilter;->attrCount:I

    return v1
.end method


# virtual methods
.method public bridge synthetic append(C)Lgnu/lists/Consumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->append(C)Lgnu/xml/XMLFilter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;)Lgnu/xml/XMLFilter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;

    move-result-object p1

    return-object p1
.end method

.method public append(C)Lgnu/xml/XMLFilter;
    .locals 0

    .line 1293
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->write(I)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/xml/XMLFilter;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    const/4 v0, 0x0

    .line 1301
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    sub-int/2addr p3, p2

    .line 1309
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write(Ljava/lang/CharSequence;II)V

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->append(C)Lgnu/xml/XMLFilter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;)Lgnu/xml/XMLFilter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;

    move-result-object p1

    return-object p1
.end method

.method public beginEntity(Ljava/lang/Object;)V
    .locals 2

    .line 1280
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v1, v0, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_0

    .line 1281
    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0, p1}, Lgnu/lists/XConsumer;->beginEntity(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1532
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write([CII)V

    return-void
.end method

.method protected checkValidComment([CII)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_2

    add-int v2, p2, p3

    .line 1133
    aget-char v2, p1, v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const/16 p1, 0x65

    const-string p2, "consecutive or final hyphen in XML comment"

    .line 1136
    invoke-virtual {p0, p1, p2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    goto :goto_2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method protected checkWriteAtomic()Z
    .locals 2

    const/4 v0, 0x0

    .line 602
    iput v0, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 603
    iget v1, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v1, :cond_0

    return v0

    .line 605
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    const/4 v0, 0x1

    return v0
.end method

.method closeStartTag()V
    .locals 15

    .line 339
    iget v0, p0, Lgnu/xml/XMLFilter;->attrCount:I

    if-ltz v0, :cond_34

    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v0, :cond_0

    goto/16 :goto_19

    :cond_0
    const/4 v0, 0x0

    .line 341
    iput-boolean v0, p0, Lgnu/xml/XMLFilter;->inStartTag:Z

    .line 342
    iput v0, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 344
    iget-object v1, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 345
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 346
    :cond_1
    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-nez v1, :cond_2

    sget-object v1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x2

    aget-object v1, v2, v1

    check-cast v1, Lgnu/xml/NamespaceBinding;

    .line 349
    :goto_0
    iget-object v2, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    const/4 v3, 0x0

    .line 353
    :goto_1
    iget v4, p0, Lgnu/xml/XMLFilter;->attrCount:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gt v3, v4, :cond_10

    .line 355
    iget-object v4, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v7, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/2addr v7, v3

    sub-int/2addr v7, v6

    aget-object v4, v4, v7

    .line 356
    instance-of v7, v4, Lgnu/mapping/Symbol;

    if-eqz v7, :cond_f

    .line 358
    check-cast v4, Lgnu/mapping/Symbol;

    .line 359
    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    if-ne v7, v8, :cond_3

    move-object v7, v5

    .line 362
    :cond_3
    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    if-ne v9, v8, :cond_4

    goto :goto_2

    :cond_4
    move-object v5, v9

    :goto_2
    if-lez v3, :cond_5

    if-nez v7, :cond_5

    if-nez v5, :cond_5

    goto/16 :goto_8

    :cond_5
    move-object v9, v2

    const/4 v10, 0x0

    :goto_3
    if-ne v9, v1, :cond_6

    const/4 v10, 0x1

    :cond_6
    if-nez v9, :cond_8

    if-nez v7, :cond_7

    if-eqz v5, :cond_f

    .line 375
    :cond_7
    invoke-virtual {p0, v7, v5, v2}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v2

    goto :goto_8

    .line 378
    :cond_8
    iget-object v11, v9, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    if-ne v11, v7, :cond_e

    .line 380
    iget-object v9, v9, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    if-eq v9, v5, :cond_f

    if-eqz v10, :cond_9

    .line 383
    invoke-virtual {p0, v7, v5, v2}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v2

    goto :goto_8

    :cond_9
    move-object v7, v2

    :goto_4
    if-nez v7, :cond_b

    const/4 v7, 0x1

    .line 396
    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_ns_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    .line 397
    invoke-virtual {v2, v9}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 402
    :cond_b
    iget-object v9, v7, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    if-ne v9, v5, :cond_d

    .line 404
    iget-object v9, v7, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    .line 405
    invoke-virtual {v2, v9}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-ne v10, v5, :cond_d

    .line 409
    :goto_6
    invoke-virtual {p0, v9, v5, v2}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v2

    .line 410
    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v4

    if-nez v5, :cond_c

    goto :goto_7

    :cond_c
    move-object v8, v5

    .line 413
    :goto_7
    iget-object v5, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v7, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/2addr v7, v3

    sub-int/2addr v7, v6

    invoke-static {v8, v4, v9}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    aput-object v4, v5, v7

    goto :goto_8

    .line 389
    :cond_d
    iget-object v7, v7, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_4

    .line 368
    :cond_e
    iget-object v9, v9, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_3

    :cond_f
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_10
    const/4 v1, 0x0

    .line 424
    :goto_9
    iget v3, p0, Lgnu/xml/XMLFilter;->attrCount:I

    if-gt v1, v3, :cond_30

    .line 426
    iget-object v3, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v4, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/2addr v4, v1

    sub-int/2addr v4, v6

    aget-object v3, v3, v4

    .line 430
    instance-of v4, v3, Lgnu/xml/MappingInfo;

    if-nez v4, :cond_12

    iget-object v7, p0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    iget-object v8, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    if-ne v7, v8, :cond_11

    goto :goto_a

    .line 523
    :cond_11
    move-object v4, v3

    check-cast v4, Lgnu/mapping/Symbol;

    .line 524
    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    .line 525
    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v4

    move-object v12, v5

    const/4 v10, 0x0

    goto/16 :goto_10

    :cond_12
    :goto_a
    if-eqz v4, :cond_17

    .line 434
    move-object v4, v3

    check-cast v4, Lgnu/xml/MappingInfo;

    .line 435
    iget-object v7, v4, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 436
    iget-object v8, v4, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    if-lez v1, :cond_15

    const-string v9, "xmlns"

    if-nez v7, :cond_13

    if-eq v8, v9, :cond_14

    :cond_13
    if-ne v7, v9, :cond_15

    :cond_14
    const-string v9, "(namespace-node)"

    const/4 v10, 0x1

    goto :goto_c

    :cond_15
    if-lez v1, :cond_16

    const/4 v9, 0x1

    goto :goto_b

    :cond_16
    const/4 v9, 0x0

    .line 445
    :goto_b
    invoke-direct {p0, v7, v9}, Lgnu/xml/XMLFilter;->resolve(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    goto :goto_c

    .line 449
    :cond_17
    move-object v4, v3

    check-cast v4, Lgnu/mapping/Symbol;

    .line 450
    invoke-virtual {p0, v4}, Lgnu/xml/XMLFilter;->lookupTag(Lgnu/mapping/Symbol;)Lgnu/xml/MappingInfo;

    move-result-object v7

    .line 451
    iget-object v8, v7, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 452
    iget-object v9, v7, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 453
    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    move-object v14, v9

    move-object v9, v4

    move-object v4, v7

    move-object v7, v8

    move-object v8, v14

    .line 455
    :goto_c
    iget v4, v4, Lgnu/xml/MappingInfo;->tagHash:I

    .line 456
    iget v11, p0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    and-int/2addr v11, v4

    .line 458
    iget-object v12, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v12, v12, v11

    :goto_d
    if-nez v12, :cond_18

    .line 466
    new-instance v12, Lgnu/xml/MappingInfo;

    invoke-direct {v12}, Lgnu/xml/MappingInfo;-><init>()V

    .line 467
    iput v4, v12, Lgnu/xml/MappingInfo;->tagHash:I

    .line 468
    iput-object v7, v12, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 469
    iput-object v8, v12, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 470
    iget-object v4, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v4, v4, v11

    iput-object v4, v12, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 471
    iget-object v4, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aput-object v12, v4, v11

    .line 472
    iput-object v9, v12, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 473
    invoke-static {v9, v8, v7}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    iput-object v4, v12, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    if-nez v1, :cond_1e

    .line 476
    new-instance v4, Lgnu/xml/XName;

    iget-object v7, v12, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    invoke-direct {v4, v7, v2}, Lgnu/xml/XName;-><init>(Lgnu/mapping/Symbol;Lgnu/xml/NamespaceBinding;)V

    .line 478
    iput-object v4, v12, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    .line 479
    iput-object v2, v12, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    goto :goto_f

    .line 483
    :cond_18
    iget v13, v12, Lgnu/xml/MappingInfo;->tagHash:I

    if-ne v13, v4, :cond_2f

    iget-object v13, v12, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    if-ne v13, v8, :cond_2f

    iget-object v13, v12, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-ne v13, v7, :cond_2f

    .line 487
    iget-object v13, v12, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    if-nez v13, :cond_19

    .line 489
    iput-object v9, v12, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 490
    invoke-static {v9, v8, v7}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v13

    iput-object v13, v12, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    goto :goto_e

    .line 492
    :cond_19
    iget-object v13, v12, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    if-eq v13, v9, :cond_1a

    goto/16 :goto_17

    .line 494
    :cond_1a
    iget-object v13, v12, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    if-nez v13, :cond_1b

    .line 495
    invoke-static {v9, v8, v7}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v13

    iput-object v13, v12, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    :cond_1b
    :goto_e
    if-nez v1, :cond_1d

    .line 498
    iget-object v13, v12, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    if-eq v13, v2, :cond_1c

    iget-object v13, v12, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    if-nez v13, :cond_2f

    .line 501
    :cond_1c
    iget-object v4, v12, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    .line 502
    iput-object v2, v12, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    if-nez v4, :cond_1e

    .line 505
    new-instance v4, Lgnu/xml/XName;

    iget-object v7, v12, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    invoke-direct {v4, v7, v2}, Lgnu/xml/XName;-><init>(Lgnu/mapping/Symbol;Lgnu/xml/NamespaceBinding;)V

    .line 507
    iput-object v4, v12, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    goto :goto_f

    .line 514
    :cond_1d
    iget-object v4, v12, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    .line 519
    :cond_1e
    :goto_f
    iget-object v4, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v7, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/2addr v7, v1

    sub-int/2addr v7, v6

    aput-object v12, v4, v7

    move-object v4, v8

    move-object v7, v9

    :goto_10
    const/4 v8, 0x1

    :goto_11
    if-ge v8, v1, :cond_22

    .line 532
    iget-object v9, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v11, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/2addr v11, v8

    sub-int/2addr v11, v6

    aget-object v9, v9, v11

    .line 534
    instance-of v11, v9, Lgnu/mapping/Symbol;

    if-eqz v11, :cond_1f

    .line 535
    check-cast v9, Lgnu/mapping/Symbol;

    goto :goto_12

    .line 536
    :cond_1f
    instance-of v11, v9, Lgnu/xml/MappingInfo;

    if-eqz v11, :cond_21

    .line 537
    check-cast v9, Lgnu/xml/MappingInfo;

    iget-object v9, v9, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    .line 540
    :goto_12
    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v11

    if-ne v4, v11, :cond_21

    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v11

    if-ne v7, v11, :cond_21

    .line 543
    iget-object v11, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v13, p0, Lgnu/xml/XMLFilter;->nesting:I

    sub-int/2addr v13, v6

    aget-object v11, v11, v13

    .line 544
    instance-of v13, v11, Lgnu/xml/MappingInfo;

    if-eqz v13, :cond_20

    .line 545
    check-cast v11, Lgnu/xml/MappingInfo;

    iget-object v11, v11, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    :cond_20
    const/16 v13, 0x65

    .line 546
    invoke-static {v9, v11}, Lgnu/xml/XMLFilter;->duplicateAttributeMessage(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v13, v9}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    :cond_21
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    .line 550
    :cond_22
    iget-object v4, p0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    iget-object v7, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    if-ne v4, v7, :cond_28

    if-nez v1, :cond_23

    .line 552
    iget-object v3, v12, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    goto :goto_13

    :cond_23
    iget-object v3, v12, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    .line 553
    :goto_13
    iget v4, v12, Lgnu/xml/MappingInfo;->index:I

    if-lez v4, :cond_24

    .line 554
    iget-object v7, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget-object v7, v7, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v7, v7, v4

    if-eq v7, v3, :cond_25

    .line 557
    :cond_24
    iget-object v4, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    invoke-virtual {v4, v3}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v4

    .line 558
    iput v4, v12, Lgnu/xml/MappingInfo;->index:I

    :cond_25
    if-nez v1, :cond_26

    .line 561
    iget-object v3, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget v7, v3, Lgnu/lists/TreeList;->gapEnd:I

    invoke-virtual {v3, v7, v4}, Lgnu/lists/TreeList;->setElementName(II)V

    goto :goto_16

    :cond_26
    if-eqz v10, :cond_27

    .line 562
    iget-boolean v3, p0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    if-eqz v3, :cond_2e

    .line 563
    :cond_27
    iget-object v3, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget-object v7, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    invoke-virtual {v3, v7, v4}, Lgnu/lists/TreeList;->setAttributeName(II)V

    goto :goto_16

    :cond_28
    if-nez v12, :cond_29

    goto :goto_14

    :cond_29
    if-nez v1, :cond_2a

    .line 567
    iget-object v3, v12, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    goto :goto_14

    :cond_2a
    iget-object v3, v12, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    :goto_14
    if-nez v1, :cond_2b

    .line 570
    iget-object v4, p0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    invoke-interface {v4, v3}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    goto :goto_16

    :cond_2b
    if-eqz v10, :cond_2c

    .line 571
    iget-boolean v4, p0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    if-eqz v4, :cond_2e

    .line 573
    :cond_2c
    iget-object v4, p0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    invoke-interface {v4, v3}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    .line 574
    iget-object v3, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    add-int/lit8 v4, v1, -0x1

    aget v4, v3, v4

    .line 575
    iget v7, p0, Lgnu/xml/XMLFilter;->attrCount:I

    if-ge v1, v7, :cond_2d

    aget v3, v3, v1

    goto :goto_15

    :cond_2d
    iget-object v3, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget v3, v3, Lgnu/lists/TreeList;->gapStart:I

    .line 576
    :goto_15
    iget-object v7, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    add-int/lit8 v4, v4, 0x5

    sub-int/2addr v3, v6

    iget-object v8, p0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    invoke-virtual {v7, v4, v3, v8}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    .line 579
    iget-object v3, p0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    invoke-interface {v3}, Lgnu/lists/Consumer;->endAttribute()V

    :cond_2e
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    .line 461
    :cond_2f
    :goto_17
    iget-object v12, v12, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    goto/16 :goto_d

    .line 585
    :cond_30
    iget-object v0, p0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    instance-of v1, v0, Lgnu/kawa/sax/ContentConsumer;

    if-eqz v1, :cond_31

    .line 586
    check-cast v0, Lgnu/kawa/sax/ContentConsumer;

    invoke-virtual {v0}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    :cond_31
    const/4 v0, 0x1

    .line 589
    :goto_18
    iget v1, p0, Lgnu/xml/XMLFilter;->attrCount:I

    if-gt v0, v1, :cond_32

    .line 590
    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v2, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v6

    aput-object v5, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 591
    :cond_32
    iget-object v0, p0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    iget-object v1, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    if-eq v0, v1, :cond_33

    .line 593
    iput-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .line 595
    invoke-virtual {v1}, Lgnu/lists/TreeList;->clear()V

    :cond_33
    const/4 v0, -0x1

    .line 597
    iput v0, p0, Lgnu/xml/XMLFilter;->attrCount:I

    :cond_34
    :goto_19
    return-void
.end method

.method public commentFromParser([CII)V
    .locals 2

    .line 1157
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v0, :cond_0

    .line 1159
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1160
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v1, v0, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_1

    .line 1161
    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/XConsumer;->writeComment([CII)V

    goto :goto_0

    .line 1163
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_1

    .line 1164
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public consume(Lgnu/lists/SeqPosition;)V
    .locals 1

    .line 653
    iget-object v0, p1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget p1, p1, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {p0, v0, p1}, Lgnu/xml/XMLFilter;->writePosition(Lgnu/lists/AbstractSequence;I)V

    return-void
.end method

.method public emitCharacterReference(I[CII)V
    .locals 0

    const/high16 p2, 0x10000

    if-lt p1, p2, :cond_0

    .line 1122
    invoke-static {p1, p0}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    goto :goto_0

    .line 1124
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->write(I)V

    :goto_0
    return-void
.end method

.method public emitDoctypeDecl([CIIII)V
    .locals 0

    return-void
.end method

.method public emitEndAttributes()V
    .locals 1

    .line 1005
    iget-object v0, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 1007
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    return-void
.end method

.method public emitEndElement([CII)V
    .locals 6

    .line 1015
    iget-object v0, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    const/16 v1, 0x65

    if-eqz v0, :cond_0

    const-string v0, "unclosed attribute"

    .line 1017
    invoke-virtual {p0, v1, v0}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1018
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 1020
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->inElement()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "unmatched end element"

    .line 1022
    invoke-virtual {p0, v1, p1}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_4

    .line 1027
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->lookupTag([CII)Lgnu/xml/MappingInfo;

    move-result-object v0

    .line 1028
    iget-object v2, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v3, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    .line 1029
    instance-of v3, v2, Lgnu/xml/MappingInfo;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lgnu/xml/XMLFilter;->mismatchReported:Z

    if-nez v3, :cond_4

    .line 1031
    check-cast v2, Lgnu/xml/MappingInfo;

    .line 1032
    iget-object v3, v0, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    iget-object v5, v2, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    if-ne v3, v5, :cond_2

    iget-object v0, v0, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    iget-object v3, v2, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-eq v0, v3, :cond_4

    .line 1034
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "</"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const-string p1, "> matching <"

    .line 1036
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1037
    iget-object p1, v2, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 1040
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x3a

    .line 1041
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1043
    :cond_3
    iget-object p1, v2, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x3e

    .line 1044
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1045
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1046
    iput-boolean v4, p0, Lgnu/xml/XMLFilter;->mismatchReported:Z

    .line 1050
    :cond_4
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1051
    iget p1, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-gtz p1, :cond_5

    return-void

    .line 1053
    :cond_5
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endElement()V

    return-void
.end method

.method public emitEntityReference([CII)V
    .locals 6

    .line 1088
    aget-char v0, p1, p2

    const/16 v1, 0x74

    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    add-int/lit8 v3, p2, 0x1

    .line 1090
    aget-char v3, p1, v3

    if-ne v3, v1, :cond_1

    const/16 p1, 0x6c

    if-ne v0, p1, :cond_0

    const/16 p1, 0x3c

    goto :goto_0

    :cond_0
    const/16 p1, 0x67

    if-ne v0, p1, :cond_4

    const/16 p1, 0x3e

    goto :goto_0

    :cond_1
    const/16 v3, 0x70

    const/16 v4, 0x61

    const/4 v5, 0x3

    if-ne p3, v5, :cond_2

    if-ne v0, v4, :cond_4

    add-int/lit8 p3, p2, 0x1

    .line 1100
    aget-char p3, p1, p3

    const/16 v0, 0x6d

    if-ne p3, v0, :cond_4

    add-int/2addr p2, v2

    aget-char p1, p1, p2

    if-ne p1, v3, :cond_4

    const/16 p1, 0x26

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne p3, v2, :cond_4

    add-int/lit8 p3, p2, 0x1

    .line 1105
    aget-char p3, p1, p3

    add-int/lit8 v2, p2, 0x2

    .line 1106
    aget-char v2, p1, v2

    add-int/2addr p2, v5

    .line 1107
    aget-char p1, p1, p2

    const/16 p2, 0x71

    const/16 v5, 0x6f

    if-ne v0, p2, :cond_3

    const/16 p2, 0x75

    if-ne p3, p2, :cond_3

    if-ne v2, v5, :cond_3

    if-ne p1, v1, :cond_3

    const/16 p1, 0x22

    goto :goto_0

    :cond_3
    if-ne v0, v4, :cond_4

    if-ne p3, v3, :cond_4

    if-ne v2, v5, :cond_4

    const/16 p2, 0x73

    if-ne p1, p2, :cond_4

    const/16 p1, 0x27

    goto :goto_0

    :cond_4
    const/16 p1, 0x3f

    .line 1113
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->write(I)V

    return-void
.end method

.method public emitStartAttribute([CII)V
    .locals 1

    .line 972
    iget-object v0, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 973
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 974
    :cond_0
    invoke-direct {p0}, Lgnu/xml/XMLFilter;->startAttributeCommon()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 977
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->lookupTag([CII)Lgnu/xml/MappingInfo;

    move-result-object p1

    .line 978
    iget-object p2, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget p3, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget v0, p0, Lgnu/xml/XMLFilter;->attrCount:I

    add-int/2addr p3, v0

    add-int/lit8 p3, p3, -0x1

    aput-object p1, p2, p3

    .line 979
    iget-object p2, p1, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 980
    iget-object p1, p1, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 981
    iput-object p1, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    .line 982
    iput-object p2, p0, Lgnu/xml/XMLFilter;->attrPrefix:Ljava/lang/String;

    const-string p3, "xmlns"

    if-eqz p2, :cond_2

    if-ne p2, p3, :cond_3

    .line 987
    iput-object p1, p0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-ne p1, p3, :cond_3

    if-nez p2, :cond_3

    const-string p1, ""

    .line 994
    iput-object p1, p0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    .line 997
    :cond_3
    :goto_0
    iget-object p1, p0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    if-eqz p1, :cond_5

    .line 998
    :cond_4
    iget-object p1, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lgnu/lists/TreeList;->startAttribute(I)V

    :cond_5
    return-void
.end method

.method public emitStartElement([CII)V
    .locals 0

    .line 840
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 841
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->lookupTag([CII)Lgnu/xml/MappingInfo;

    move-result-object p1

    .line 842
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->startElementCommon()V

    .line 843
    iget p2, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 p2, p2, -0x1

    invoke-direct {p0, p2}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 844
    iget-object p2, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget p3, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 p3, p3, -0x1

    aput-object p1, p2, p3

    return-void
.end method

.method public endAttribute()V
    .locals 12

    .line 232
    iget-object v0, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    iget v1, p0, Lgnu/xml/XMLFilter;->previous:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 236
    iput v2, p0, Lgnu/xml/XMLFilter;->previous:I

    return-void

    .line 239
    :cond_1
    iget v1, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-ltz v1, :cond_2

    .line 240
    iget v1, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    sub-int/2addr v1, v3

    iput v1, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    .line 241
    :cond_2
    iget v1, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    sub-int/2addr v1, v3

    iput v1, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v1, :cond_c

    const v1, 0x9fff

    const v4, 0xffff

    const-string v5, "id"

    if-ne v0, v5, :cond_6

    .line 243
    iget-object v0, p0, Lgnu/xml/XMLFilter;->attrPrefix:Ljava/lang/String;

    const-string v5, "xml"

    if-ne v0, v5, :cond_6

    .line 246
    iget-object v0, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    iget v5, p0, Lgnu/xml/XMLFilter;->attrCount:I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    add-int/lit8 v0, v0, 0x5

    .line 248
    iget-object v5, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget v5, v5, Lgnu/lists/TreeList;->gapStart:I

    .line 249
    iget-object v6, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    move v7, v0

    :goto_0
    if-lt v7, v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v7, 0x1

    .line 257
    aget-char v7, v6, v7

    and-int v9, v7, v4

    if-gt v9, v1, :cond_5

    const/16 v9, 0x9

    if-eq v7, v9, :cond_5

    const/16 v9, 0xd

    if-eq v7, v9, :cond_5

    const/16 v9, 0xa

    if-eq v7, v9, :cond_5

    const/16 v9, 0x20

    if-ne v7, v9, :cond_4

    if-eq v8, v5, :cond_5

    .line 258
    aget-char v7, v6, v8

    if-ne v7, v9, :cond_4

    goto :goto_1

    :cond_4
    move v7, v8

    goto :goto_0

    .line 268
    :cond_5
    :goto_1
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 269
    iget-object v7, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    invoke-virtual {v7, v0, v5, v6}, Lgnu/lists/TreeList;->stringValue(IILjava/lang/StringBuffer;)V

    .line 270
    iget-object v5, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iput v0, v5, Lgnu/lists/TreeList;->gapStart:I

    .line 271
    iget-object v0, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lgnu/lists/TreeList;->write(Ljava/lang/String;)V

    :cond_6
    :goto_2
    const/4 v7, 0x0

    .line 278
    iput-object v7, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    .line 279
    iput-object v7, p0, Lgnu/xml/XMLFilter;->attrPrefix:Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    if-eqz v0, :cond_8

    .line 281
    :cond_7
    iget-object v0, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    invoke-virtual {v0}, Lgnu/lists/TreeList;->endAttribute()V

    .line 282
    :cond_8
    iget-object v0, p0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 285
    iget-object v0, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    iget v5, p0, Lgnu/xml/XMLFilter;->attrCount:I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    .line 287
    iget-object v3, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget v3, v3, Lgnu/lists/TreeList;->gapStart:I

    sub-int v5, v3, v0

    .line 289
    iget-object v6, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    move v8, v0

    const/4 v9, 0x0

    :goto_3
    if-ge v8, v3, :cond_a

    .line 297
    aget-char v10, v6, v8

    and-int v11, v10, v4

    if-le v11, v1, :cond_9

    .line 300
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 301
    iget-object v4, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    invoke-virtual {v4, v0, v3, v1}, Lgnu/lists/TreeList;->stringValue(IILjava/lang/StringBuffer;)V

    .line 302
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 304
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 305
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    new-array v5, v5, [C

    .line 306
    invoke-virtual {v1, v2, v4, v5, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    move-object v2, v5

    move v5, v3

    const/4 v3, 0x0

    goto :goto_4

    :cond_9
    mul-int/lit8 v9, v9, 0x1f

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_a
    move v3, v0

    move v4, v5

    move-object v2, v6

    move v5, v9

    .line 311
    :goto_4
    iget-object v1, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iput v0, v1, Lgnu/lists/TreeList;->gapStart:I

    .line 313
    iget-object v0, p0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_b

    move-object v1, v7

    goto :goto_5

    :cond_b
    move-object v1, v0

    .line 315
    :goto_5
    iget-object v6, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lgnu/xml/XMLFilter;->lookupNamespaceBinding(Ljava/lang/String;[CIIILgnu/xml/NamespaceBinding;)Lgnu/xml/MappingInfo;

    move-result-object v0

    .line 318
    iget-object v0, v0, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 320
    iput-object v7, p0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    :cond_c
    return-void
.end method

.method public endDocument()V
    .locals 4

    .line 1248
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v0, :cond_0

    .line 1250
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    return-void

    .line 1253
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    .line 1254
    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    aget-object v2, v1, v0

    check-cast v2, Lgnu/xml/NamespaceBinding;

    iput-object v2, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    const/4 v2, 0x0

    .line 1255
    aput-object v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    .line 1256
    aput-object v2, v1, v3

    if-nez v0, :cond_1

    .line 1258
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endDocument()V

    goto :goto_0

    .line 1260
    :cond_1
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    :goto_0
    return-void
.end method

.method public endElement()V
    .locals 3

    .line 1058
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1059
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v2, 0x0

    .line 1060
    iput v2, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 1061
    iget v2, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v2, :cond_0

    .line 1063
    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    aget-object v2, v1, v0

    check-cast v2, Lgnu/xml/NamespaceBinding;

    iput-object v2, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    const/4 v2, 0x0

    .line 1064
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1065
    aput-object v2, v1, v0

    .line 1066
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endElement()V

    goto :goto_0

    .line 1068
    :cond_0
    iget v2, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-ne v2, v0, :cond_1

    const/4 v0, -0x1

    .line 1070
    iput v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    .line 1071
    iput v1, p0, Lgnu/xml/XMLFilter;->previous:I

    :cond_1
    :goto_0
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1526
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endElement()V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1503
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endElement()V

    return-void
.end method

.method public endEntity()V
    .locals 2

    .line 1286
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v1, v0, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_0

    .line 1287
    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0}, Lgnu/lists/XConsumer;->endEntity()V

    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0

    .line 1559
    iget-object p1, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    invoke-virtual {p1}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object p1

    iput-object p1, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    return-void
.end method

.method public error(CLjava/lang/String;)V
    .locals 2

    .line 1465
    iget-object v0, p0, Lgnu/xml/XMLFilter;->messages:Lgnu/text/SourceMessages;

    if-eqz v0, :cond_1

    .line 1467
    iget-object v1, p0, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    if-eqz v1, :cond_0

    .line 1468
    invoke-virtual {v0, p1, v1, p2}, Lgnu/text/SourceMessages;->error(CLgnu/text/SourceLocator;Ljava/lang/String;)V

    goto :goto_0

    .line 1470
    :cond_0
    invoke-virtual {v0, p1, p2}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    :goto_0
    return-void

    .line 1466
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 6

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 141
    :cond_1
    iget v1, p0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    and-int/2addr v1, v0

    .line 142
    iget-object v2, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v2, v2, v1

    :goto_1
    if-nez v2, :cond_3

    .line 147
    new-instance v2, Lgnu/xml/MappingInfo;

    invoke-direct {v2}, Lgnu/xml/MappingInfo;-><init>()V

    .line 148
    iget-object v3, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v3, v3, v1

    iput-object v3, v2, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 149
    iget-object v3, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aput-object v2, v3, v1

    .line 150
    iput v0, v2, Lgnu/xml/MappingInfo;->tagHash:I

    .line 151
    iput-object p1, v2, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 152
    iput-object p2, v2, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 153
    iput-object p2, v2, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    const-string v0, ""

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    .line 156
    :cond_2
    new-instance v0, Lgnu/xml/NamespaceBinding;

    invoke-direct {v0, p1, p2, p3}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 158
    iput-object v0, v2, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    .line 159
    iget-object p1, v2, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    return-object p1

    .line 162
    :cond_3
    iget v3, v2, Lgnu/xml/MappingInfo;->tagHash:I

    if-ne v3, v0, :cond_4

    iget-object v3, v2, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-ne v3, p1, :cond_4

    iget-object v3, v2, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v4

    iget-object v5, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    if-ne v4, v5, :cond_4

    invoke-virtual {v3}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-ne v3, p1, :cond_4

    iget-object v3, v2, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    if-ne v3, p2, :cond_4

    .line 169
    iget-object p1, v2, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    return-object p1

    .line 143
    :cond_4
    iget-object v2, v2, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    goto :goto_1
.end method

.method public getColumnNumber()I
    .locals 1

    .line 1593
    iget-object v0, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1579
    iget-object v0, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLineNumber()I
    .locals 2

    .line 1584
    iget-object v0, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 1586
    :cond_0
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    :goto_0
    return v1
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .line 1574
    iget-object v0, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1538
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write([CII)V

    return-void
.end method

.method public ignoring()Z
    .locals 1

    .line 1475
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final inElement()Z
    .locals 3

    .line 755
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    :goto_0
    if-lez v0, :cond_0

    .line 757
    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isStableSourceLocation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public linefeedFromParser()V
    .locals 2

    .line 764
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->inElement()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->write(I)V

    :cond_0
    return-void
.end method

.method public lookupNamespaceBinding(Ljava/lang/String;[CIIILgnu/xml/NamespaceBinding;)Lgnu/xml/MappingInfo;
    .locals 5

    if-nez p1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr p5, v0

    .line 192
    :goto_0
    iget v0, p0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    and-int/2addr v0, p5

    .line 193
    iget-object v1, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v1, v1, v0

    :goto_1
    if-nez v1, :cond_2

    .line 198
    new-instance v1, Lgnu/xml/MappingInfo;

    invoke-direct {v1}, Lgnu/xml/MappingInfo;-><init>()V

    .line 199
    iget-object v2, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v2, v2, v0

    iput-object v2, v1, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 200
    iget-object v2, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aput-object v1, v2, v0

    .line 201
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, p3, p4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 206
    iput p5, v1, Lgnu/xml/MappingInfo;->tagHash:I

    .line 207
    iput-object p1, v1, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 208
    iput-object p2, v1, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 209
    iput-object p2, v1, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    const-string p3, ""

    if-ne p2, p3, :cond_1

    const/4 p2, 0x0

    .line 212
    :cond_1
    new-instance p3, Lgnu/xml/NamespaceBinding;

    invoke-direct {p3, p1, p2, p6}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 214
    iput-object p3, v1, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    return-object v1

    .line 218
    :cond_2
    iget v2, v1, Lgnu/xml/MappingInfo;->tagHash:I

    if-ne v2, p5, :cond_3

    iget-object v2, v1, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-ne v2, p1, :cond_3

    iget-object v2, v1, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v3

    iget-object v4, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-ne v2, p1, :cond_3

    iget-object v2, v1, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    invoke-static {v2, p2, p3, p4}, Lgnu/xml/MappingInfo;->equals(Ljava/lang/String;[CII)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    .line 194
    :cond_3
    iget-object v1, v1, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    goto :goto_1
.end method

.method lookupTag(Lgnu/mapping/Symbol;)Lgnu/xml/MappingInfo;
    .locals 8

    .line 1316
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    .line 1317
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 1320
    :cond_0
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 1321
    invoke-static {v1, v0}, Lgnu/xml/MappingInfo;->hash(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1322
    iget v4, p0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    and-int/2addr v4, v3

    .line 1323
    iget-object v5, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v5, v5, v4

    move-object v6, v5

    :goto_0
    if-nez v6, :cond_1

    .line 1330
    new-instance v6, Lgnu/xml/MappingInfo;

    invoke-direct {v6}, Lgnu/xml/MappingInfo;-><init>()V

    .line 1331
    iput-object p1, v6, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    .line 1332
    iput-object v1, v6, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 1333
    iput-object v2, v6, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 1334
    iput-object v0, v6, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 1335
    iput v3, v6, Lgnu/xml/MappingInfo;->tagHash:I

    .line 1336
    iput-object v5, v6, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 1337
    iget-object p1, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aput-object v5, p1, v4

    return-object v6

    .line 1340
    :cond_1
    iget-object v7, v6, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    if-ne p1, v7, :cond_2

    return-object v6

    .line 1342
    :cond_2
    iget-object v7, v6, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    if-ne v0, v7, :cond_4

    iget-object v7, v6, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    if-nez v7, :cond_4

    iget-object v7, v6, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    if-eq v2, v7, :cond_3

    iget-object v7, v6, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    if-nez v7, :cond_4

    :cond_3
    iget-object v7, v6, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-ne v1, v7, :cond_4

    .line 1346
    iput-object v2, v6, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 1347
    iput-object p1, v6, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    return-object v6

    .line 1350
    :cond_4
    iget-object v6, v6, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    goto :goto_0
.end method

.method lookupTag([CII)Lgnu/xml/MappingInfo;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, p3, :cond_1

    add-int v5, p2, v2

    .line 1370
    aget-char v5, p1, v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_0

    if-gez v1, :cond_0

    move v1, v2

    move v3, v4

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    xor-int v0, v3, v4

    .line 1381
    iget v2, p0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    and-int/2addr v2, v0

    .line 1382
    iget-object v3, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v3, v3, v2

    move-object v4, v3

    :goto_2
    if-nez v4, :cond_3

    .line 1389
    new-instance v4, Lgnu/xml/MappingInfo;

    invoke-direct {v4}, Lgnu/xml/MappingInfo;-><init>()V

    .line 1390
    iput v0, v4, Lgnu/xml/MappingInfo;->tagHash:I

    if-ltz v1, :cond_2

    .line 1393
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    add-int/2addr p2, v1

    .line 1396
    new-instance v0, Ljava/lang/String;

    sub-int/2addr p3, v1

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 1400
    iput-object v0, v4, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 1401
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 1403
    :goto_3
    iput-object v3, v4, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 1404
    iget-object p1, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aput-object v3, p1, v2

    return-object v4

    .line 1407
    :cond_3
    iget v5, v4, Lgnu/xml/MappingInfo;->tagHash:I

    if-ne v0, v5, :cond_4

    invoke-virtual {v4, p1, p2, p3}, Lgnu/xml/MappingInfo;->match([CII)Z

    move-result v5

    if-eqz v5, :cond_4

    return-object v4

    .line 1410
    :cond_4
    iget-object v4, v4, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    goto :goto_2
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1546
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    .line 1547
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lgnu/xml/XMLFilter;->processingInstructionCommon(Ljava/lang/String;[CII)V

    return-void
.end method

.method processingInstructionCommon(Ljava/lang/String;[CII)V
    .locals 2

    .line 1198
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v0, :cond_0

    .line 1200
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1201
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v1, v0, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_1

    .line 1202
    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0, p1, p2, p3, p4}, Lgnu/lists/XConsumer;->writeProcessingInstruction(Ljava/lang/String;[CII)V

    goto :goto_0

    .line 1205
    :cond_0
    iget p1, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez p1, :cond_1

    .line 1206
    iget-object p1, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {p1, p2, p3, p4}, Lgnu/lists/Consumer;->write([CII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public processingInstructionFromParser([CIIII)V
    .locals 2

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 1215
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->inElement()Z

    move-result v0

    if-nez v0, :cond_0

    aget-char v0, p1, p2

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    aget-char v0, p1, v0

    const/16 v1, 0x6d

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x2

    aget-char v0, p1, v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_0

    return-void

    .line 1220
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 1221
    invoke-virtual {p0, v0, p1, p4, p5}, Lgnu/xml/XMLFilter;->processingInstructionCommon(Ljava/lang/String;[CII)V

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    .line 1481
    instance-of v0, p1, Lgnu/text/SourceLocator;

    if-eqz v0, :cond_0

    .line 1482
    check-cast p1, Lgnu/text/SourceLocator;

    iput-object p1, p0, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    :cond_0
    return-void
.end method

.method public setMessages(Lgnu/text/SourceMessages;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lgnu/xml/XMLFilter;->messages:Lgnu/text/SourceMessages;

    return-void
.end method

.method public setSourceLocator(Lgnu/text/LineBufferedReader;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    iput-object p0, p0, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    return-void
.end method

.method public setSourceLocator(Lgnu/text/SourceLocator;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    .line 940
    iput v0, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 941
    instance-of v1, p1, Lgnu/mapping/Symbol;

    const/16 v2, 0x65

    if-eqz v1, :cond_1

    .line 943
    move-object v1, p1

    check-cast v1, Lgnu/mapping/Symbol;

    .line 944
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    .line 945
    iput-object v3, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    .line 946
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lgnu/xml/XMLFilter;->attrPrefix:Ljava/lang/String;

    .line 947
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    const-string v4, "http://www.w3.org/2000/xmlns/"

    if-eq v1, v4, :cond_0

    const-string v4, ""

    if-ne v1, v4, :cond_1

    const-string v1, "xmlns"

    if-ne v3, v1, :cond_1

    :cond_0
    const-string v1, "arttribute name cannot be \'xmlns\' or in xmlns namespace"

    .line 950
    invoke-virtual {p0, v2, v1}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 952
    :cond_1
    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    aget-object v1, v1, v4

    if-nez v1, :cond_2

    const-string v1, "attribute not allowed at document level"

    .line 953
    invoke-virtual {p0, v2, v1}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 954
    :cond_2
    iget v1, p0, Lgnu/xml/XMLFilter;->attrCount:I

    if-gez v1, :cond_3

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-lez v1, :cond_3

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attribute \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' follows non-attribute content"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 956
    :cond_3
    invoke-direct {p0}, Lgnu/xml/XMLFilter;->startAttributeCommon()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 958
    :cond_4
    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v2, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget v3, p0, Lgnu/xml/XMLFilter;->attrCount:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v4

    aput-object p1, v1, v3

    if-nez v2, :cond_5

    .line 960
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    goto :goto_0

    .line 962
    :cond_5
    iget-object p1, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    invoke-virtual {p1, v0}, Lgnu/lists/TreeList;->startAttribute(I)V

    :goto_0
    return-void
.end method

.method public startDocument()V
    .locals 4

    .line 1226
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1227
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v0, :cond_0

    .line 1228
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    goto :goto_1

    .line 1232
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-nez v0, :cond_1

    .line 1233
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->startDocument()V

    goto :goto_0

    .line 1235
    :cond_1
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    .line 1236
    :goto_0
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    invoke-direct {p0, v0}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 1237
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget-object v2, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    aput-object v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    .line 1241
    aput-object v3, v0, v2

    add-int/lit8 v1, v1, 0x2

    .line 1242
    iput v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    :goto_1
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 4

    .line 849
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->startElementCommon()V

    .line 850
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v0, :cond_b

    .line 852
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 853
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v2, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v3, v2, -0x1

    aput-object p1, v0, v3

    .line 854
    iget v0, p0, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    if-nez v0, :cond_0

    .line 855
    sget-object p1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object p1, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto/16 :goto_5

    :cond_0
    if-eq v0, v1, :cond_9

    const/4 v0, 0x2

    if-ne v2, v0, :cond_1

    goto :goto_3

    :cond_1
    const/4 v1, 0x2

    .line 867
    :goto_0
    iget v2, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    .line 872
    :cond_2
    iget-object v2, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v2, v3

    if-eqz v3, :cond_8

    .line 874
    aget-object v1, v2, v1

    check-cast v1, Lgnu/xml/NamespaceBinding;

    :goto_1
    if-nez v1, :cond_4

    .line 881
    instance-of v0, p1, Lgnu/xml/XName;

    if-eqz v0, :cond_3

    check-cast p1, Lgnu/xml/XName;

    invoke-virtual {p1}, Lgnu/xml/XName;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object p1

    goto :goto_2

    :cond_3
    sget-object p1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    :goto_2
    iput-object p1, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_5

    .line 885
    :cond_4
    iget v2, p0, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    if-ne v2, v0, :cond_5

    .line 886
    iput-object v1, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_5

    .line 887
    :cond_5
    instance-of v0, p1, Lgnu/xml/XName;

    if-eqz v0, :cond_7

    .line 889
    check-cast p1, Lgnu/xml/XName;

    invoke-virtual {p1}, Lgnu/xml/XName;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object p1

    .line 890
    invoke-static {v1, p1}, Lgnu/xml/NamespaceBinding;->commonAncestor(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v0

    if-ne v0, v1, :cond_6

    .line 892
    iput-object p1, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_5

    .line 894
    :cond_6
    invoke-direct {p0, v1, p1}, Lgnu/xml/XMLFilter;->mergeHelper(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object p1

    iput-object p1, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_5

    .line 897
    :cond_7
    iput-object v1, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_5

    :cond_8
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 858
    :cond_9
    :goto_3
    instance-of v0, p1, Lgnu/xml/XName;

    if-eqz v0, :cond_a

    check-cast p1, Lgnu/xml/XName;

    invoke-virtual {p1}, Lgnu/xml/XName;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object p1

    goto :goto_4

    :cond_a
    sget-object p1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    :goto_4
    iput-object p1, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    :cond_b
    :goto_5
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .line 1490
    invoke-static {p1, p2}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->startElement(Ljava/lang/Object;)V

    .line 1491
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 1494
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p3

    invoke-virtual {p0, p3}, Lgnu/xml/XMLFilter;->startAttribute(Ljava/lang/Object;)V

    .line 1495
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lgnu/xml/XMLFilter;->write(Ljava/lang/String;)V

    .line 1496
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 3

    .line 1508
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 1509
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->startElement(Ljava/lang/Object;)V

    .line 1510
    invoke-interface {p2}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1513
    invoke-interface {p2, v0}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v1

    .line 1514
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 1515
    invoke-interface {p2, v0}, Lorg/xml/sax/AttributeList;->getType(I)Ljava/lang/String;

    .line 1516
    invoke-interface {p2, v0}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v2

    .line 1517
    invoke-virtual {p0, v1}, Lgnu/xml/XMLFilter;->startAttribute(Ljava/lang/Object;)V

    .line 1518
    invoke-virtual {p0, v2}, Lgnu/xml/XMLFilter;->write(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected startElementCommon()V
    .locals 5

    .line 817
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 818
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 820
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    invoke-direct {p0, v0}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 821
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v3, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget-object v4, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    aput-object v4, v0, v3

    .line 822
    iget-object v0, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->startElement(I)V

    .line 823
    iget-object v0, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iput-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .line 824
    iput v2, p0, Lgnu/xml/XMLFilter;->attrCount:I

    goto :goto_0

    .line 828
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->previous:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_1

    const/16 v0, 0x20

    .line 829
    invoke-virtual {p0, v0}, Lgnu/xml/XMLFilter;->write(I)V

    .line 830
    :cond_1
    iput v2, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 831
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_2

    .line 832
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    iput v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    .line 834
    :cond_2
    :goto_0
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1552
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    invoke-virtual {p0, p1, p2, v0}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object p1

    iput-object p1, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    return-void
.end method

.method public textFromParser([CII)V
    .locals 2

    .line 771
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->inElement()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    add-int v1, p2, v0

    .line 777
    aget-char v1, p1, v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0x65

    const-string p2, "text at document level"

    .line 779
    invoke-virtual {p0, p1, p2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-lez p3, :cond_4

    .line 786
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 789
    :cond_3
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    :cond_4
    :goto_1
    return-void
.end method

.method public write(I)V
    .locals 1

    .line 611
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->write(I)V

    :cond_0
    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 1

    if-nez p3, :cond_0

    .line 748
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    goto :goto_0

    .line 749
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write(Ljava/lang/CharSequence;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2

    .line 738
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lgnu/xml/XMLFilter;->write(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public write([CII)V
    .locals 1

    if-nez p3, :cond_0

    .line 731
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    goto :goto_0

    .line 732
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1

    .line 617
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    :cond_0
    return-void
.end method

.method public writeCDATA([CII)V
    .locals 2

    .line 806
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v1, v0, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_0

    .line 809
    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/XConsumer;->writeCDATA([CII)V

    goto :goto_0

    .line 811
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write([CII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public writeComment([CII)V
    .locals 0

    .line 1148
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->checkValidComment([CII)V

    .line 1149
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->commentFromParser([CII)V

    return-void
.end method

.method public writeDocumentUri(Ljava/lang/Object;)V
    .locals 2

    .line 647
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v1, v0, Lgnu/lists/TreeList;

    if-eqz v1, :cond_0

    .line 648
    check-cast v0, Lgnu/lists/TreeList;

    invoke-virtual {v0, p1}, Lgnu/lists/TreeList;->writeDocumentUri(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeDouble(D)V
    .locals 1

    .line 629
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2}, Lgnu/lists/Consumer;->writeDouble(D)V

    :cond_0
    return-void
.end method

.method public writeFloat(F)V
    .locals 1

    .line 623
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeFloat(F)V

    :cond_0
    return-void
.end method

.method public writeInt(I)V
    .locals 1

    .line 635
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeInt(I)V

    :cond_0
    return-void
.end method

.method protected writeJoiner()V
    .locals 1

    const/4 v0, 0x0

    .line 795
    iput v0, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 796
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-nez v0, :cond_0

    .line 797
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    check-cast v0, Lgnu/lists/TreeList;

    invoke-virtual {v0}, Lgnu/lists/TreeList;->writeJoiner()V

    :cond_0
    return-void
.end method

.method public writeLong(J)V
    .locals 1

    .line 641
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2}, Lgnu/lists/Consumer;->writeLong(J)V

    :cond_0
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 2

    .line 674
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v0, :cond_0

    return-void

    .line 676
    :cond_0
    instance-of v0, p1, Lgnu/lists/SeqPosition;

    if-eqz v0, :cond_1

    .line 678
    check-cast p1, Lgnu/lists/SeqPosition;

    .line 679
    iget-object v0, p1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p1}, Lgnu/lists/SeqPosition;->getPos()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lgnu/xml/XMLFilter;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_1

    .line 681
    :cond_1
    instance-of v0, p1, Lgnu/lists/TreeList;

    if-eqz v0, :cond_2

    .line 682
    check-cast p1, Lgnu/lists/TreeList;

    invoke-virtual {p1, p0}, Lgnu/lists/TreeList;->consume(Lgnu/lists/Consumer;)V

    goto :goto_1

    .line 683
    :cond_2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lgnu/lists/CharSeq;

    if-nez v0, :cond_3

    .line 685
    check-cast p1, Ljava/util/List;

    .line 686
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 688
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 689
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/xml/XMLFilter;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 691
    :cond_3
    instance-of v0, p1, Lgnu/expr/Keyword;

    if-eqz v0, :cond_4

    .line 693
    check-cast p1, Lgnu/expr/Keyword;

    .line 694
    invoke-virtual {p1}, Lgnu/expr/Keyword;->asSymbol()Lgnu/mapping/Symbol;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->startAttribute(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 695
    iput p1, p0, Lgnu/xml/XMLFilter;->previous:I

    goto :goto_1

    .line 699
    :cond_4
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 700
    instance-of v0, p1, Lgnu/lists/UnescapedData;

    if-eqz v0, :cond_5

    .line 702
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 703
    iput p1, p0, Lgnu/xml/XMLFilter;->previous:I

    goto :goto_1

    .line 707
    :cond_5
    iget v0, p0, Lgnu/xml/XMLFilter;->previous:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    const/16 v0, 0x20

    .line 708
    invoke-virtual {p0, v0}, Lgnu/xml/XMLFilter;->write(I)V

    .line 709
    :cond_6
    invoke-static {p1, p0}, Lgnu/xml/TextUtils;->textValue(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 710
    iput v1, p0, Lgnu/xml/XMLFilter;->previous:I

    :cond_7
    :goto_1
    return-void
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 2

    .line 658
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v0, :cond_0

    return-void

    .line 660
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    const/4 v1, 0x2

    if-lez v0, :cond_2

    iget v0, p0, Lgnu/xml/XMLFilter;->previous:I

    if-ne v0, v1, :cond_2

    .line 662
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_1

    const/16 v0, 0x20

    .line 663
    invoke-virtual {p0, v0}, Lgnu/xml/XMLFilter;->write(I)V

    :cond_1
    const/4 v0, 0x0

    .line 664
    iput v0, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 666
    :cond_2
    invoke-virtual {p1, p2, p0}, Lgnu/lists/AbstractSequence;->consumeNext(ILgnu/lists/Consumer;)Z

    .line 667
    iget p1, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez p1, :cond_3

    iget p1, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez p1, :cond_3

    .line 668
    iput v1, p0, Lgnu/xml/XMLFilter;->previous:I

    :cond_3
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;[CII)V
    .locals 4

    const/4 v0, 0x1

    .line 1170
    invoke-static {p1, v0}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    add-int v0, p3, p4

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x65

    if-lt v0, p3, :cond_2

    .line 1173
    aget-char v2, p2, v0

    :cond_1
    const/16 v3, 0x3e

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-lt v0, p3, :cond_0

    .line 1176
    aget-char v2, p2, v0

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_1

    const-string v2, "\'?>\' is not allowed in a processing-instruction"

    .line 1179
    invoke-virtual {p0, v1, v2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "xml"

    .line 1185
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "processing-instruction target may not be \'xml\' (ignoring case)"

    .line 1186
    invoke-virtual {p0, v1, v0}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1188
    :cond_3
    invoke-static {p1}, Lgnu/xml/XName;->isNCName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processing-instruction target \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is not a valid Name"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1192
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/xml/XMLFilter;->processingInstructionCommon(Ljava/lang/String;[CII)V

    return-void
.end method
