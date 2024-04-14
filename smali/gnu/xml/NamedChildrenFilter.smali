.class public Lgnu/xml/NamedChildrenFilter;
.super Lgnu/lists/FilterConsumer;
.source "NamedChildrenFilter.java"


# instance fields
.field level:I

.field localName:Ljava/lang/String;

.field matchLevel:I

.field namespaceURI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lgnu/lists/Consumer;)V
    .locals 0

    .line 28
    invoke-direct {p0, p3}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    .line 29
    iput-object p1, p0, Lgnu/xml/NamedChildrenFilter;->namespaceURI:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lgnu/xml/NamedChildrenFilter;->localName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lgnu/xml/NamedChildrenFilter;->skipping:Z

    return-void
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;Lgnu/lists/Consumer;)Lgnu/xml/NamedChildrenFilter;
    .locals 1

    .line 22
    new-instance v0, Lgnu/xml/NamedChildrenFilter;

    invoke-direct {v0, p0, p1, p2}, Lgnu/xml/NamedChildrenFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/lists/Consumer;)V

    return-object v0
.end method


# virtual methods
.method public endDocument()V
    .locals 1

    .line 42
    iget v0, p0, Lgnu/xml/NamedChildrenFilter;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/xml/NamedChildrenFilter;->level:I

    .line 43
    invoke-super {p0}, Lgnu/lists/FilterConsumer;->endDocument()V

    return-void
.end method

.method public endElement()V
    .locals 3

    .line 80
    iget v0, p0, Lgnu/xml/NamedChildrenFilter;->level:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lgnu/xml/NamedChildrenFilter;->level:I

    .line 81
    invoke-super {p0}, Lgnu/lists/FilterConsumer;->endElement()V

    .line 82
    iget-boolean v0, p0, Lgnu/xml/NamedChildrenFilter;->skipping:Z

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/xml/NamedChildrenFilter;->matchLevel:I

    iget v2, p0, Lgnu/xml/NamedChildrenFilter;->level:I

    if-ne v0, v2, :cond_0

    .line 83
    iput-boolean v1, p0, Lgnu/xml/NamedChildrenFilter;->skipping:Z

    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 1

    .line 36
    iget v0, p0, Lgnu/xml/NamedChildrenFilter;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/xml/NamedChildrenFilter;->level:I

    .line 37
    invoke-super {p0}, Lgnu/lists/FilterConsumer;->startDocument()V

    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 4

    .line 48
    iget-boolean v0, p0, Lgnu/xml/NamedChildrenFilter;->skipping:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lgnu/xml/NamedChildrenFilter;->level:I

    if-ne v0, v1, :cond_3

    .line 55
    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_0

    .line 57
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    .line 58
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 66
    :goto_0
    iget-object v3, p0, Lgnu/xml/NamedChildrenFilter;->localName:Ljava/lang/String;

    if-eq v3, v0, :cond_1

    if-nez v3, :cond_3

    :cond_1
    iget-object v0, p0, Lgnu/xml/NamedChildrenFilter;->namespaceURI:Ljava/lang/String;

    if-eq v0, v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lgnu/xml/NamedChildrenFilter;->skipping:Z

    .line 70
    iget v0, p0, Lgnu/xml/NamedChildrenFilter;->level:I

    iput v0, p0, Lgnu/xml/NamedChildrenFilter;->matchLevel:I

    .line 74
    :cond_3
    invoke-super {p0, p1}, Lgnu/lists/FilterConsumer;->startElement(Ljava/lang/Object;)V

    .line 75
    iget p1, p0, Lgnu/xml/NamedChildrenFilter;->level:I

    add-int/2addr p1, v1

    iput p1, p0, Lgnu/xml/NamedChildrenFilter;->level:I

    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 2

    .line 88
    instance-of v0, p1, Lgnu/lists/SeqPosition;

    if-eqz v0, :cond_0

    .line 90
    move-object v0, p1

    check-cast v0, Lgnu/lists/SeqPosition;

    .line 91
    iget-object v1, v0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    instance-of v1, v1, Lgnu/lists/TreeList;

    if-eqz v1, :cond_0

    .line 93
    iget-object p1, v0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    check-cast p1, Lgnu/lists/TreeList;

    iget v0, v0, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {p1, v0, p0}, Lgnu/lists/TreeList;->consumeNext(ILgnu/lists/Consumer;)Z

    return-void

    .line 97
    :cond_0
    instance-of v0, p1, Lgnu/lists/Consumable;

    if-eqz v0, :cond_1

    .line 98
    check-cast p1, Lgnu/lists/Consumable;

    invoke-interface {p1, p0}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-super {p0, p1}, Lgnu/lists/FilterConsumer;->writeObject(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
