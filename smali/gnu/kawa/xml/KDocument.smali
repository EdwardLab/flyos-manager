.class public Lgnu/kawa/xml/KDocument;
.super Lgnu/kawa/xml/KNode;
.source "KDocument.java"

# interfaces
.implements Lorg/w3c/dom/Document;


# direct methods
.method public constructor <init>(Lgnu/xml/NodeTree;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lgnu/kawa/xml/KNode;-><init>(Lgnu/xml/NodeTree;I)V

    return-void
.end method


# virtual methods
.method public adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 219
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 v0, 0x9

    const-string v1, "adoptNode not implemented"

    invoke-direct {p1, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1

    .line 117
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "createAttribute not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 0

    .line 142
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "createAttributeNS not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .locals 1

    .line 104
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "createCDATASection not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .locals 1

    .line 98
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "createComment not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "createDocumentFragment not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1

    .line 80
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "createElement not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 0

    .line 135
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "createElementNS not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .locals 1

    .line 123
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "createEntityReference implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 0

    .line 111
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "createProcessingInstruction not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 1

    .line 92
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "createTextNode not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDoctype()Lorg/w3c/dom/DocumentType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentElement()Lgnu/kawa/xml/KElement;
    .locals 3

    .line 45
    iget-object v0, p0, Lgnu/kawa/xml/KDocument;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KDocument;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/xml/NodeTree;->posFirstChild(I)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_0
    iget-object v1, p0, Lgnu/kawa/xml/KDocument;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v1, v0}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v1

    const/16 v2, 0x24

    if-eq v1, v2, :cond_1

    .line 54
    iget-object v1, p0, Lgnu/kawa/xml/KDocument;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    invoke-static {v1, v0}, Lgnu/kawa/xml/KDocument;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v0

    check-cast v0, Lgnu/kawa/xml/KElement;

    return-object v0

    .line 52
    :cond_1
    iget-object v1, p0, Lgnu/kawa/xml/KDocument;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v1, v0}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getDocumentElement()Lorg/w3c/dom/Element;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lgnu/kawa/xml/KDocument;->getDocumentElement()Lgnu/kawa/xml/KElement;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentURI()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .locals 3

    .line 231
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "getDomConfig not implemented"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 0

    .line 148
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getElementsByTagNameNS not implemented yet"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getImplementation not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "#document"

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStrictErrorChecking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTextContent(Ljava/lang/StringBuffer;)V
    .locals 0

    return-void
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getXmlStandalone()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.1"

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 0

    .line 129
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "importNode not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public normalizeDocument()V
    .locals 0

    return-void
.end method

.method public renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 212
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 p2, 0x9

    const-string p3, "renameNode not implemented"

    invoke-direct {p1, p2, p3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setStrictErrorChecking(Z)V
    .locals 0

    return-void
.end method

.method public setXmlStandalone(Z)V
    .locals 0

    return-void
.end method

.method public setXmlVersion(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
