.class public Lgnu/kawa/xml/KElement;
.super Lgnu/kawa/xml/KNode;
.source "KElement.java"

# interfaces
.implements Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lgnu/xml/NodeTree;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lgnu/kawa/xml/KNode;-><init>(Lgnu/xml/NodeTree;I)V

    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    .line 43
    :cond_0
    iget-object v1, p0, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    .line 44
    iget v2, p0, Lgnu/kawa/xml/KElement;->ipos:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lgnu/xml/NodeTree;->getAttribute(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    .line 48
    :cond_1
    invoke-static {v1, p1}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p2, :cond_1

    move-object p2, v0

    .line 139
    :cond_1
    iget-object v1, p0, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    .line 140
    iget v2, p0, Lgnu/kawa/xml/KElement;->ipos:I

    invoke-virtual {v1, v2, p1, p2}, Lgnu/xml/NodeTree;->getAttribute(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    .line 144
    :cond_2
    invoke-static {v1, p1}, Lgnu/kawa/xml/KElement;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeNode(Ljava/lang/String;)Lgnu/kawa/xml/KAttr;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    .line 107
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    .line 108
    iget v1, p0, Lgnu/kawa/xml/KElement;->ipos:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lgnu/xml/NodeTree;->getAttribute(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    return-object v2

    .line 112
    :cond_1
    new-instance v1, Lgnu/kawa/xml/KAttr;

    invoke-direct {v1, v0, p1}, Lgnu/kawa/xml/KAttr;-><init>(Lgnu/xml/NodeTree;I)V

    return-object v1
.end method

.method public bridge synthetic getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/KElement;->getAttributeNode(Ljava/lang/String;)Lgnu/kawa/xml/KAttr;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KAttr;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p2, :cond_1

    move-object p2, v0

    .line 182
    :cond_1
    iget-object v0, p0, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    .line 183
    iget v1, p0, Lgnu/kawa/xml/KElement;->ipos:I

    invoke-virtual {v0, v1, p1, p2}, Lgnu/xml/NodeTree;->getAttribute(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 187
    :cond_2
    new-instance p2, Lgnu/kawa/xml/KAttr;

    invoke-direct {p2, v0, p1}, Lgnu/kawa/xml/KAttr;-><init>(Lgnu/xml/NodeTree;I)V

    return-object p2
.end method

.method public bridge synthetic getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/xml/KElement;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KAttr;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 0

    .line 204
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getElementsByTagNameNS not implemented yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNodeType()S
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 2

    .line 26
    iget-object v0, p0, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/kawa/xml/KElement;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->getNextTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 3

    .line 211
    iget-object v0, p0, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KElement;->ipos:I

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lgnu/xml/NodeTree;->getAttribute(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p2, :cond_1

    move-object p2, v0

    .line 221
    :cond_1
    iget-object v0, p0, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KElement;->ipos:I

    invoke-virtual {v0, v1, p1, p2}, Lgnu/xml/NodeTree;->getAttribute(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasAttributes()Z
    .locals 2

    .line 36
    iget-object v0, p0, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KElement;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/xml/NodeTree;->posHasAttributes(I)Z

    move-result v0

    return v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 89
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    const-string v1, "removeAttribute not supported"

    invoke-direct {p1, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 162
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x7

    const-string v0, "removeAttributeNS not supported"

    invoke-direct {p1, p2, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 128
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    const-string v1, "removeAttributeNode not supported"

    invoke-direct {p1, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 56
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x7

    const-string v0, "setAttribute not supported"

    invoke-direct {p1, p2, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 152
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x7

    const-string p3, "setAttributeNS not supported"

    invoke-direct {p1, p2, p3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 120
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    const-string v1, "setAttributeNode not supported"

    invoke-direct {p1, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 195
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    const-string v1, "setAttributeNodeNS not supported"

    invoke-direct {p1, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public setIdAttribute(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 64
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x7

    const-string v0, "setIdAttribute not supported"

    invoke-direct {p1, p2, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 73
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x7

    const-string p3, "setIdAttributeNS not supported"

    invoke-direct {p1, p2, p3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 81
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x7

    const-string v0, "setIdAttributeNode not supported"

    invoke-direct {p1, p2, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method
