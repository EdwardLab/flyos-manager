.class public Lgnu/kawa/xml/KAttr;
.super Lgnu/kawa/xml/KNode;
.source "KAttr.java"

# interfaces
.implements Lorg/w3c/dom/Attr;


# direct methods
.method public constructor <init>(Lgnu/xml/NodeTree;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lgnu/kawa/xml/KNode;-><init>(Lgnu/xml/NodeTree;I)V

    return-void
.end method

.method public static getObjectValue(Lgnu/xml/NodeTree;I)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, 0xa

    .line 36
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getPosNext(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .line 22
    iget-object v0, p0, Lgnu/kawa/xml/KAttr;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/kawa/xml/KAttr;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->getNextTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getObjectValue()Ljava/lang/Object;
    .locals 2

    .line 42
    iget-object v0, p0, Lgnu/kawa/xml/KAttr;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KAttr;->ipos:I

    invoke-static {v0, v1}, Lgnu/kawa/xml/KAttr;->getObjectValue(Lgnu/xml/NodeTree;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .locals 1

    .line 60
    invoke-super {p0}, Lgnu/kawa/xml/KNode;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpecified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lgnu/kawa/xml/KAttr;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isId()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 49
    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    const-string v1, "setValue not supported"

    invoke-direct {p1, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method
